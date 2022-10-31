(import (raylib raylib))

(init-window 800 450 "raylib [models] example - geometric shapes")

(define camera (make-camera3d '(0.0 10.0 10.0)
                              '(0.0 0.0 0.0)
                              '(0.0 1.0 0.0)
                              45.0 CAMERA_PERSPECTIVE))


(set-target-fps 60)

(do ([tmp-v3 (make-vector-3 0.0 0.0 0.0)])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (mode-3d-begin
    camera
    (clear-background RAYWHITE)
    (draw-cube (make-vector-3 tmp-v3 -4.0 0.0 2.0)
               2.0 5.0 2.0 RED)
    (draw-cube-wires tmp-v3
                     2.0 5.0 2.0 GOLD)
    (draw-cube-wires (make-vector-3 tmp-v3 -4.0 0.0 -2.0)
                     3.0 6.0 2.0 MAROON)
    (draw-sphere (make-vector-3 tmp-v3 -1.0 0.0 -2.0) 1.0 GREEN)
    (draw-sphere-wires (make-vector-3 tmp-v3 1.0 0.0 2.0) 2.0 16 16 LIME)

    (draw-cylinder (make-vector-3 tmp-v3 4.0 0.0 -2.0)
                   1.0 2.0 3.0 4 SKYBLUE)
    (draw-cylinder-wires tmp-v3 1.0 2.0 3.0 4 DARKBLUE)
    (draw-cylinder-wires (make-vector-3 tmp-v3 4.5 -1.0 2.0)
                         1.0 1.0 2.0 6 BROWN)

    (draw-cylinder (make-vector-3 tmp-v3 1.0 0.0 -4.0)
                   0.0 1.5 3.0 8 GOLD)
    (draw-cylinder-wires tmp-v3 0.0 1.5 3.0 8 PINK))))
    
