(library (raylib raymath (0 1))
  (export vector-2-rotate vector-2-rotate!)

  (import
   (rnrs)
   (only (raylib raylib)
         make-vector-2 vector-2-get))

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


