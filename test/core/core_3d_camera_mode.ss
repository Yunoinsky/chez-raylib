(import (raylib raylib))

(define width 800)
(define height 450)

(init-window width height "raylib [core] example - 3d camera mode")

(set-target-fps 60)

(do ([cube-pos (make-vector-3 0.0 0.0 0.0)]
     [camera (make-camera3d '(0.0 10.0 10.0)
                            '(0.0 0.0 0.0)
                            '(0.0 1.0 0.0)
                            45.0 CAMERA_PERSPECTIVE)])
    ((window-should-close)
     (close-window))
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
