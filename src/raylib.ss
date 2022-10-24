;; Load Raylib dynamic library

(define-syntax push!
  (syntax-rules ()
    [(_ rl item) (set! rl (cons item rl))]))

(let load-loop ([libs (library-directories)])
  (when (null? libs)
    (error #f
           "Raylib not found"))
  (let ([libpath (string-append (caar libs)
                                "/raylib/raylib.dll")])
    (if (file-exists? libpath)
        (load-shared-object libpath)
        (load-loop (cdr libs)))))

(import (xml))

(define (xml-get-attr xml-node key)
  (cdr (assoc key
              (xml-get-attrs xml-node))))

(define apis
  (xml-load (open-input-file "./src/raylib_api.xml")
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

(define (string->var-name string)
  (or
   (let ([alias (assoc string aliases)])
     (and alias
          (string->var-name (cdr alias))))
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
                                    end-ind)) "-")
                       this-upcase)
                 (loop start-ind (+ end-ind 1)
                       result-string this-upcase)))
           (string->symbol
            (string-append result-string
                           (string-downcase
                            (substring string
                                       start-ind
                                       end-ind)))))))))

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
    ["unsigned char" 'unsigned-8]
    ["unsigned short" 'unsigned-short]
    ["unsigned int" 'unsigned]
    ["bool" 'boolean]
    ["void" 'void]
    [else #f]))

(define (raytype-str->type type-str)
  (case type-str
    ["void *" 'void*]
    ["unsigned char *" '(* unsigned-8)]
    [("char *" "char[32]") '(* char)]
    ["const char *" 'string]
    ["char **" '(* (* char))]
    ["int *" '(* int)]
    [("float *" "float[2]" "float[4]") '(* float)]
    ["Matrix[2]" '(* matrix)]
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
           (string->var-name type-str)))]))

(define (struct-generator struct-xml)
  (let* ([name-str (xml-get-attr struct-xml "name")]
         [name (string->var-name name-str)]
         [scalar-field #t]
         [fields (map
                  (lambda (field)
                    (let ([field-name-str
                           (xml-get-attr field "name")]
                          [field-type-str
                           (xml-get-attr field "type")])
                      (list
                       (string->var-name field-name-str)
                       (or (ctype-str->type
                            field-type-str)
                           (and (set! scalar-field #f)
                                (raytype-str->type
                                 field-type-str))))))
                  (xml-get-children struct-xml))]
         [struct-sexpr (cons 'struct fields)])
    (cons
     (list 'define-ftype name struct-sexpr)
     (if scalar-field
         (cons 'define
               (list
                (cons (string->var-name
                       (string-append
                        "Make"
                        name-str))
                      (map car fields))
                `(let ([struct
                         (make-ftype-pointer
                          ,name
                          (foreign-alloc
                           (ftype-sizeof ,name)))])
                   ,@(map (lambda (field)
                        	 (let ([f (car field)])
                             `(ftype-set! ,name
                                          (,f)
                                          struct ,f)))
                         fields)
                    struct)))
           '()))))


(define (make-trace-log-callback p)
  (let ([code (foreign-callable __collect_safe
                                p
                                (int string void*))])
    (lock-object code)
    (foreign-callable-entry-point code)))


(define (cb-generator cb-xml)
  (let* ([name-str (xml-get-attr cb-xml "name")]
         [maker-name (string->var-name
                      (string-append "Make"
                                     name-str))]
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
    (list maker-name params ret-type)))

(map cb-generator
     api-callbacks)



(let ([write-fp (if output
                    (open-output-file "./src/raylib_api.sls")
                    (current-output-port))])
  (for-each (lambda (s)
              (let* ([sexpr (struct-generator s)]
                     [def-sexpr (car sexpr)]
                     [def-make-sexpr (cdr sexpr)])
                
                (pretty-print def-sexpr write-fp)
                (newline write-fp)
                (unless (null? def-make-sexpr)
                  
                  (pretty-print def-make-sexpr write-fp)
                  (newline write-fp))))
            api-structs)
  (close-port write-fp))
