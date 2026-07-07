(import (raylib raylib (0 3)))

(init-window 800 450 "raylib [models] example - M3D model loading" )

(define camera
  (make-camera-3d '(1.5 1.5 1.5)
                  '(0.0 0.4 0.0)
                  '(0.0 1.0 0.0)
                  45.0 CAMERA_PERSPECTIVE))

(define pos (make-vector-3 0.0 0.0 0.0))

(define model-fn  "./test/resources/models/m3d/CesiumMan.m3d")

(define model (load-model model-fn))

(define anims-count (make-ftype-pointer int (foreign-alloc (ftype-sizeof unsigned))))
(define anims (load-model-animations model-fn anims-count))
(set! anims-count (ftype-ref int () anims-count))
(set! anims (arr& anims-count Model-Animation anims))

(update-camera camera CAMERA_FREE)
(set-target-fps 60)

(do ([draw-mesh #t (if (is-key-pressed KEY_M)
                       (not draw-mesh)
                       draw-mesh)]
     [draw-skeleton #t (if (is-key-pressed KEY_S)
                           (not draw-skeleton)
                           draw-skeleton)]
     [anim-playing #f]
     [anim-keyframe-Counter 0]
     [anim-id 0])
    ((window-should-close)
     (unload-model-animations anims anims-count)
     (unload-model model)
     (close-window))

  (update-camera camera CAMERA_FREE)
  
  (when (bool anims-count)
    (when (or (is-key-down KEY_SPACE)
              (is-key-pressed KEY_N))
      (let ([anim (vector-ref anims anim-id)])
        (set! anim-keyframe-Counter (mod (1+ anim-frame-counter)
                                      (model-animation-get anim keyframe-Count)))
        (update-model-animation model anim anim-keyframe-Counter)
        (set! anim-playing #t)))
    (when (is-key-pressed KEY_A)
      (set! anim-keyframe-Counter 0)
      (set! anim-id (mod (1+ anim-id) anims-count))
      (update-model-animation model (vector-ref anims anim-id) 0)
      (set! anim-playing #t)))
  
  (drawing-begin
   (clear-background RAYWHITE)

   (mode-3d-begin
    camera
    (when draw-mesh
      (draw-model model pos 1.0 WHITE))
        (draw-grid 10 1.0))10 1.0))
   
   (draw-text "PRESS SPACE to PLAY MODEL ANIMATION" 10 390 10 MAROON) 
   (draw-text "PRESS A to CYCLE THROUGH ANIMATIONS" 10 410 10 DARKGRAY) 
   (draw-text "PRESS M to toggle MESH, S to toggle SKELETON DRAWING" 10 430 10 DARKGRAY)
   (draw-text "(c) CesiumMan model by KhronosGroup" 590 430 10 GRAY)))
