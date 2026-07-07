(import (chezscheme) (raylib raylib (0 3)) (raylib raymath) (raylib rlgl (0 3)))

(define MAX-POINTS 11)

(define (draw-texture-poly texture center points texcoords pc tint)
  (rl-set-texture (texture-get texture id))
  (rl-begin RL_TRIANGLES)
  (rl-color-4ub (color-get tint r) (color-get tint g) (color-get tint b) (color-get tint a))
  (do ([i 0 (fx+ i 1)]) ((fx>=? i (- pc 1)))
    (let ([cx (vector-2-get center x)] [cy (vector-2-get center y)]
          [p (vector-ref points i)] [n (vector-ref points (+ i 1))]
          [t (vector-ref texcoords i)] [tn (vector-ref texcoords (+ i 1))])
      (rl-tex-coord-2f 0.5 0.5) (rl-vertex-2f cx cy)
      (rl-tex-coord-2f (vector-2-get t x) (vector-2-get t y))
      (rl-vertex-2f (+ (vector-2-get p x) cx) (+ (vector-2-get p y) cy))
      (rl-tex-coord-2f (vector-2-get tn x) (vector-2-get tn y))
      (rl-vertex-2f (+ (vector-2-get n x) cx) (+ (vector-2-get n y) cy))))
  (rl-end) (rl-set-texture 0))

(init-window 800 450 "raylib [textures] example - textured polygon")
(set-target-fps 60)

(define coords-list
  '((0.75 0.0) (0.25 0.0) (0.0 0.5) (0.0 0.75)
    (0.25 1.0) (0.375 0.875) (0.625 0.875) (0.75 1.0)
    (1.0 0.75) (1.0 0.5) (0.75 0.0)))

(define tex-coords (make-array coords-list Vector-2 make-vector-2))
(define points
  (make-array (map (lambda (p) (map (lambda (v) (* (- v 0.5) 256.0)) p)) coords-list)
              Vector-2 make-vector-2))
(define positions (make-array (length coords-list) Vector-2))

(define texture (load-texture "./test/resources/cat.png"))

(do ([angle 0.0 (+ angle 1.0)])
    ((window-should-close) (unload-texture texture) (close-window))
  (vector-for-each (lambda (src dst) (vector-2-rotate src dst (deg->rad angle)))
                   points positions)
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "textured polygon" 20 20 20 DARKGRAY)
   (draw-texture-poly texture (make-vector-2 400.0 225.0) positions tex-coords MAX-POINTS WHITE)))
