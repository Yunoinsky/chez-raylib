(import (raylib raylib (0 3)))

(define width 800)
(define height 450)

(init-window width height
             "raylib [core] example - 3d camera free")

(define camera
  (let ([c (make-camera-3d 0.0 0.0 0.0 45.0 CAMERA_PERSPECTIVE)])
    (vector-3-set! (camera-3d-ref& c position) x 10.0)
    (vector-3-set! (camera-3d-ref& c position) y 10.0)
    (vector-3-set! (camera-3d-ref& c position) z 10.0)
    (vector-3-set! (camera-3d-ref& c target) x 0.0)
    (vector-3-set! (camera-3d-ref& c target) y 0.0)
    (vector-3-set! (camera-3d-ref& c target) z 0.0)
    (vector-3-set! (camera-3d-ref& c up) x 0.0)
    (vector-3-set! (camera-3d-ref& c up) y 1.0)
    (vector-3-set! (camera-3d-ref& c up) z 0.0)
    c))

(update-camera camera CAMERA_FREE)

(set-target-fps 60)

(do ([cube-pos (make-vector-3 0.0 0.0 0.0)])
    ((window-should-close)
     (close-window))
  (when (is-key-down KEY_Z)
    (vector-3-set! (camera-3d-ref& camera target) x 0.0)
    (vector-3-set! (camera-3d-ref& camera target) y 0.0)
    (vector-3-set! (camera-3d-ref& camera target) z 0.0))
  (update-camera camera CAMERA_FREE)
  (drawing-begin
   (clear-background RAYWHITE)
   (mode-3d-begin
    camera
    (draw-cube cube-pos 2.0 2.0 2.0 RED)
    (draw-cube-wires cube-pos 2.0 2.0 2.0 MAROON)
    (draw-grid 10 1.0))
   (draw-rectangle 10 10 320 133 (fade SKYBLUE 0.5))
   (draw-rectangle-lines 10 10 320 133 BLUE)
   (draw-text "Free camera default controls:" 20 20 10 BLACK)
   (draw-text "- Mouse Wheel to Zoom in-out" 40 40 10 DARKGRAY)
   (draw-text "- Mouse Wheel Pressed to Pan" 40 60 10 DARKGRAY)
   (draw-text "- Alt + Mouse Wheel Pressed to Rotate" 40 80 10 DARKGRAY)
   (draw-text "- Alt + Ctrl + Mouse Wheel Pressed for Smooth Zoom" 40 100 10 DARKGRAY)
   (draw-text "- Z to zoom to (0, 0, 0)" 40 120 10 DARKGRAY))
)
