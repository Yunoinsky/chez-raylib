(import (raylib raylib))
(import (raylib raymath))

(init-window 800 450 "raylib [models] example - magicavoxel loading")

(define vox-fns
  '("./test/resources/models/vox/chr_knight.vox"
    "./test/resources/models/vox/chr_sword.vox"
    "./test/resources/models/vox/monu9.vox"))

(define camera
  (make-camera3d '(10.0 10.0 10.0)
                 '( 0.0  0.0  0.0)
                 '( 0.0  1.0  0.0)
                 45.0 CAMERA_PERSPECTIVE))
(define models
  (map
   (lambda (fn)
     (let* ([t0 (current-time)]
            [model (load-model fn)]
            [dt (/ (time-nanosecond (time-difference (current-time) t0)) 1e6)]
            [bb (get-model-bounding-box model)])
       (trace-log LOG_WARNING "[~s] File loaded in ~,3f ms" fn dt)
       (let ([min-x (bounding-box-get bb (min x))]
             [min-z (bounding-box-get bb (min z))]
             [max-x (bounding-box-get bb (max y))]
             [max-z (bounding-box-get bb (max z))])
         (matrix-translate (model-ref& model transform)
                           (/ (+ max-x min-x) -2.0)
                           0.0
                           (/ (+ max-z min-z) -2.0)))
       model))
   vox-fns))

(set-camera-mode camera CAMERA_ORBITAL)
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
  (update-camera camera)

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
