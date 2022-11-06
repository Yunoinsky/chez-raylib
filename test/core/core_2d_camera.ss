(import (raylib raylib))

(define MAX_BUILDINGS 100)
(define screen-width 800)
(define screen-height 450)

(init-window screen-width screen-height "raylib [core] example - 2d camera")

(define-values (_ bl cl)
  (apply
   values
   (fold-right
    (lambda (i sp-bl-cl)
      (let-values 
          ([(sp bl cl) (apply values sp-bl-cl)])
        (let ([b-w (float (get-random-value 50 200))]
              [b-h (float (get-random-value 100 800))])
          (list (+ sp b-w)
                (cons
                 (list (- sp 6000.0)
                       (- screen-height b-h 130.0)
                       b-w b-h) bl)
                (cons
                 (list (get-random-value 200 240)
                       (get-random-value 200 240)
                       (get-random-value 200 250) 255) cl)))))
    '(0.0 () ()) (iota MAX_BUILDINGS))))

(define build-colors (make-array cl Color make-color))
(define buildings (make-array bl Rectangle make-rectangle))

(define camera
  (make-camera2d
   `(,(/ screen-width 2.0) ,(/ screen-height 2.0))
   '(0.0 0.0)
   0.0 1.0))

(ftype-pointer->sexpr camera)

(set-target-fps 60)

(camera-2d-ref& camera target)

(do ([player-x 400 (cond
                    [(is-key-down KEY_RIGHT) (+ player-x 2)]
                    [(is-key-down KEY_LEFT) (- player-x 2)]
                    [else player-x])]
     [player-y 280])
    ((window-should-close)
     (close-window))
  (make-vector-2 (camera-2d-ref& camera target)
                 (+ 20.0 player-x) (+ 20.0 player-y))

  (camera-2d-set! camera rotation
                  (min
                   (max
                    (+ (camera-2d-get camera rotation)
                       (cond
                        [(is-key-down KEY_A) -1.0]
                        [(is-key-down KEY_S) 1.0]
                        [else 0])) -40.0) 40.0))

  (camera-2d-set! camera zoom
                  (min
                   (max
                    (+ (camera-2d-get camera zoom)
                       (* 0.05 (get-mouse-wheel-move)))
                    0.1) 3.0))

  (when (is-key-pressed KEY_R)
    (camera-2d-set! camera zoom 1.0)
    (camera-2d-set! camera rotation 0.0))

  (drawing-begin
   (clear-background RAYWHITE)
   (mode-2d-begin
    camera
    (draw-rectangle -6000 320 13000 8000 DARKGRAY)
    (vector-for-each
     (lambda (building color)
       (draw-rectangle-rec building color))
     buildings build-colors)
    (draw-rectangle player-x player-y 40 40 RED)
    (draw-line
     (int (camera-2d-get camera (target x)))
     (* screen-height -10)
     (int (camera-2d-get camera (target x)))
     (* screen-height 10) GREEN)
    (draw-line
     (* screen-width -10)
     (int (camera-2d-get camera (target y)))
     (* screen-width 10)
     (int (camera-2d-get camera (target y))) GREEN))
   (draw-text "SCREEN AREA" 640 10 20 RED)
   (draw-rectangle 0 0 screen-width 5 RED)
   (draw-rectangle 0 5 5 (- screen-height 10) RED)
   (draw-rectangle (- screen-width 5) 5
                   5 (- screen-height 10) RED)
   (draw-rectangle 0 (- screen-height 5) screen-width 5 RED)

   (draw-rectangle 10 10 250 113 (fade SKYBLUE 0.5))
   (draw-rectangle-lines 10 10 250 113 BLUE)

   (draw-text "Free 2d camera controls:"
              20 20 10 BLACK)
   (draw-text "- Right/Left to move Offset"
              40 40 10 DARKGRAY)
   (draw-text "- Mouse Wheel to Zoom in-out"
              40 60 10 DARKGRAY)
   (draw-text "- A / S to Rotate"
              40 80 10 DARKGRAY)
   (draw-text "- R to reset Zoom and Rotation"
              40 100 10 DARKGRAY)))
