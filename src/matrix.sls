;; chez-raylib matrix helper — minimal Chez-idiomatic implementation
;; Flat vector storage: m = #(r0c0 r0c1 ... r0cn-1 r1c0 ...)
;; index = row * cols + col
(library (chez-raylib matrix)
  (export mat-shape mat?? make-mat mat-set! mat->vector
          mat-get mat-transpose
          vector-add vector-scale
          pi deg->rad rad->deg)
  (import (chezscheme))

  (define pi 3.14159265358979323846)
  (define (deg->rad d) (/ (* d pi) 180.0))
  (define (rad->deg r) (/ (* r 180.0) pi))

  (define (make-mat n . rest)
    (let* ([rows n]
           [cols (if (pair? rest) (car rest) n)]
           [fill (and (pair? rest) (pair? (cdr rest)) (cadr rest))]
           [v (make-vector (* rows cols) (or fill 0.0))])
      (unless fill
        ;; Identity: diag = 1.0
        (do ([i 0 (fx+ i 1)]) ((fx>=? i (min rows cols)))
          (vector-set! v (+ i (* i cols)) 1.0)))
      v))

  (define (mat-shape m)
    (let ([len (vector-length m)])
      ;; Infer shape from length — assume square if perfect square
      (let ([s (exact-integer-sqrt len)])
        (if (= (* s s) len) (list s s) (list len 1)))))

  (define (mat?? m) (vector? m))

  (define (mat-set! m row col val)
    (let ([cols (cadr (mat-shape m))])
      (vector-set! m (+ col (* row cols)) val)))

  (define (mat-get m row col)
    (let ([cols (cadr (mat-shape m))])
      (vector-ref m (+ col (* row cols)))))

  (define (mat->vector m)
    (list->vector (vector->list m)))  ;; copy

  (define (mat-transpose m)
    (let* ([shape (mat-shape m)]
           [rows (car shape)] [cols (cadr shape)]
           [result (make-vector (* rows cols) 0.0)])
      (do ([r 0 (fx+ r 1)]) ((fx>=? r rows))
        (do ([c 0 (fx+ c 1)]) ((fx>=? c cols))
          (vector-set! result (+ c (* r cols))
                       (vector-ref m (+ r (* c cols))))))
      result))

  ;; Vector operations (on Scheme vectors)
  (define (vector-add v1 v2)
    (let ([len (min (vector-length v1) (vector-length v2))])
      (vector-map + (vector-copy v1 0 len) (vector-copy v2 0 len))))

  (define (vector-scale v factor)
    (vector-map (lambda (x) (* x factor)) v))
)