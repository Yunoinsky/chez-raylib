(library (raylib rlgl (0 2))
  (export rl-push-matrix rl-translate
          rl-rotate rl-pop-matrix rl-matrix-begin)
  (import
   (chezscheme)
   (only (raylib raylib) float int))
  (define rl-push-matrix
    (let ([f (foreign-procedure "rlPushMatrix" () void)])
      (lambda () (f))))
  (define rl-pop-matrix
    (let ([f (foreign-procedure "rlPopMatrix" () void)])
      (lambda () (f))))
  (define-syntax rl-matrix-begin
    (syntax-rules ()
      [(_ e1 e2 ...)
       (begin
         (rl-push-matrix)
         e1 e2 ...
          (rl-pop-matrix))]))
  (define rl-translate
     (let ([f (foreign-procedure "rlTranslatef"
                                (float float float) void)])
       (lambda (x y z)
         (f (float x) (float y) (float z)))))
  (define rl-rotate
    (let ([f (foreign-procedure "rlRotatef"
                                (float float float float) void)])
      (lambda (angle x y z)
         (f (float angle) (float x) (float y) (float z))))))
  
         
