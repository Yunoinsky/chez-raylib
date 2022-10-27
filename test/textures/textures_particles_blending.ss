(import (raylib))

(define MAX_PARTICLES 200)

(define-record-type particle
  (fields (mutable x)
          (mutable y)
          color
          (mutable alpha)
          size
          (mutable rotation)
          (mutable active)))

(define mousetail
  (vector-map (lambda (x)
                (make-particle
                 0.0 0.0
                 (make-color (random 256)
                             (random 256)
                             (random 256)
                             255)
                 1.0 (random 1.5) (random 360.0) #f))
              (make-vector MAX_PARTICLES 0)))

(define screen-width 800)
(define screen-height 450)
(init-window screen-width screen-height
             "raylib [textures] example - particles blending")

(set-target-fps 60)

(define smoke (load-texture
               "./test/resources/spark_flame.png"))

(do ([gravity 3.0]
     [smoke-rect (make-rectangle
                  0.0 0.0
                  (float (texture-get smoke width))
                  (float (texture-get smoke height)))]
     [blending BLEND_ALPHA
               (if (is-key-pressed KEY_SPACE)
                   (if (= blending BLEND_ALPHA)
                       BLEND_ADDITIVE
                       BLEND_ALPHA)
                   blending)])
    ((window-should-close)
     (unload-texture smoke)
     (close-window))
  (do ([i 0 (1+ i)]
       [break #f])
      ((or (= i MAX_PARTICLES)
           break))
    (let ([part (vector-ref mousetail i)])
      (unless (particle-active part)
        (set! break #t)
        (particle-active-set! part #t)
        (particle-alpha-set! part 1.0)
        (particle-x-set! part (float (get-mouse-x)))
        (particle-y-set! part (float (get-mouse-y))))))
  (vector-for-each
   (lambda (part)
     (when (particle-active part)
       (particle-y-set! part (+ (/ gravity 2)
                                (particle-y part)))
       (particle-alpha-set! part
                            (- (particle-alpha part)
                               0.005))
       (unless (> (particle-alpha part) 0.0)
         (particle-active-set! part #f))
       (particle-rotation-set!
        part
        (+ 2.0
           (particle-rotation part)))))
   mousetail)
  
  (drawing-begin
   (clear-background DARKGRAY)
   (begin-blend-mode blending)
   (vector-for-each
    (lambda (part)
      (when (particle-active part)
        (draw-texture-pro
         smoke smoke-rect
         (make-rectangle (particle-x part)
                         (particle-y part)
                         (* (texture-get smoke width)
                            (particle-size part))
                         (* (texture-get smoke height)
                            (particle-size part)))
         (make-vector-2 (* 0.5
                           (texture-get smoke width)
                           (particle-size part))
                        (* 0.5
                           (texture-get smoke height)
                           (particle-size part)))
         (particle-rotation part)
         (fade (particle-color part)
               (particle-alpha part)))))
    mousetail)
   (end-blend-mode)
   (draw-text "PRESS SPACE to CHANGE BLENDING MODE"
              180 20 20 BLACK)
   
   (if (= blending BLEND_ALPHA)
       (draw-text "ALPHA BLENDING"
                  290 (- screen-height 40) 20 BLACK)
       (draw-text "ADDITIVE BLENDING"
                  280 (- screen-height 40) 20 RAYWHITE))))

