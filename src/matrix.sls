(library (chez-raylib matrix)
  (export
   make-matrix matrix-square? matrix-square?? make-element matrix-set! matrix-ref matrix-rows matrix-cols matrix-shape matrix? matrix?? matrix-fill! matrix-slice matrix-row matrix-col matrix-copy matrix-paste matrix-paste! matrix-print list->matrix
   vector-cat vector-rotate list-rotate vector-mul vector-dot vector-cross vector-reform vector-axis vector-norm vector->matrix vector-outer matrix->vector vector-ops vector-add vector-scale
   matrix-reform matrix-scale matrix-add matrix-ops matrix-mmul matrix-mul matrix-dot matrix-trans pi deg->rad rad->deg
   make-vecq vecq-mul vecq-conj vecq-norm2 vecq-inv vecq-exp vecq-log vecq-rot
   mat-shape mat?? make-mat mat-set! mat-get mat->vector mat-transpose)
  (import (scheme))
(begin
  (define make-matrix
    (case-lambda
      [(rows cols)
       (make-matrix rows cols 0)]
      [(rows)
       (make-matrix rows rows)]
      [(rows cols val)
       (do ([m (make-vector rows)]
            [i 0 (+ i 1)])
           ((= i rows) m)
         (vector-set! m i (make-vector cols val)))]))
  
  (define matrix-square?
    (lambda (m)
      (and (matrix? m)
           (= (matrix-rows m) (matrix-cols m)))))
  
  (define matrix-square??
    (lambda (m)
      (and (matrix?? m)
           (= (matrix-rows m) (matrix-cols m)))))
  
  (define make-element
    (lambda (m)
      (if (integer? m)
          (do ([mat (make-vector m)]
               [i 0 (+ i 1)])
              ((= i m) mat)
            (vector-set! mat i
                         (let ([v (make-vector m)])
                           (vector-set! v i 1) v)))
          (if (matrix-square? m)
              (make-element (matrix-cols m))
              (raise
               (condition
                (make-error)
                (make-message-condition "Not a square matrix")))))))
  
  (define matrix-set!
    (lambda (m row col val)
      (vector-set! (vector-ref m row) col val)
      m))
  
  (define matrix-ref
    (lambda (m row col)
      (vector-ref (vector-ref m row) col)))
  
  (define matrix-rows
    (lambda (m)
      (vector-length m)))
  
  (define matrix-cols
    (lambda (m)
      (vector-length (vector-ref m 0))))
  
  (define matrix-shape
    (lambda (m)
      (cons (matrix-rows m) (matrix-cols m))))
  
  (define matrix?
    (lambda (m)
      (and (vector? m) (vector? (vector-ref m 0)))))
  
  (define matrix??
    (lambda (m)
      (and (vector? m)
           (let ([cols (matrix-cols m)]
                 [rows (matrix-rows m)])
             (let sub-matrix?? ([i 1])
               (if (= i rows)
                   #t
                   (let ([row (vector-ref m i)])
                     (and (vector? row)
                          (= cols (vector-length row))
                          (sub-matrix?? (+ i 1))))))))))
  
  (define matrix-fill!
    (case-lambda
      [(m val)
       (vector-for-each
        (lambda (v) (vector-fill! v val))
        m)]
      [(m top left height width val)
       (let ([bottom (+ top height)]
             [right (+ left width)])
         (do ([i top (+ i 1)])
             ((= i bottom) m)
           (do ([j left (+ j 1)])
               ((= j right))
             (matrix-set! m i j val))))]))
  
  (define matrix-slice
    (lambda (m top left height width)
      (let ([mat (make-matrix height width)])
        (do ([i 0 (+ i 1)]
             [i2 top (+ i2 1)])
            ((= i height) mat)
          (do ([j 0 (+ j 1)]
               [j2 left (+ j2 1)])
              ((= j width))
            (matrix-set! mat i j
                         (matrix-ref m i2 j2)))))))
  
  (define matrix-row
    (lambda (m i)
      (vector-ref m i)))
  
  (define matrix-col
    (lambda (m j)
      (vector-map
       (lambda (row-v)
         (vector-ref row-v j)) m)))
  
  (define matrix-copy
    (lambda (m)
      (vector-map
       vector-copy
       m)))
  
  (define matrix-paste!
    (case-lambda
      [(dst src top left)
       (matrix-paste! dst src
                      top left 0 0 (matrix-rows src) (matrix-cols src))]
      [(dst src tdst ldst tsrc lsrc height width)
       (let ([height (min height (- (matrix-rows src) tsrc) (- (matrix-rows dst) tdst))]
             [width (min width (- (matrix-cols src) lsrc) (- (matrix-cols dst) ldst))])
         (let ([bsrc (+ tsrc height)]
               [rsrc (+ lsrc width)])
           (do ([i tsrc (+ i 1)]
                [i2 tdst (+ i2 1)])
               ((= i bsrc) dst)
             (do ([j lsrc (+ j 1)]
                  [j2 ldst (+ j2 1)])
                 ((= j rsrc))
               (matrix-set! dst i2 j2 (matrix-ref src i j))))))]))
  
  (define matrix-paste
    (case-lambda
      [(dst src top left)
       (matrix-paste dst src
                     top left 0 0 (matrix-rows src) (matrix-cols src))]
      [(dst src tdst ldst tsrc lsrc height width)
       (let ([height (min height (- (matrix-rows src) tsrc) (- (matrix-rows dst) tdst))]
             [width (min width (- (matrix-cols src) lsrc) (- (matrix-cols dst) ldst))]
             [dst (matrix-copy dst)])
         (let ([bsrc (+ tsrc height)]
               [rsrc (+ lsrc width)])
           (do ([i tsrc (+ i 1)]
                [i2 tdst (+ i2 1)])
               ((= i bsrc) dst)
             (do ([j lsrc (+ j 1)]
                  [j2 ldst (+ j2 1)])
                 ((= j rsrc))
               (matrix-set! dst i2 j2 (matrix-ref src i j))))))]))
  
  (define matrix-print
    (lambda (m)
      (vector-for-each
       (lambda (v)
         (display v)
         (newline)) m)))
  
  (define list->matrix
    (lambda (ml)
      (list->vector (map list->vector ml))))

    (define vector-cat
    (lambda vs
      (let ([v (make-vector
                (fold-left
                 (lambda (a x)
                   (+ a (vector-length x))) 0
                   vs))]
            [i 0])
        (for-each
         (lambda (x)
           (vector-for-each
            (lambda (va)
              (vector-set! v i va)
              (set! i (+ i 1))) x)) vs) v)))
  
  (define vector-rotate
    (case-lambda
      [(l step)
       (let ([len (vector-length l)]
             [result (vector-copy l)])
         (do ([i 0 (+ i 1)])
             ((= i len) result)
           (vector-set! result i (vector-ref l (mod (+ i step) len)))))]
      [(l) (vector-rotate 1)]))
  
  (define list-rotate
    (lambda (l)
      (append (cdr l) (list (car l)))))
  
  (define vector-mul
    (lambda (v1 v2)
      (vector-map
       (lambda (val1 val2) (* val1 val2))
       v1 v2)))
  
  (define vector-dot
    (lambda (v1 v2)
      (set-virtual-register! 0 0)
      (vector-for-each
         (lambda (val1 val2) (set-virtual-register! 0 (+ (virtual-register 0) (* val1 val2))))
         v1 v2)
        (virtual-register 0)))
  
  (define vector-cross
    (lambda (v1 v2)
      (let ([a (vector-ref v1 0)] [b (vector-ref v1 1)] [c (vector-ref v1 2)]
            [d (vector-ref v2 0)] [e (vector-ref v2 1)] [f (vector-ref v2 2)])
        (vector (- (* b f) (* c e))
                (- (* c d) (* a f))
                (- (* a e) (* b d))))))
  
  (define vector-reform
    (lambda (v . inx)
      (list->vector
       (let ([inx (if (list? (car inx))
                      (car inx)
                      inx)])
         (map
          (lambda (ind)
            (if (symbol? ind)
                (vector-axis v ind)
                (vector-ref v ind)))
          inx)))))
  
  (define vector-axis
    (lambda (v ax)
      (case ax
        ['x (vector-ref v 0)]
        ['y (vector-ref v 1)]
        ['z (vector-ref v 2)]
        ['w (vector-ref v 3)])))
  
  (define vector-norm
    (lambda (v)
      (sqrt (vector-dot v v))))
  
  (define vector->matrix
    (case-lambda
      [(v) (vector v)]
      [(v rows cols)
       (let ([len (vector-length v)]
             [mat (make-matrix rows cols 0)])
         (do ([i 0 (+ i 1)]
              [base 0 (+ base cols)])
             ((= i rows) mat)
           (do ([j 0 (+ j 1)]
                [ind base (+ ind 1)])
               ((or (= j cols) (>= ind len)))
             (matrix-set! mat i j (vector-ref v ind)))))]
      [(v cols)
       (vector->matrix v
                       (ceiling (/ (vector-length v) cols))
                       cols)]))
  
  (define vector-outer
    (lambda (u v)
      (let ([ul (vector-length u)]
            [vl (vector-length v)])
        (let ([mat (make-matrix ul vl)])
          (do ([i 0 (+ i 1)])
              ((= i ul) mat)
            (let ([vec (vector-ref mat i)]
                  [uval (vector-ref u i)])
              (do ([j 0 (+ j 1)])
                  ((= j vl))
                (vector-set! vec j (* uval (vector-ref v j))))))))))
  
  (define matrix->vector
    (lambda (m)
      (apply vector-cat (vector->list m))))
  
  (define-syntax vector-ops
    (syntax-rules ()
      [(_ v) (vector-map - v)]))
  
  (define-syntax vector-add
    (syntax-rules ()
      [(_ u v) (vector-map + u v)]
      [(_ u v ...) (vector-add (vector-add u v) ...)]))
  
  (define-syntax vector-scale
    (syntax-rules ()
      [(_ u k) (vector-map
                (lambda (x) (* k x)) u)]))
     (define matrix-reform
       (case-lambda
         [(mat cols)
          (vector->matrix (matrix->vector mat) cols)]
         [(mat rows cols)
          (vector->matrix (matrix->vector mat) rows cols)]))
     
     (define-syntax matrix-scale
       (syntax-rules ()
         [(_ mat k)
          (vector-map (lambda (v)
                        (vector-scale v k))
                      mat)]))
     
     (define-syntax matrix-add
       (syntax-rules ()
         [(_ m n) (vector-map (lambda (u v) (vector-add u v))
                              m n)]
         [(_ m n ...) (matrix-add (matrix-add m n) ...)]))
     
     (define-syntax matrix-ops
       (syntax-rules ()
         [(_ m) (vector-map vector-ops m)]))
     
     (define matrix-mmul
       (lambda (m n)
         (let ([i-max (matrix-rows m)]
               [k-max (matrix-cols m)]
               [j-max (matrix-cols n)])
           (let ([mat (make-matrix i-max j-max)])
             (do ([k 0 (+ k 1)])
                 ((= k k-max) mat)
               (do ([i 0 (+ i 1)])
                   ((= i i-max))
                 (let ([r (matrix-ref m i k)])
                   (do ([j 0 (+ j 1)])
                       ((= j j-max))
                     (matrix-set! mat i j
                                  (+ (matrix-ref mat i j)
                                     (* (matrix-ref n k j) r)))))))))))
     
     (define matrix-mul
       (lambda (m n)
         (vector-map
          (lambda (u v)
            (vector-mul u v))
          m n)))
     
     (define matrix-dot
       (lambda (m n)
         (set-virtual-register! 0 0)
         (vector-for-each
          (lambda (v1 v2)
            (set-virtual-register! 0
                                   (+ (virtual-register 0) (vector-dot v1 v2))))
          m n)
         (virtual-register 0)))
     
     (define matrix-trans
       (lambda (m)
         (let ([rows (matrix-rows m)]
               [cols (matrix-cols m)])
           (let ([mat (make-matrix rows cols)])
             (do ([i 0 (+ i 1)])
                 ((= i rows) mat)
               (do ([j 0 (+ j 1)])
                   ((= j cols))
                 (matrix-set! mat i j
                              (matrix-ref m j i))))))))

       (define pi
    (* 2 (asin 1.0)))
  
  (define deg->rad
    (lambda (deg)
      (* (/ deg 180) pi)))
  
  (define rad->deg
    (lambda (rad)
      (/ (* rad 180) pi)))
  
  ;; Quaternion structure
  
  (define-structure (quaternion vec theta))
  
  (define quaternion-mul
    (lambda (q1 q2)
      (let ([v1 (quaternion-vec q1)]
            [w1 (quaternion-theta q1)]
            [v2 (quaternion-vec q2)]
            [w2 (quaternion-theta q2)])
        (make-quaternion
         (- (* w1 w2)
            (vector-dot v1 v2))
         (vector-add (vector-cross v1 v2)
                     (vector-scale v1 w2)
                     (vector-scale v2 w1))))))
  
  (define quaternion-conjugate
    (lambda (q)
      (make-quaternion
       (quaternion-theta q)
       (vector-ops (quaternion-vec q)))))
  
  (define quaternion-norm2
    (lambda (q)
      (let ([v (quaternion-vec q)]
            [w (quaternion-theta q)])
        (+ (vector-dot v v)
           (* w w)))))
  
  (define quaternion-inv
    (lambda (q)
      (let ([norm2 (quaternion-norm2 q)])
        (make-quaternion
         (/ (quaternion-theta q) norm2)
         (vector-scale (quaternion-vec q) (/ norm2))))))
  
  (define make-vecq
    (case-lambda
      [(x y z w) (vector x y z w)]
      [(x y z) (vector x y z
                       (sqrt (+ (* x x) (* y y) (* z z))))]))
  
  (define vecq-mul
    (lambda (p q)
      (let ([px (vector-ref p 0)]
            [py (vector-ref p 1)]
            [pz (vector-ref p 2)]
            [pw (vector-ref p 3)]
            [qx (vector-ref q 0)]
            [qy (vector-ref q 1)]
            [qz (vector-ref q 2)]
            [qw (vector-ref q 3)])
        (vector
         (- (* pw qw) (* px qx) (* py qy) (* pz qz))
         (- (+ (* px qw) (* pw qx) (* py qz)) (* pz qy))
         (- (+ (* py qw) (* pw qy) (* pz qx)) (* px qz))
         (- (+ (* pz qw) (* pw qz) (* px qy)) (* py qx))))))
  
  (define vecq-conj
    (lambda (q)
      (vector
       (- (vector-ref q 0))
       (- (vector-ref q 1))
       (- (vector-ref q 2))
       (vector-ref q 3))))
  
  (define vecq-norm2
    (lambda (q)
      (vector-dot q q)))
  
  (define vecq-inv
    (lambda (q)
      (vector-scale (vecq-conj q) (/ (vecq-norm2 q)))))
  
  (define vecq-exp
    (lambda (q)
      (let* ([v (vector-reform q 0 1 2)]
             [theta (vector-norm v)])
        (vector-scale (vector-cat (vector-scale v (/ (sin theta) theta))
                                  (vector (cos theta)))
                      (exp (vector-ref q 3))))))
  
  (define vecq-log
    (lambda (q)
      (let* ([qnorm (vector-norm q)]
             [unitq (vector-scale q (/ qnorm))]
             [theta (acos (vector-ref unitq 3))]
             [result (vector-scale unitq (/ theta (sin theta)))])
        (vector-set! result 3 (log qnorm))
        result)))
  
  (define vecq-rot
    (lambda (v theta)
      (vector-cat (vector-scale v (/ (sin (/ theta 2)) (vector-norm v)))
                  (vector (cos (/ theta 2)))))))

  ;; mat-* aliases (must be at end after originals defined)
  (define mat-shape matrix-shape)
  (define mat?? matrix??)
  (define make-mat make-matrix)
  (define mat-set! matrix-set!)
  (define mat-get matrix-ref)
  (define mat->vector matrix->vector)
  (define mat-transpose matrix-trans))
