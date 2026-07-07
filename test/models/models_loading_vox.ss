(import (raylib raylib (0 3)))


(init-window 800 450 "raylib [models] example - magicavoxel loading")

(define vox-fns
  '("./test/resources/models/vox/chr_knight.vox"
    "./test/resources/models/vox/chr_sword.vox"
    "./test/resources/models/vox/monu9.vox"))

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
(define models
  (map
   (lambda (fn) (load-model fn))
   vox-fns))

(update-camera camera CAMERA_ORBITAL)
(set-target-fps 60)

(do ([current-model 0 (cond
                       [(or (is-mouse-button-pressed MOUSE_BUTTON_LEFT)
                            (is-key-pressed KEY_D))
                        (mod (1+ current-model) 3)]
                       [(is-key-pressed KEY_A)
                        (mod (-1+ current-model) 3)]
                       [else current-model])])
    ((window-should-close)
     (for-each unload-model models)
     (close-window))
  (update-camera camera CAMERA_ORBITAL)

  (drawing-begin
   (clear-background RAYWHITE)

   (mode-3d-begin
    camera
    (draw-model (list-ref models current-model) (make-vector-3 0.0 0.0 0.0) 1.0 WHITE)
    (draw-grid 10 1.0))
   
   (draw-rectangle 10 400 310 30 (fade SKYBLUE 0.5))
   (draw-rectangle-lines 10 400 310 30 (fade DARKBLUE 0.5))
   (draw-text "MOUSE LEFT BUTTON to CYCLE VOX MODELS" 40 410 10 BLUE)
   (draw-text (format "File: ~s" (get-file-name (list-ref vox-fns current-model))) 10 10 20 GRAY)))
