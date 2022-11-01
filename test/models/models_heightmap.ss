(import (raylib raylib))
(init-window 800 450 "raylib [models] example - heightmap loading and drawing")

(define camera
  (make-camera3d '(18.0 18.0 18.0)
                 '( 0.0  0.0  0.0)
                 '( 0.0  1.0  0.0)
                 45.0 CAMERA_CUSTOM))

(define image (load-image "./test/resources/heightmap.png"))

(define mesh (gen-mesh-heightmap image (make-vector-3 16.0 8.0 16.0)))
(define model (load-model-from-mesh mesh))
(define texture (load-texture-from-image (model-ref& model (materials 0 maps MATERIAL_MAP_ALBEDO texture)) image))
(define map-pos (make-vector-3 -8.0 0.0 -8.0))
(unload-image image)

(set-camera-mode camera CAMERA_ORBITAL)

(set-target-fps 60)

(do ()
    ((window-should-close)
     (unload-texture texture)
     (unload-model model)
     (close-window))
  (update-camera camera)
  (drawing-begin
   (clear-background RAYWHITE)
   (mode-3d-begin
    camera
    (draw-model model map-pos 1.0 RED)
    (draw-grid 20 1.0))
   (draw-texture texture (- 800 (texture-get texture width) 20) 20 WHITE)
   (draw-rectangle-lines (- 800 (texture-get texture width) 20) 20
                         (texture-get texture width)
                         (texture-get texture height)
                         GREEN)
   (draw-fps 10 10)))
