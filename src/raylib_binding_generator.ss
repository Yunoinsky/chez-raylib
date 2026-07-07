;; Raylib binding generator — sexpr-based, Chez Scheme, λ-0.3
(import (chezscheme))

;; ===== accessors =====
(define (attr node key)
  (let ([p (assq (string->symbol key) node)])
    (and p (cadr p))))

(define (attr-list node key)
  (let ([p (assq (string->symbol key) node)])
    (and p (cdr p))))

;; ===== name munging =====
(define (symbol-append . parts)
  (string->symbol (apply string-append (map symbol->string parts))))

(define (kebab-ize name-str)
  ;; "Camera2D" -> camera-2d, "SetTargetFPS" -> set-target-fps
  (define (finish-acronym acro out)
    (if (null? acro) out
        (cons (string-append "-" (list->string (reverse acro))) out)))
  (let loop ([i 0] [out '()] [acro '()] [prev-alpha? #f] [prev-digit? #f])
    (if (>= i (string-length name-str))
        (string->symbol (apply string-append
                               (reverse (if (null? acro) out
                                            (cons (list->string (reverse acro)) out)))))
        (let ([ch (string-ref name-str i)])
          (cond
           [(char-upper-case? ch)
            (if (or (>= (+ i 1) (string-length name-str))
                    (not (char-upper-case? (string-ref name-str (+ i 1)))))
                ;; Last char of acronym (or single upper): flush acro + this char as token
                (let* ([acro-str (if (null? acro) ""
                                     (list->string (reverse acro)))]
                       [token (string-append acro-str (string (char-downcase ch)))])
                  (loop (+ i 1)
                        (cons token (if prev-alpha? (cons "-" out) out))
                        '() #t #f))
                ;; More uppercase follows: accumulate
                (loop (+ i 1) out (cons (char-downcase ch) acro) prev-alpha? prev-digit?))]
           [(char-numeric? ch)
            (let* ([acro-str (if (null? acro) "" (list->string (reverse acro)))]
                   [out2 (if (null? acro) out
                             (cons acro-str (if prev-alpha? (cons "-" out) out)))]
                   [c (string ch)])
              (loop (+ i 1) (cons c (if (or prev-alpha? (not (null? acro)))
                                        (cons "-" out2) out2))
                    '() #f #t))]
           [else
            (let* ([acro-str (if (null? acro) "" (list->string (reverse acro)))]
                   [out2 (if (null? acro) out
                             (cons acro-str (if prev-alpha? (cons "-" out) out)))])
              (loop (+ i 1) (cons (string ch) out2) '() #t #f))])))))

(define (ftype-name-of name-str)
  ;; "Camera2D" -> Camera-2D (hyphen before digit, none after)
  (let loop ([i 0] [out '()] [prev-alpha? #f] [prev-digit? #f])
    (if (>= i (string-length name-str))
        (string->symbol (apply string-append (reverse out)))
        (let ([ch (string-ref name-str i)])
          (cond
           [(char-upper-case? ch)
            (let ([c (string ch)])
              (if (or prev-alpha? prev-digit? (and (not prev-alpha?) (= i 0)))
                  (loop (+ i 1) (cons c (if prev-alpha? (cons "-" out) out)) #t #f)
                  (loop (+ i 1) (cons c out) #t #f)))]
           [(char-numeric? ch)
            (let ([c (string ch)])
              (loop (+ i 1) (cons c (if prev-alpha? (cons "-" out) out)) #f #t))]
           [else
            (loop (+ i 1) (cons (string ch) out) #t #f)])))))

;; ===== type conversion =====
(define (ctype->type str)
  (case str
    [("int") 'int] [("float") 'float] [("double") 'double] [("char") 'char]
    [("unsigned char") 'unsigned-8] [("unsigned short") 'unsigned-short]
    [("unsigned int") 'unsigned] [("bool") 'unsigned-8] [("long") 'long]
    [("void") 'void] [else #f]))

(define array-type-alist
  '(("float[2]" . (array 2 float)) ("float[3]" . (array 3 float))
    ("float[4]" . (array 4 float)) ("float[16]" . (array 16 float))
    ("int[4]" . (array 4 int)) ("unsigned int[5]" . (array 5 unsigned))
    ("Matrix[2]" . (array 2 Matrix)) ("char[32]" . (array 32 char))))

(define opaque-strings
  '("char **" "void *" "const char *" "Rectangle **"
    "rAudioBuffer *" "rAudioProcessor *"
    "va_list" "TraceLogCallback" "LoadFileDataCallback" "SaveFileDataCallback"
    "LoadFileTextCallback" "SaveFileTextCallback" "AudioCallback"))

;; Alias map: type-name -> canonical-name (strings), built from aliases section
(define alias-map (make-parameter '()))

(define (resolve-alias str)
  (let loop ([s str] [visited '()])
    (if (let search ([vs visited]) (and (pair? vs) (or (string=? s (car vs)) (search (cdr vs)))))
        s
        (let ([p (let search ([alist (alias-map)])
                   (and (pair? alist)
                        (or (and (string=? s (caar alist)) (car alist))
                            (search (cdr alist)))))])
          (if p (loop (cdr p) (cons s visited)) s)))))

;; ===== type converters =====

;; Field type: for struct field definitions (no & wrapping)
(define (field-type str)
  (define (pointer-type? s)
    (and (> (string-length s) 2)
         (string=? (substring s (- (string-length s) 2) (string-length s)) " *")))
  (define (strip-ptr s) (substring s 0 (- (string-length s) 2)))
  (define (arr-type s)
    (let loop ([alist array-type-alist])
      (and (pair? alist)
           (or (and (string=? s (caar alist)) (cdar alist))
               (loop (cdr alist))))))
  ;; Filter C preprocessor garbage from rlparser
  (define (cpp-line? s)
    (and (> (string-length s) 0) (char=? (string-ref s 0) #\#)))
  (or (and (cpp-line? str) 'void*)
      (ctype->type str)
      (and (member str opaque-strings) 'void*)
      (arr-type str)
      (and (pointer-type? str)
           (let ([base (ctype->type (strip-ptr str))])
             (and base (if (eq? base 'void) 'void* (list '* base)))))
      (and (pointer-type? str)
           (let ([r (resolve-alias (strip-ptr str))])
             (and (not (string=? r (strip-ptr str)))
                  (let ([base (or (ctype->type r) (ftype-name-of r))])
                    (if (symbol? base) (list '* base) (list '* (ftype-name-of r)))))))
      (and (pointer-type? str)
           (list '* (ftype-name-of (strip-ptr str))))
      (let ([r (resolve-alias str)])
        (and (not (string=? r str))
             (or (ctype->type r) (ftype-name-of r))))
      (ftype-name-of str)))

;; Param type: for function parameters and return types
;; Bare struct → ftype name (wrapped with & in fn-form)
(define (param-type str)
  (define (pointer-type? s)
    (and (> (string-length s) 2)
         (string=? (substring s (- (string-length s) 2) (string-length s)) " *")))
  (define (strip-ptr s) (substring s 0 (- (string-length s) 2)))
  (define (strip-const s)
    (and (> (string-length s) 6) (string=? (substring s 0 6) "const ")
         (param-type (substring s 6 (string-length s)))))
  (define (arr-type s)
    (let loop ([alist array-type-alist])
      (and (pair? alist)
           (or (and (string=? s (caar alist)) (cdar alist)) (loop (cdr alist))))))
  (define (cpp-line? s)
    (and (> (string-length s) 0) (char=? (string-ref s 0) #\#)))
  (or (and (cpp-line? str) 'void*)
      (strip-const str)
      (arr-type str)
      (and (member str opaque-strings) 'void*)
      (ctype->type str)
      ;; char * / const char * -> string (before pointer-to-ctype to avoid (* char))
      (and (or (string=? str "char *") (string=? str "const char *")) 'string)
      ;; Pointer to ctype
      (and (pointer-type? str)
           (let ([base (ctype->type (strip-ptr str))])
             (and base (list '* base))))
      ;; Pointer to alias
      (and (pointer-type? str)
           (let ([r (resolve-alias (strip-ptr str))])
             (and (not (string=? r (strip-ptr str)))
                  (param-type (string-append r " *")))))
      ;; Pointer to struct
      (and (pointer-type? str)
           (list '* (ftype-name-of (strip-ptr str))))
      ;; Alias for bare type
      (let ([r (resolve-alias str)])
        (and (not (string=? r str)) (param-type r)))
      ;; Bare struct
      (ftype-name-of str)))

;; Known scalar ftype names (vs struct names)
(define scalar-ftype-names
  '(int float double char unsigned-8 unsigned-short unsigned long void void*))

;; Maps raylib C function name -> shim function name
;; The shim takes the output buffer as the FIRST parameter.
;; ===== struct forms =====
(define (struct-form alist)
  (let* ([name (ftype-name-of (attr alist "name"))]
         [fields (or (attr-list alist "fields") '())]
         [pairs (map (lambda (f) (cons (ftype-name-of (attr f "name")) (attr f "type")))
                     fields)]
         ;; Dedup: rlparser emits #if/#else variants, keep first of each name
         [unique-pairs
          (let loop ([ps pairs] [seen '()])
            (if (null? ps) '()
                (let ([n (caar ps)])
                  (if (memq n seen)
                      (loop (cdr ps) seen)
                      (cons (car ps) (loop (cdr ps) (cons n seen)))))))]
         [sx (cons 'struct (map (lambda (p) (list (car p) (field-type (cdr p)))) unique-pairs))])
    `(define-ftype ,name ,sx)))

(define (make-X-form alist)
  (let* ([name (ftype-name-of (attr alist "name"))]
         [kname (kebab-ize (attr alist "name"))]
         [fields (or (attr-list alist "fields") '())]
         ;; Dedup fields
         [unique-fields
          (let loop ([fs fields] [seen '()])
            (if (null? fs) '()
                (let ([fn (ftype-name-of (attr (car fs) "name"))])
                  (if (memq fn seen)
                      (loop (cdr fs) seen)
                      (cons (car fs) (loop (cdr fs) (cons fn seen)))))))]
         [fnames (map (lambda (f) (ftype-name-of (attr f "name"))) unique-fields)]
         [field-ts (map (lambda (f) (field-type (attr f "type"))) unique-fields)]
         [scalar-set! (map (lambda (fn ft)
                             (if (and (symbol? ft) (memq ft scalar-ftype-names))
                                 `(ftype-set! ,name (,fn) s ,fn)
                                 `(void)))
                           fnames field-ts)]
         [scalar-set!-struct (map (lambda (fn ft)
                                    (if (and (symbol? ft) (memq ft scalar-ftype-names))
                                        `(ftype-set! ,name (,fn) struct ,fn)
                                        `(void)))
                                  fnames field-ts)])
    (if (eq? (kebab-ize (attr alist "name")) 'color)
        '(void)
    `(define ,(symbol-append 'make- (kebab-ize (attr alist "name")))
       (case-lambda
        [,fnames
         (let ([s (make-ftype-pointer ,name (foreign-alloc (ftype-sizeof ,name)))])
           ,@scalar-set! s)]
        [(struct ,@fnames)
         ,@scalar-set!-struct struct])))))

(define (copy-X-form alist)
  (let* ([name (ftype-name-of (attr alist "name"))]
         [fields (or (attr-list alist "fields") '())]
         ;; Dedup fields
         [unique-fields
          (let loop ([fs fields] [seen '()])
            (if (null? fs) '()
                (let ([fn (ftype-name-of (attr (car fs) "name"))])
                  (if (memq fn seen)
                      (loop (cdr fs) seen)
                      (cons (car fs) (loop (cdr fs) (cons fn seen)))))))]
         [fnames (map (lambda (f) (ftype-name-of (attr f "name"))) unique-fields)]
         [field-ts (map (lambda (f) (field-type (attr f "type"))) unique-fields)]
         [scalar-copy! (map (lambda (fn ft)
                              (if (and (symbol? ft) (memq ft scalar-ftype-names))
                                  `(ftype-set! ,name (,fn) dst (ftype-ref ,name (,fn) src))
                                  `(void)))
                            fnames field-ts)])
    (if (eq? (kebab-ize (attr alist "name")) 'color)
        '(void)
    (if (eq? (kebab-ize (attr alist "name")) 'color)
        '(void)
    `(define ,(symbol-append 'copy- (kebab-ize (attr alist "name")))
       (lambda (src)
         (let ([dst (make-ftype-pointer ,name (foreign-alloc (ftype-sizeof ,name)))])
           ,@scalar-copy! dst)))))))

(define (setter-form alist)
  (let ([name (ftype-name-of (attr alist "name"))])
    `(define-syntax ,(symbol-append (kebab-ize (attr alist "name")) '-set!)
       (syntax-rules () [(_ s (f ...) v) (ftype-set! ,name (f ...) s v)]
                      [(_ s f v) (ftype-set! ,name (f) s v)]))))

(define (getter-form alist)
  (let ([name (ftype-name-of (attr alist "name"))])
    `(define-syntax ,(symbol-append (kebab-ize (attr alist "name")) '-get)
       (syntax-rules () [(_ s (f ...)) (ftype-ref ,name (f ...) s)]
                      [(_ s f) (ftype-ref ,name (f) s)]))))

(define (refref-form alist)
  (let ([name (ftype-name-of (attr alist "name"))])
    `(define-syntax ,(symbol-append (kebab-ize (attr alist "name")) '-ref&)
       (syntax-rules () [(_ s (f ...)) (ftype-&ref ,name (f ...) s)]
                      [(_ s f) (ftype-&ref ,name (f) s)]))))

(define (struct-defines alist)
  (filter (lambda (x) (not (equal? x '(void))))
   `(,(struct-form alist) ,(make-X-form alist) ,(copy-X-form alist)
     ,(setter-form alist) ,(getter-form alist) ,(refref-form alist))))

;; ===== callback form =====
(define (callback-form alist)
  (let* ([name (symbol-append 'Make (ftype-name-of (attr alist "name")))]
         [ret-str (attr alist "return-type")]
         [ret-type (or (ctype->type ret-str) (param-type ret-str))]
         [params (or (attr-list alist "params") '())]
         [p-types (map (lambda (p) (param-type (attr p "type"))) params)])
    `(define (,name p)
       (let ([code (foreign-callable p ,p-types ,ret-type)])
         (lock-object code) (foreign-callable-entry-point code)))))

;; ===== enum form =====
(define (enum-form alist)
  (map (lambda (v) `(define ,(string->symbol (attr v "name")) ,(attr v "value")))
       (or (attr-list alist "values") '())))

;; ===== function form =====
;; Only includes fields of scalar types (int, float, etc.) — struct/array
;; fields are NOT included because ftype-set! can't copy them by value.
(define scalar-ffi-types '(int float double char unsigned-8 unsigned-short
                           unsigned long void void* string boolean ...))
(define (struct-symbol? t) (and (symbol? t) (not (memq t scalar-ffi-types))))
(define (wrap-ffi t) (if (struct-symbol? t) (list '& t) t))
;; Return types for structs use pointer (*) since Chez doesn't accept (& Type) as result type
(define (wrap-ffi-ret t) (if (struct-symbol? t) (list '& t) t))


(define (fn-form alist)
  (let* ([name-str (attr alist "name")]
         [params (or (attr-list alist "params") '())])
    (define (variadic? ps)
      (and (pair? ps) (or (string=? (attr (car ps) "type") "...") (variadic? (cdr ps)))))
    (if (variadic? params)
        'skip
        (let* ([name (kebab-ize name-str)]
               [ret-str (attr alist "return-type")]
               [ret-bool? (string=? ret-str "bool")]
               [param-names (map (lambda (p) (kebab-ize (attr p "name"))) params)]
               [param-ftypes (map (lambda (p) (param-type (attr p "type"))) params)]
               [ret-ftype (if ret-bool? 'unsigned-8
                              (or (ctype->type ret-str) (param-type ret-str)))]
               [ret-struct? (struct-symbol? ret-ftype)])
          ;; For struct returns, use (& Type) as return type.
          ;; Chez converts this to an implicit first parameter (the output buffer).
          `(define ,name
             (let ([f #f])
               (lambda ,param-names
                 (unless f
                   (set! f (foreign-procedure ,name-str
                                              ,(map wrap-ffi param-ftypes)
                                              ,(wrap-ffi-ret ret-ftype))))
                 ,(cond
                   [ret-bool?
                    `(not (= (f ,@param-names) 0))]
                   [ret-struct?
                    ;; Allocate output buffer, pass it first, return it
                    `(let ([dst (make-ftype-pointer ,ret-ftype
                                (foreign-alloc (ftype-sizeof ,ret-ftype)))])
                       (f dst ,@param-names)
                       dst)]
                   [else
                    `(f ,@param-names)]))))))))

;; ===== color form =====
(define (color-form def)
  (let* ([name (string->symbol (attr def "name"))]
         [raw (attr def "value")]
         [n (string-length raw)]
         [nums-text (substring raw 17 (- n 2))])
    (define (parse s len)
      (let search ([i 0])
        (cond [(or (>= i len) (char=? #\, (string-ref s i)))
               (cons (string->number (substring s 0 i))
                     (if (>= i len) '()
                         (parse (substring s (+ i 2) len) (- len i 2))))]
              [else (search (+ i 1))])))
    `(define ,name (make-color ,@(parse nums-text (string-length nums-text))))))

;; ===== section processing =====
(define (process-section section-key api-root)
  (let ([sec (assq section-key api-root)])
    (if (not sec) (values '() '())
        (let loop ([items (cdr sec)] [defs '()] [exports '()])
          (if (null? items) (values defs exports)
              (let ([item (car items)] [rest (cdr items)])
                (case section-key
                  [(structs)
                   (let ([forms (struct-defines item)])
                     (loop rest (append defs forms)
                           (append (map cadr
                                      (filter (lambda (f)
                                                (and (pair? f) (>= (length f) 3)))
                                              forms))
                                   exports)))]
                  [(callbacks)
                   (let ([f (callback-form item)])
                     (loop rest (append defs (list f)) (cons (caadr f) exports)))]
                  [(enums)
                   (let ([forms (enum-form item)])
                     (loop rest (append defs forms)
                           (append (map cadr forms) exports)))]
                  [(functions)
                   (let ([f (fn-form item)])
                     (if (eq? f 'skip)
                         (loop rest defs exports)
                         (loop rest (append defs (list f)) (cons (cadr f) exports))))]
                  [(defines)
                   (if (string=? (or (attr item "type") "") "COLOR")
                       (let ([f (color-form item)])
                         (loop rest (append defs (list f)) (cons (cadr f) exports)))
                       (loop rest defs exports))]
                  [else (loop rest defs exports)])))))))

(define (process-lib sections api-root init-sexpr)
  (define (init-export x)
    (cond [(and (pair? x) (pair? (cdr x)) (symbol? (cadr x))) (cadr x)]
          [(and (pair? x) (pair? (cdr x)) (pair? (cadr x)) (symbol? (caadr x))) (caadr x)]
          [else 'skip]))
  (let loop ([sections sections] [defs '()] [exports (map init-export init-sexpr)])
    (if (null? sections)
        (values defs (filter (lambda (x) (not (eq? x 'skip))) exports))
        (let-values ([(more-defs more-exports) (process-section (car sections) api-root)])
          (loop (cdr sections) (append defs more-defs) (append exports more-exports))))))

;; ===== load-shared-object code =====
(define raylib-load-code
  '(    (load-shared-object
     (let loop ([libs (library-directories)])
       (cond [(null? libs) (error 'raylib "Raylib not found")]
             [(file-exists? (string-append (caar libs) "/raylib/raylib.dll"))
              (string-append (caar libs) "/raylib/raylib.dll")]
             [else (loop (cdr libs))])))))

(define rlgl-load-code
  '((define (load-rlgl)
      (load-shared-object
       (let loop ([libs (library-directories)])
         (cond [(null? libs) (error 'rlgl "rlgl not found")]
               [(file-exists? (string-append (caar libs) "/raylib/rlgl.dll"))
                (string-append (caar libs) "/raylib/rlgl.dll")]
               [else (loop (cdr libs))]))))))

;; ===== init-sexprs =====
(define raylib-init-sexpr
  '((define rad->deg (lambda (rad) (/ (* rad 180) PI)))
    (define deg->rad (lambda (deg) (/ (* deg PI) 180)))
    (define PI 3.14159265358979323846)
    (define make-color
      (case-lambda
       [(r g b a)
        (let ([struct (make-ftype-pointer Color (foreign-alloc (ftype-sizeof Color)))])
          (ftype-set! Color (r) struct r)
          (ftype-set! Color (g) struct g)
          (ftype-set! Color (b) struct b)
          (ftype-set! Color (a) struct a)
          struct)]
       [(c r g b a)
        (ftype-set! Color (r) c r)
        (ftype-set! Color (g) c g)
        (ftype-set! Color (b) c b)
        (ftype-set! Color (a) c a)
        c]))
    (define-syntax drawing-begin
      (syntax-rules () [(_ e0 e1 ...) (begin (begin-drawing) e0 e1 ... (end-drawing))]))
    (define-syntax mode-2d-begin
      (syntax-rules () [(_ camera e0 e1 ...) (begin (begin-mode-2d camera) e0 e1 ... (end-mode-2d))]))
    (define-syntax mode-3d-begin
      (syntax-rules () [(_ camera e0 e1 ...) (begin (begin-mode-3d camera) e0 e1 ... (end-mode-3d))]))
    (define-syntax blend-mode-begin
      (syntax-rules () [(_ bm e0 e1 ...) (begin (begin-blend-mode bm) e0 e1 ... (end-blend-mode))]))
    (define-syntax scissor-mode-begin
      (syntax-rules () [(_ rect-l e0 e1 ...) (begin (apply begin-scissor-mode rect-l) e0 e1 ... (end-scissor-mode))]))
    (define-syntax float
      (syntax-rules () [(_ f) (if (fixnum? f) (fixnum->flonum f) f)]))
    (define-syntax int
      (syntax-rules () [(_ f) (if (flonum? f) (flonum->fixnum (round f)) f)]))
    (define-syntax bool
      (syntax-rules () [(_ f) (not (= f 0))]))
    (define-syntax arr*
      (syntax-rules () [(_ arr) (vector-ref arr 0)]))
    (define-syntax arr&
      (syntax-rules () [(_ num ftype-name arr-0)
                        (let ([arr (make-vector num)]
                              [size (ftype-sizeof ftype-name)])
                          (do ([i 0 (fx+ i 1)]
                               [addr (ftype-pointer-address arr-0) (+ addr size)])
                              ((= i num) arr)
                            (vector-set! arr i (make-ftype-pointer ftype-name addr))))]))
    (define-syntax arr-ind
      (syntax-rules (*)
        [(_ arr (* ftype-name) ind)
         (make-ftype-pointer ftype-name (ftype-ref void* () (arr-ind arr void* ind)))]
        [(_ arr ftype-name ind)
         (make-ftype-pointer ftype-name (+ (ftype-pointer-address arr) (* ind (ftype-sizeof ftype-name))))]))
    (define-syntax make-array
      (syntax-rules ()
        [(_ num ftype-name)
         (let ([size (ftype-sizeof ftype-name)]
               [arr (make-vector num)])
           (do ([i 0 (fx+ i 1)]
                [addr (foreign-alloc (* num size)) (+ addr size)])
               ((= i num) arr)
             (vector-set! arr i (make-ftype-pointer ftype-name addr))))]
        [(_ data-list ftype-name maker-fn)
         (let* ([size (ftype-sizeof ftype-name)]
                [num (length data-list)]
                [arr (make-vector num)])
           (do ([i 0 (fx+ i 1)]
                [addr (foreign-alloc (* num size)) (+ addr size)]
                [dl data-list (cdr dl)])
               ((= i num) arr)
             (vector-set! arr i (apply maker-fn (cons (make-ftype-pointer ftype-name addr) (car dl))))))]))))

;; ===== regenerate =====
(define (regenerate input-file output-file lib-name sections init-sexpr load-code)
  (unless (file-exists? input-file)
    (error 'regenerate "missing input: ~a" input-file))
  (let* ([api-root (with-input-from-file input-file read)]
         ;; Build alias map from aliases section
         [aliases-sec (assq 'aliases api-root)])
    (when aliases-sec
      (let ([alist '()])
        (for-each (lambda (entry)
                    (let ([type-str (attr entry "type")]
                          [name-str (attr entry "name")])
                      ;; Strip leading * from alias names
                      (let ([clean-name
                             (if (and (> (string-length name-str) 0)
                                      (char=? (string-ref name-str 0) #\*))
                                 (substring name-str 1 (string-length name-str))
                                 name-str)])
                        (set! alist (cons (cons clean-name type-str) alist)))))
                  (cdr aliases-sec))
        (alias-map alist)))
    ;; Generate
    (let-values ([(defs exports) (process-lib sections api-root init-sexpr)])
      (when (file-exists? output-file) (delete-file output-file))
      (call-with-output-file output-file
        (lambda (fp)
          (pretty-print
           `(library ,lib-name (export ,@exports) (import (chezscheme))
              (begin ,@init-sexpr ,@defs ,@load-code))
           fp))))
    (printf "regenerated: ~a\n" output-file)))

;; ===== entry point =====
(regenerate "./src/raylib_api.sexpr" "./src/raylib.sls"
            '(raylib raylib (0 3))
            '(defines structs aliases enums callbacks functions)
            raylib-init-sexpr raylib-load-code)

(regenerate "./src/rlgl_api.sexpr" "./src/rlgl.sls"
            '(raylib rlgl (0 3))
            '(defines structs aliases enums callbacks functions)
            '() rlgl-load-code)

(printf "done\n")
