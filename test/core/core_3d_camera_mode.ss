(import (raylib raylib (0 3)))

(define width 800)
(define height 450)

(init-window width height "raylib [core] example - 3d camera mode")

(set-target-fps 60)

(define camera
  (let ([c (make-camera-3d 0.0 0.0 0.0 45.0 CAMERA_PERSPECTIVE)])
    (vector-3-set! (camera-3d-ref& c position) x 0.0)
    (vector-3-set! (camera-3d-ref& c position) y 10.0)
    (vector-3-set! (camera-3d-ref& c position) z 10.0)
    (vector-3-set! (camera-3d-ref& c target) x 0.0)
    (vector-3-set! (camera-3d-ref& c target) y 0.0)
    (vector-3-set! (camera-3d-ref& c target) z 0.0)
    (vector-3-set! (camera-3d-ref& c up) x 0.0)
    (vector-3-set! (camera-3d-ref& c up) y 1.0)
    (vector-3-set! (camera-3d-ref& c up) z 0.0)
    c))

(do ([cube-pos (make-vector-3 0.0 0.0 0.0)]
     [camera camera])
    ((window-should-close)
     (close-window))
  (update-camera camera CAMERA_ORBITAL)
  (drawing-begin
   (clear-background RAYWHITE)

   (mode-3d-begin
    camera
    (draw-cube cube-pos 2.0 2.0 2.0 RED)
    (draw-cube-wires cube-pos 2.0 2.0 2.0 MAROON)
    (draw-grid 10 1.0))
   (draw-text "Welcome to the third dimension!"
              10 40 20 DARKGRAY)
   (draw-fps 10 10)))
