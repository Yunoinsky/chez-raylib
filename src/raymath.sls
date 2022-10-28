(library (raylib raymath (0 1))
  (export vector-2-rotate vector-2-rotate!
          vector->vector-2 vector->vector-3)

  (import
   (rnrs)
   (only (raylib raylib)
         make-vector-3 make-vector-4
         make-vector-2 vector-2-get float))

  (define vector->vector-2
    (case-lambda
      [(src dst)
       (make-vector-2 (float (vector-ref src 0))
                      (float (vector-ref src 1))
                      dst)]
      [(src)
       (make-vector-2 (float (vector-ref src 0))
                      (float (vector-ref src 1)))]))

  (define vector->vector-3
    (case-lambda
      [(src dst)
       (make-vector-3 (float (vector-ref src 0))
                      (float (vector-ref src 1))
                      (float (vector-ref src 2))
                      dst)]
      [(src)
       (make-vector-3 (float (vector-ref src 0))
                      (float (vector-ref src 1))
                      (float (vector-ref src 2)))]))

  (define vector->vector-4
    (case-lambda
      [(src dst)
       (make-vector-4 (float (vector-ref src 0))
                      (float (vector-ref src 1))
                      (float (vector-ref src 2))
                      (float (vector-ref src 3))
                      dst)]
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
           (make-vector-2 (- (* x cos-res) (* y sin-res))
                          (+ (* x sin-res) (* y cos-res))
                          dst)))]
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


