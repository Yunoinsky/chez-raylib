(import (raylib raylib))

(define width 800)
(define height 450)

(init-window width height
             "raylib [core] example - 3d camera free")

(define camera (make-camera3d '(10.0 10.0 10.0)
                              '(0.0 0.0 0.0)
                              '(0.0 1.0 0.0)
                              45.0 CAMERA_PERSPECTIVE))

(set-camera-mode camera CAMERA_FREE)

(set-target-fps 60)

(do ([cube-pos (make-vector-3 0.0 0.0 0.0)])
    ((window-should-close)
     (close-window))
  (when (is-key-down KEY_Z)
    (make-vector-3 0.0 0.0 0.0
                   (camera-3d-ref& camera target)))
  (update-camera camera)
  (drawing-begin
   (clear-background RAYWHITE)
   (mode-3d-begin
    camera
    (draw-cube cube-pos 2.0 2.0 2.0 RED)
    (draw-cube-wires cube-pos 2.0 2.0 2.0 MAROON)
    (draw-grid 10 1.0))
   (draw-rectangle 10 10 320 133 (fade SKYBLUE 0.5))
   (draw-rectangle-lines 10 10 320 133 BLUE)
   (draw-text "Free camera default controls:"
              20 20 10 BLACK)
   (draw-text "- Mouse Wheel to Zoom in-out"
              40 40 10 DARKGRAY)
   (draw-text "- Mouse Wheel Pressed to Pan"
              40 60 10 DARKGRAY)
   (draw-text "- Alt + Mouse Wheel Pressed to Rotate"
              40 80 10 DARKGRAY)
   (draw-text
    "- Alt + Ctrl + Mouse Wheel Pressed for Smooth Zoom"
    40 100 10 DARKGRAY)
   (draw-text "- Z to zoom to (0, 0, 0)"
              40 120 10 DARKGRAY)))
