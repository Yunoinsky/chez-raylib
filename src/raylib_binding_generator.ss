;; Raylib binding generator

(define input-file-path "./src/raylib_api.xml")
(define output-file-path "./src/raylib.sls")

(define-syntax push!
  (syntax-rules ()
    [(_ rl item) (set! rl (cons item rl))]))

(import (xml))

(define (xml-get-attr xml-node key)
  (cdr (assoc key
              (xml-get-attrs xml-node))))

(define apis
  (xml-load (open-input-file input-file-path)
            #f))

(assert (string=? (xml-get-name apis) "raylibAPI"))

(define type-list
  '("Defines"
    "Structs"
    "Aliases"
    "Enums"
    "Callbacks"
    "Functions"))

(for-each (lambda (name child)
            (let ([name-s (string->symbol
                           (string-append
                            "api-"
                            (string-downcase name)))])
              (let ([children-list (xml-get-children child)])
                (eval `(define ,name-s ',children-list)))
              (assert (string=? (xml-get-name child)
                                name))))
          type-list
          (xml-get-children apis))

(define aliases '())

(define (string->var-name string is-struct)
  (or
   (let ([alias (assoc string aliases)])
     (and alias
          (string->var-name (cdr alias) is-struct)))
   (let ([len (string-length string)])
     (let loop ([start-ind 0]
                [end-ind 1]
                [result-string ""]
                [last-upcase #t])
       (if (< end-ind len)
           
           (let* ([ch (string-ref string end-ind)]
                  [this-upcase (or (char-upper-case? ch)
                                   (char-numeric? ch))])
             (if (and this-upcase
                      (not last-upcase))
                 (loop end-ind (+ end-ind 1)
                       (string-append
                        result-string
                        (string-downcase
                         (substring string
                                    start-ind
                                    (if (char=?
                                         #\-
                                         (string-ref
                                          string
                                          (- end-ind 1)))
                                        (- end-ind 1)
                                        end-ind)))
                        "-")
                       this-upcase)
                 (loop start-ind (+ end-ind 1)
                       result-string this-upcase)))
           (string->symbol
            ((if is-struct
                string-titlecase
                (lambda (x) x))
             (string-append result-string
                            (string-downcase
                             (substring string
                                        start-ind
                                        end-ind))))))))))

(for-each
 (lambda (alias-xml)
   (assert (string=? (xml-get-name alias-xml)
                     "Alias"))
   (push! aliases
    (cons (xml-get-attr alias-xml "type")
          (xml-get-attr alias-xml "name"))))
 api-aliases)

(define (ctype-str->type type-str)
  (case type-str
    ["int" 'int]
    ["float" 'float]
    ["double" 'double]
    ["char" 'char]
    ["unsigned char" 'unsigned-8]
    ["unsigned short" 'unsigned-short]
    ["unsigned int" 'unsigned]
    ["bool" 'boolean]
    ["long" 'long]
    ["void" 'void]
    [else #f]))

  
(define (raytype-str->type type-str)
  (case type-str
    ["void *" 'void*]
    ["unsigned char *" '(* unsigned-8)]
    ["char *" '(* char)]
    ["char[32]" '(array 32 char)]
    ["const char *" 'string]
    ["char **" '(* (* char))]
    ["int *" '(* int)]
    ["float[2]" '(array 2 float)]
    ["float[4]" '(array 4 float)]    
    ["float *" '(* float)]
    ["Matrix[2]" '(array 2 Matrix)]
    [("rAudioBuffer *" "rAudioProcessor *" "va_list"
      "TraceLogCallback" "LoadFileDataCallback"
      "SaveFileDataCallback" "LoadFileTextCallback"
      "SaveFileTextCallback" "AudioCallback")
     'void*]
    [else
     (let* ([len (string-length type-str)])
       (if (char=? (string-ref type-str (- len 1))
                   #\*)
           (list '*
                 (let ([sub-str
                        (if
                         (char=? (string-ref type-str
                                             (- len 2))
                                 #\space)
                         (substring type-str 0
                                    (- len 2))
                         (substring type-str 0
                                    (- len 1)))])
                   (or (ctype-str->type sub-str)
                       (raytype-str->type sub-str))))
           (string->var-name type-str #t)))]))


(define (param-str->type str)
  (let in-loop ([str str]
                [pass-value #t])
    (let ([len (string-length str)])
      (or (and (> len 5)
               (string=? (substring str 0 6)
                         "const ")
               (in-loop (substring str 6 len) pass-value))
          (case str
            ["char *" 'string]
            [("rAudioBuffer *" "rAudioProcessor *"
              "va_list" "TraceLogCallback"
              "LoadFileDataCallback" "SaveFileDataCallback"
              "LoadFileTextCallback" "SaveFileTextCallback"
              "AudioCallback" "void *") 'void*]
            [else #f])
          (ctype-str->type str)
          (case (string-ref str (- len 1))
            [#\space (in-loop (substring str
                                         0
                                         (- len 1))
                              pass-value)]
            [#\* (list '* (in-loop
                           (substring str
                                      0
                                      (- len 1))
                           #f))]
            [#\. #f]
            [else (if pass-value
                      (list '& (string->var-name str #t))
                      (string->var-name str #t))])))))

(define (struct-generator struct-xml)
  (let* ([name-str (xml-get-attr struct-xml "name")]
         [name (string->var-name name-str #t)]
         [scalar-field #t]
         [fields (map
                  (lambda (field)
                    (let ([field-name-str
                           (xml-get-attr field "name")]
                          [field-type-str
                           (xml-get-attr field "type")])
                      (list
                       (string->var-name field-name-str #f)
                       (or (ctype-str->type
                            field-type-str)
                           (and (set! scalar-field #f)
                                (raytype-str->type
                                 field-type-str))))))
                  (xml-get-children struct-xml))]
         [struct-sexpr (cons 'struct fields)])
    (cons
     (cons
      `(define-ftype ,name ,struct-sexpr)
      (let ([maker-name (string->var-name
                         (string-append
                          "Make"
                          name-str) #f)]
            [field-name-list (map car fields)])
        (if scalar-field
            `(define ,maker-name
               (case-lambda
                 [,field-name-list
                  (let ([struct (make-ftype-pointer
                                 ,name
                                 (foreign-alloc
                                  (ftype-sizeof ,name)))])
                    ,@(map (lambda (f)
                             `(ftype-set! ,name (,f) struct ,f))
                           field-name-list)
                    struct)]
                 [,(append field-name-list '(struct))
                  ,@(map (lambda (f)
                           `(ftype-set! ,name (,f) struct ,f))
                         field-name-list)
                  struct]))
            `(define ,maker-name
               (lambda () (make-ftype-pointer
                           ,name
                           (foreign-alloc
                            (ftype-sizeof ,name))))))))

     (let ([set-name (string->var-name (string-append
                                        name-str "-set!") #f)]
           [get-name (string->var-name (string-append
                                        name-str "-get") #f)]
           [ref-name (string->var-name (string-append
                                        name-str "-ref&") #f)])
       (list
        `(define-syntax ,set-name
           (syntax-rules ()
             [(_ s f v) (ftype-set! ,name (f) s v)]))
        `(define-syntax ,get-name
           (syntax-rules ()
             [(_ s (f ...)) (ftype-ref ,name (f ...) s)]
             [(_ s f) (ftype-ref ,name (f) s)]))
        `(define-syntax ,ref-name
           (syntax-rules ()
             [(_ s f) (ftype-&ref ,name (f) s)])))))))

(define (make-trace-log-callback p)
  (let ([code (foreign-callable __collect_safe
                                p
                                (int string void*)
                                void)])
    (lock-object code)
    (foreign-callable-entry-point code)))

(define (cb-generator cb-xml)
  (let* ([name-str (xml-get-attr cb-xml "name")]
         [maker-name (string->var-name
                      (string-append "Make"
                                     name-str) #f)]
         [ret-type (let ([ret-type-str
                          (xml-get-attr cb-xml "retType")])
                     (or (ctype-str->type ret-type-str)
                         (raytype-str->type ret-type-str)))]
         [params (map
                  (lambda (param)
                    (let ([param-type-str
                           (xml-get-attr param "type")])
                      (or (ctype-str->type
                           param-type-str)
                          (raytype-str->type
                           param-type-str))))
                  (xml-get-children cb-xml))])
    `(define (,maker-name p)
       (let ([code (foreign-callable __collect_safe
                                     p
                                     ,params
                                     ,ret-type)])
         (lock-object code)
         (foreign-callable-entry-point code)))))

(define (enum-generator enum-item-xml)
  (let ([name-str (xml-get-attr enum-item-xml
                                "name")]
        [int-str (xml-get-attr enum-item-xml
                               "integer")])
    `(define
       ,(string->symbol name-str)
       ,(string->number int-str))))

(define fn-black-list
  '(gen-image-font-atlas
    text-join text-split
    check-collision-point-poly
    gen-image-perlin-noise
    image-draw-circle-lines
    image-draw-circle-lines-v
    load-utf8
    unload-utf8
    get-codepoint-next
    get-codepoint-previous))

(define (fn-generator func-xml)
  (let* ([name-str (xml-get-attr func-xml "name")]
         [func-name (string->var-name name-str #f)]
         [ret-type (param-str->type
                    (xml-get-attr func-xml "retType"))]
         [skip-func #f]
         [params (fold-right
                  (lambda (param-xml l)
                    (let ([param-name
                           (string->var-name
                            (xml-get-attr param-xml
                                          "name") #f)]
                          [param-type
                           (param-str->type
                            (xml-get-attr param-xml
                                          "type"))])
                      (unless param-type
                        (set! skip-func #t)) 
                      (cons (cons param-name (car l))
                            (cons param-type (cdr l)))))
                  '(() . ())
                  (xml-get-children func-xml))]
         [v-ret (and (pair? ret-type)
                     (eq? (car ret-type) '&))])
    (if (or skip-func
            (memq func-name fn-black-list))
        #f
        (if v-ret
            `(define ,func-name
               (let ([f (foreign-procedure
                         ,name-str
                         ,(cdr params) ,ret-type)])
                 (case-lambda
                   [,(car params)
                    (let ([ret (make-ftype-pointer
                                ,(cadr ret-type)
                                (foreign-alloc 
                                 (ftype-sizeof
                                  ,(cadr ret-type))))])
                      (f ret ,@(car params))
                      ret)]
                   [(,@(car params) struct)
                    (f struct ,@(car params))
                    struct])))
            `(define ,func-name
               (let ([f (foreign-procedure
                         ,name-str
                         ,(cdr params) ,ret-type)])
                 (lambda ,(car params)
                   (f ,@(car params)))))))))

(define (color-generator color-xml)
  (let* ([name (string->symbol
               (xml-get-attr color-xml "name"))]
         [raw-value (xml-get-attr color-xml "value")]
         [len (string-length raw-value)]
         [value (substring
                 raw-value
                 (string-length "CLITERAL(Color){ ")
                 (- len 2))])
    `(define ,name
       (make-color
        ,@(let loop ([res-str value])
            (let ([res-len (string-length res-str)])
              (do ([i 0 (+ i 1)])
                  ((or (= i res-len)
                       (char=?
                        (string-ref res-str i)
                        #\,))
                   (cons (string->number
                          (substring res-str
                                     0
                                     i))
                         (if (= i res-len)
                             '()
                             (loop (substring res-str
                                              (+ i 2)
                                              res-len))))))
              ))))))
              
(let ([write-fp (if #t #;(output)
                    (begin
                      (when (file-exists? output-file-path)
                        (delete-file output-file-path))
                      (open-output-file output-file-path))
                    (current-output-port))]
      [export-list '(PI deg->rad rad->deg
                        drawing-begin mode-3d-begin
                        float int make-camera3d)]
      [sexpr-list '((define (rad->deg rad)
                      (/ (* rad 180) PI))
                    (define (deg->rad deg)
                      (/ (* deg PI) 180))
                    (define PI 3.14159265358979323846)
                    (define-syntax drawing-begin
                      (syntax-rules ()
                        [(_ e0 e1 ...)
                         (begin
                           (begin-drawing)
                           e0 e1 ...
                           (end-drawing))]))
                    (define-syntax mode-3d-begin
                      (syntax-rules ()
                        [(_ camera e0 e1 ...)
                         (begin
                           (begin-mode-3d camera)
                           e0 e1 ...
                           (end-mode-3d))]))
                    (define-syntax float
                      (syntax-rules ()
                        [(_ f) (if (fixnum? f)
                                   (fixnum->flonum f)                                   
                                   f)]))
                    (define-syntax int
                      (syntax-rules ()
                        [(_ f) (if (flonum? f)
                                   (flonum->fixnum (round f))
                                   f)]))
                    (define (make-camera3d position
                                           target
                                           up
                                           fovy projection)
                      (let ([camera (make-camera-3d)])
                        (make-vector-3
                         (car position)
                         (cadr position)
                         (caddr position)
                         (camera-3d-ref& camera position))
                        (make-vector-3
                         (car target)
                         (cadr target)
                         (caddr target)
                         (camera-3d-ref& camera target))
                        (make-vector-3
                         (car up)
                         (cadr up)
                         (caddr up)
                         (camera-3d-ref& camera up))
                        (camera-3d-set! camera fovy fovy)
                        (camera-3d-set! camera
                                        projection
                                        projection)
                        camera))
                    
                     )])
  (for-each (lambda (enum-xml)
              (for-each
               (lambda (enum-item)
                 (let ([enum-expr
                        (enum-generator enum-item)])
                   (push! sexpr-list enum-expr)
                   (push! export-list (cadr enum-expr))))
               (xml-get-children enum-xml)))
            api-enums)

  (for-each (lambda (struct-xml)
              (let* ([sexpr (struct-generator struct-xml)]
                     [def-sexpr (caar sexpr)]
                     [def-make-sexpr (cdar sexpr)]
                     [set-sexpr (cadr sexpr)]
                     [get-sexpr (caddr sexpr)]
                     [ref-sexpr (cadddr sexpr)])
                (push! sexpr-list def-sexpr)
                (push! sexpr-list set-sexpr)                
                (push! sexpr-list get-sexpr)
                (push! sexpr-list ref-sexpr)
                (push! export-list (cadr def-sexpr))
                (push! export-list (cadr set-sexpr))
                (push! export-list (cadr get-sexpr))
                (push! export-list (cadr ref-sexpr)) 
                (unless (null? def-make-sexpr)
                  (push! sexpr-list def-make-sexpr)
                  (push! export-list
                         (cadr def-make-sexpr)))))
            api-structs)
  
  (for-each (lambda (cb-xml)
              (let ([cb-expr (cb-generator cb-xml)])
                (push! sexpr-list cb-expr)
                (push! export-list (caadr cb-expr))))
            api-callbacks)
  
  (for-each (lambda (fn-xml)
              (let ([sexpr (fn-generator fn-xml)])
                (when sexpr
                  (push! sexpr-list sexpr)
                  (push! export-list (cadr sexpr)))))
            api-functions)

  (for-each (lambda (def-xml)
              (when (string=?
                     "COLOR"
                     (xml-get-attr def-xml "type"))
                (let ([color-sexpr (color-generator def-xml)])
                  (push! sexpr-list color-sexpr)
                  (push! export-list (cadr color-sexpr)))))
          api-defines)

  (pretty-print
   '(let load-loop ([libs (library-directories)])
      (when (null? libs)
        (error #f
               "Raylib not found"))
      (let ([libpath (string-append
                      (caar libs)
                      "/raylib/raylib.dll")])
        (if (file-exists? libpath)
            (load-shared-object libpath)
            (load-loop (cdr libs)))))
   write-fp)
  (pretty-print
   `(library (raylib (0 1))
      (export ,@export-list)
      (import (chezscheme))
      ,@(reverse sexpr-list))
   write-fp)
  (close-port write-fp)
  (compile-file output-file-path
                (let lib-loop ([libs (library-directories)])
                  (when (null? libs)
                    (error #f
                           "Raylib not found"))
                  (let ([libpath (caar libs)])
                    (if (file-exists? (string-append libpath "/raylib/"))
                        (string-append libpath "/raylib.so")
                        (lib-loop (cdr libs)))))))
