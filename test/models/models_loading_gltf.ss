(import (raylib raylib))

(init-window 800 450 "raylib [models] example - loading gltf")

(define camera
  (make-camera3d '(10.0 10.0 10.0)
                 '( 0.0  0.0  0.0)
                 '( 0.0  1.0  0.0)
                 45.0 CAMERA_PERSPECTIVE))

(define model
  (load-model "./test/resources/models/gltf/robot.glb"))

(define pos (make-vector-3 0.0 0.0 0.0))

(set-camera-mode camera CAMERA_FREE)

(set-target-fps 60)

(do ()
    ((window-should-close)
     (unload-model model)
     (close-window))
  (update-camera camera)
  (drawing-begin
   (clear-background SKYBLUE)
   (mode-3d-begin
    camera
    (draw-model model pos 1.0 WHITE)
    (draw-grid 10 1.0))))
