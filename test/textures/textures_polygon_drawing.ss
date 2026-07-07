(import (chezscheme) (raylib raylib (0 3)) (raylib raymath) (raylib rlgl (0 3)))

(define MAX-POINTS 11)

;; Draw textured polygon using rlgl primitives
(define (draw-texture-poly texture center points texcoords point-count tint)
  (rl-set-texture (texture-get texture id))
  (rl-begin RL_TRIANGLES)
  (rl-color-4ub (color-get tint r) (color-get tint g) (color-get tint b) (color-get tint a))
  (do ([i 0 (+ i 1)])
      ((>= i (- point-count 1)))
    (let ([cx (vector-2-get center x)]
          [cy (vector-2-get center y)]
          [px (vector-2-get (vector-ref points i) x)]
          [py (vector-2-get (vector-ref points i) y)]
          [nx (vector-2-get (vector-ref points (+ i 1)) x)]
          [ny (vector-2-get (vector-ref points (+ i 1)) y)]
          [tx (vector-2-get (vector-ref texcoords i) x)]
          [ty (vector-2-get (vector-ref texcoords i) y)]
          [tnx (vector-2-get (vector-ref texcoords (+ i 1)) x)]
          [tny (vector-2-get (vector-ref texcoords (+ i 1)) y)])
      (rl-tex-coord-2f 0.5 0.5)
      (rl-vertex-2f cx cy)
      (rl-tex-coord-2f tx ty)
      (rl-vertex-2f (+ px cx) (+ py cy))
      (rl-tex-coord-2f tnx tny)
      (rl-vertex-2f (+ nx cx) (+ ny cy))))
  (rl-end)
  (rl-set-texture 0))

(init-window 800 450 "raylib [textures] example - polygon drawing")

;; Texture coordinates
(define texcoords
  (list->vector
   (map (lambda (p) (make-vector-2 (car p) (cadr p)))
        '((0.75 0.0) (0.25 0.0) (0.0 0.5) (0.0 0.75)
          (0.25 1.0) (0.375 0.875) (0.625 0.875) (0.75 1.0)
          (1.0 0.75) (1.0 0.5) (0.75 0.0)))))

;; Initial vertex positions from texcoords
(define points
  (list->vector
   (map (lambda (t)
          (let ([tx (vector-2-get t x)]
                [ty (vector-2-get t y)])
            (make-vector-2 (* (- tx 0.5) 256.0) (* (- ty 0.5) 256.0))))
        (vector->list texcoords))))

;; Positions updated each frame by rotation
(define positions (list->vector (vector->list points)))

(define texture (load-texture "./test/resources/cat.png"))

(set-target-fps 60)

(do ([angle 0.0 (+ angle 1.0)])
    ((window-should-close)
     (unload-texture texture)
     (close-window))
  ;; Rotate positions
  (do ([i 0 (+ i 1)])
      ((>= i MAX-POINTS))
    (vector-set! positions i
                 (vector-2-rotate (vector-ref points i)
                                  (deg->rad angle))))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "textured polygon" 20 20 20 DARKGRAY)
   (draw-texture-poly texture
                      (make-vector-2 400.0 225.0)
                      positions texcoords MAX-POINTS WHITE)))
