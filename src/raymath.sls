(library (raylib raymath (0 2))
  (export vector-2-rotate vector-2-rotate!
          vector->vector-2 vector->vector-3
          matrix-translate mat->matrix matrix->mat)

  (import
   (rnrs)
   (only (matrix)
         mat-shape mat??
         make-mat mat-set! mat->vector)
   (only (raylib raylib)
         make-matrix
         matrix-get
         make-vector-3 make-vector-4
         make-vector-2 vector-2-get float))

  (define matrix-translate
    (case-lambda
      [(struct x y z)
       (make-matrix struct
                    1.0 0.0 0.0 (float x)
                    0.0 1.0 0.0 (float y)
                    0.0 0.0 1.0 (float z)
                    0.0 0.0 0.0 1.0)]
      [(x y z)
       (make-matrix 1.0 0.0 0.0 (float x)
                    0.0 1.0 0.0 (float y)
                    0.0 0.0 1.0 (float z)
                    0.0 0.0 0.0 1.0)]))

  (define matrix->mat
    (lambda (matrix)
      (let ([m (make-mat 4)])
        (mat-set! m 0 0 (matrix-get matrix m0))
        (mat-set! m 1 0 (matrix-get matrix m1))
        (mat-set! m 2 0 (matrix-get matrix m2))
        (mat-set! m 3 0 (matrix-get matrix m3))
        (mat-set! m 0 1 (matrix-get matrix m4))
        (mat-set! m 1 1 (matrix-get matrix m5)) 
        (mat-set! m 2 1 (matrix-get matrix m6))
        (mat-set! m 3 1 (matrix-get matrix m7)) 
        (mat-set! m 0 2 (matrix-get matrix m8))
        (mat-set! m 1 2 (matrix-get matrix m9)) 
        (mat-set! m 2 2 (matrix-get matrix m10))
        (mat-set! m 3 2 (matrix-get matrix m11))
        (mat-set! m 0 3 (matrix-get matrix m12))
        (mat-set! m 1 3 (matrix-get matrix m13)) 
        (mat-set! m 2 3 (matrix-get matrix m14))
        (mat-set! m 3 3 (matrix-get matrix m15))
        m)))

  (define mat->matrix
    (case-lambda
      [(struct mat)
       (assert (mat?? mat))
       (assert (equal? (mat-shape mat) '(4 . 4)))
       (apply make-matrix
              (cons struct (vector->list (mat->vector mat))))]
      [(mat)
       (assert (mat?? mat))
       (assert (equal? (mat-shape mat) '(4 . 4)))       
       (apply make-matrix
              (vector->list (mat->vector mat)))]))
    
  (define vector->vector-2
    (case-lambda
      [(src dst)
       (make-vector-2 dst
                      (float (vector-ref src 0))
                      (float (vector-ref src 1)))]
      [(src)
       (make-vector-2 (float (vector-ref src 0))
                      (float (vector-ref src 1)))]))

  (define vector->vector-3
    (case-lambda
      [(src dst)
       (make-vector-3 dst
                      (float (vector-ref src 0))
                      (float (vector-ref src 1))
                      (float (vector-ref src 2)))]
      [(src)
       (make-vector-3 (float (vector-ref src 0))
                      (float (vector-ref src 1))
                      (float (vector-ref src 2)))]))

  (define vector->vector-4
    (case-lambda
      [(src dst)
       (make-vector-4 dst
                      (float (vector-ref src 0))
                      (float (vector-ref src 1))
                      (float (vector-ref src 2))
                      (float (vector-ref src 3)))]
      [(src)
       (make-vector-4 (float (vector-ref src 0))
                      (float (vector-ref src 1))
                      (float (vector-ref src 2))
                      (float (vector-ref src 3)))]))
  
  (define vector-2-rotate
    (case-lambda
      [(src dst rad)
       (let ([x (vector-2-get src x)]
             [y (vector-2-get src y)])
         (let ([cos-res (cos rad)]
               [sin-res (sin rad)])
           (make-vector-2 dst
                          (- (* x cos-res) (* y sin-res))
                          (+ (* x sin-res) (* y cos-res)))))]
      [(vec rad)
       (let ([x (vector-2-get vec x)]
             [y (vector-2-get vec y)])
         (let ([cos-res (cos rad)]
               [sin-res (sin rad)])
           (make-vector-2 (- (* x cos-res)
                             (* y sin-res))
                          (+ (* x sin-res)
                             (* y cos-res)))))]))
  
  (define vector-2-rotate!
    (lambda (vec rad)
      (vector-2-rotate vec vec rad))))


