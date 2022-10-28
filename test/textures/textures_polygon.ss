(import (raylib raylib))
(import (raylib raymath))

(init-window 800 450 "raylib [textures] example - textured polygon")

(set-target-fps 60)

(define coords-list '((0.75 0.0)
                      (0.25 0.0)
                      (0.0 0.5)
                      (0.0 0.75)
                      (0.25 1.0)
                      (0.375 0.875)
                      (0.625 0.875)
                      (0.75 1.0)
                      (1.0 0.75)
                      (1.0 0.5)
                      (0.75 0.0)))
(define tex-coords
  (make-array coords-list Vector-2 make-vector-2))

(define points
  (make-array (map (lambda (p-list)
                     (map (lambda (p)
                            (* (- p 0.5) 256.0))
                          p-list)) coords-list)
              Vector-2 make-vector-2))

(define positions
  (make-array (length coords-list) Vector-2))

(define texture (load-texture "./test/resources/cat.png"))

(do ([angle 0.0 (+ angle 1.0)])
    ((window-should-close)
     (unload-texture texture)
     (close-window))
  (vector-for-each
   (lambda (src dst)
     (vector-2-rotate src dst (deg->rad angle)))
   points positions)
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "textured polygon" 20 20 20 DARKGRAY)
   (draw-texture-poly texture (make-vector-2 400.0 225.0)
                      (arr* positions)
                      (arr* tex-coords) 11 WHITE)))
