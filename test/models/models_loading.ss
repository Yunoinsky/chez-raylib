(import (raylib raylib))

(define width 800)
(define height 450)

(init-window width height "raylib [models] example - models loading")

(define camera
  (make-camera3d '(50.0 50.0 50.0)
                 '(0.0 10.0 0.0)
                 '(0.0 1.0 0.0)
                 45.0 CAMERA_PERSPECTIVE))

(define model (load-model "./test/resources/models/obj/castle.obj"))

(define texture (load-texture
                 "./test/resources/models/obj/castle_diffuse.png"))

(copy-texture texture (model-ref& model (materials 0 maps MATERIAL_MAP_ALBEDO texture)))

(define position (make-vector-3 0.0 0.0 0.0))

(define bounds (get-mesh-bounding-box (model-ref& model (meshes 0))))

(set-camera-mode camera CAMERA_FREE)

(set-target-fps 60)

(do ([selected #f])
    ((window-should-close)
     (unload-texture texture)
     (unload-model model))
  (update-camera camera)

  (when (is-file-dropped)
    (let ([dropped-files (load-dropped-files)])
      (when (= 1 (file-path-list-get dropped-files count))
        (let ([path-0 (ftype-pointer->sexpr (file-path-list-get dropped-files (paths)))])
          (case (string-downcase (get-file-extension path-0))
           [(".obj" ".gltf" ".glb" ".vox" ".iqm" ".m3d")
            (unload-model model)
            (load-model model path-0)
            (copy-texture texture
                          (model-ref& model (materials 0 maps MATERIAL_MAP_ALBEDO texture)))
            (get-mesh-bounding-box bounds (model-ref& model (meshes 0)))]
           [".png"
            (unload-texture texture)
            (load-texture texture path-0)
            (copy-texture texture
                          (model-ref& model (materials 0 maps MATERIAL_MAP_ALBEDO texture)))])))
      (unload-dropped-files dropped-files)))
  (when (is-mouse-button-pressed MOUSE_BUTTON_LEFT)
    (if (ray-collision-get
         (get-ray-collision-box
          (get-mouse-ray (get-mouse-position) camera) bounds) hit)
        (set! selected (not selected))
        (set! selected #f)))
  (drawing-begin
   (clear-background RAYWHITE)
   (mode-3d-begin
    camera
    (draw-model model position 1.0 WHITE)
    (draw-grid 20 10.0)
    (when selected
      (draw-bounding-box bounds GREEN)))
   (draw-text "Drag & drop model to load mesh/texture."
              10 (- height 20) 10 DARKGRAY)
   (when selected
     (draw-text "MODEL SELECTED"
                (- width 110) 10 10 GREEN))
   (draw-text "(c) Castle 3D model by Alberto Cano"
              (- width 200) (- height 20) 10 GRAY)
   (draw-fps 10 10)))
