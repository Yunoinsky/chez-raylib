(import (raylib raylib (0 3)))

(init-window 800 450 "raylib [models] example - M3D model loading" )

(define camera
  (let ([c (make-camera-3d 0.0 0.0 0.0 45.0 CAMERA_PERSPECTIVE)])
    (vector-3-set! (camera-3d-ref& c position) x 1.5)
    (vector-3-set! (camera-3d-ref& c position) y 1.5)
    (vector-3-set! (camera-3d-ref& c position) z 1.5)
    (vector-3-set! (camera-3d-ref& c target) x 0.0)
    (vector-3-set! (camera-3d-ref& c target) y 0.4)
    (vector-3-set! (camera-3d-ref& c target) z 0.0)
    (vector-3-set! (camera-3d-ref& c up) x 0.0)
    (vector-3-set! (camera-3d-ref& c up) y 1.0)
    (vector-3-set! (camera-3d-ref& c up) z 0.0)
    c))

(define pos (make-vector-3 0.0 0.0 0.0))

(define model-fn  "./test/resources/models/m3d/CesiumMan.m3d")

(define model (load-model model-fn))

(define anims-count (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
(define anims (load-model-animations model-fn anims-count))
(set! anims-count (ftype-ref int () anims-count))
(set! anims (arr& anims-count Model-Animation anims))

(update-camera camera CAMERA_FREE)
(set-target-fps 60)

(do ([draw-mesh #t (if (is-key-pressed KEY_M) (not draw-mesh) draw-mesh)]
     [anim-playing #f]
     [anim-frame-counter 0]
     [anim-id 0])
    ((window-should-close)
     (unload-model-animations anims anims-count)
     (unload-model model)
     (close-window))

  (update-camera camera CAMERA_FREE)

  (when (bool anims-count)
    (when (or (is-key-down KEY_SPACE) (is-key-pressed KEY_N))
      (let ([anim (vector-ref anims anim-id)])
        (set! anim-frame-counter (mod (1+ anim-frame-counter)
                                      (model-animation-get anim keyframe-Count)))
        (update-model-animation model anim anim-frame-counter)
        (set! anim-playing #t)))
    (when (is-key-pressed KEY_A)
      (set! anim-frame-counter 0)
      (set! anim-id (mod (1+ anim-id) anims-count))
      (update-model-animation model (vector-ref anims anim-id) 0)
      (set! anim-playing #t)))

  (drawing-begin
   (clear-background RAYWHITE)
   (mode-3d-begin
    camera
    (when draw-mesh
      (draw-model model pos 1.0 WHITE))
    (draw-grid 10 1.0))
   (draw-text "PRESS SPACE to PLAY MODEL ANIMATION" 10 390 10 MAROON)
   (draw-text "PRESS A to CYCLE THROUGH ANIMATIONS" 10 410 10 DARKGRAY)
   (draw-text "PRESS M to toggle MESH DRAWING" 10 430 10 DARKGRAY)
   (draw-text "(c) CesiumMan model by KhronosGroup" 590 430 10 GRAY)))
