(import (raylib raylib))

(init-window 800 450 "raylib [models] example - M3D model loading" )

(define camera
  (make-camera3d '(1.5 1.5 1.5)
                  '(0.0 0.4 0.0)
                  '(0.0 1.0 0.0)
                  45.0 CAMERA_PERSPECTIVE))

(define pos (make-vector-3 0.0 0.0 0.0))

(define model-fn  "./test/resources/models/m3d/CesiumMan.m3d")

(define model (load-model model-fn))

(define anims-count (make-ftype-pointer unsigned (foreign-alloc (ftype-sizeof unsigned))))
(define anims (load-model-animations model-fn anims-count))
(set! anims-count (ftype-ref unsigned () anims-count))
(set! anims (arr& anims-count Model-Animation anims))

(set-camera-mode camera CAMERA_FREE)
(set-target-fps 60)

(do ([draw-mesh #t (if (is-key-pressed KEY_M)
                       (not draw-mesh)
                       draw-mesh)]
     [draw-skeleton #t (if (is-key-pressed KEY_S)
                           (not draw-skeleton)
                           draw-skeleton)]
     [anim-playing #f]
     [anim-frame-counter 0]
     [anim-id 0])
    ((window-should-close)
     (unload-model-animations anims anims-count)
     (unload-model model)
     (close-window))

  (update-camera camera)
  
  (when (bool anims-count)
    (when (or (is-key-down KEY_SPACE)
              (is-key-pressed KEY_N))
      (let ([anim (vector-ref anims anim-id)])
        (set! anim-frame-counter (mod (1+ anim-frame-counter)
                                      (model-animation-get anim frame-count)))
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
    (when draw-skeleton
      (let ([bone-count (-1+ (model-get model bone-count))])
        (let-values ([(bones poses k)
                      (if (not (and anim-playing
                                    (bool anims-count)))
                          (values
                           (arr& bone-count
                                 Bone-Info
                                 (model-get model bones))
                           (arr& bone-count
                                 Transform
                                 (model-get model bind-pose))
                           0.04)
                          (let ([anim (vector-ref anims anim-id)])
                            (values
                             (arr& bone-count
                                   Bone-Info
                                   (model-animation-get anim bones))
                             (arr& bone-count
                                   Transform
                                   (arr-ind (model-animation-get anim frame-poses)
                                            (* Transform) anim-frame-counter))
                             0.05)))])
          (vector-for-each
           (lambda (bone pose)
             (draw-cube (transform-ref& pose translation)
                        k k k RED)
             (let ([parent (bone-info-get bone parent)])
               (unless (< parent 0)
                 (draw-line-3d (transform-ref& pose translation)
                               (transform-ref& (vector-ref poses parent) translation)
                               RED))))
           bones poses))))
    (draw-grid 10 1.0))
   
   (draw-text "PRESS SPACE to PLAY MODEL ANIMATION" 10 390 10 MAROON) 
   (draw-text "PRESS A to CYCLE THROUGH ANIMATIONS" 10 410 10 DARKGRAY) 
   (draw-text "PRESS M to toggle MESH, S to toggle SKELETON DRAWING" 10 430 10 DARKGRAY)
   (draw-text "(c) CesiumMan model by KhronosGroup" 590 430 10 GRAY)))
