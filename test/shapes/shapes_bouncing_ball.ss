(import (raylib raylib))

(define width 1600)
(define height 900)

(init-window width height
             "raylib [shapes] example - bouncing ball")

(set-target-fps 60)

(do ([ball-radius 40.0]
     [ball-pos (cons (/ width 2.0)
                     (/ height 2.0))]
     [pause #f (if (is-key-pressed KEY_SPACE)
                   (not pause)
                   pause)]
     [frames-counter 0 (if pause
                           (1+ frames-counter)
                           frames-counter)]
     [ball-speed '(2.5 . 2.0)])
    ((window-should-close) (close-window))
  (unless pause
    (set-car! ball-pos (+ (car ball-pos)
                          (car ball-speed)))
    (set-cdr! ball-pos (+ (cdr ball-pos)
                          (cdr ball-speed)))
    (let ([x (car ball-pos)]
          [y (cdr ball-pos)])
      (when (or (>= x (- width ball-radius))
                (<= x ball-radius))
        (set-car! ball-speed (- (car ball-speed))))
      (when (or (>= y (- height ball-radius))
                (<= y ball-radius))
        (set-cdr! ball-speed (- (cdr ball-speed))))))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-circle (int (car ball-pos))
                (int (cdr ball-pos))
                ball-radius MAROON)
   (draw-text "PRESS SPACE to PAUSE BALL MOVEMENT"
              20 (- width 50) 40 LIGHTGRAY)
   (if (and pause
            (odd? (div frames-counter 30)))
       (draw-text "PAUSED" 700 400 60 GRAY))
   (draw-fps 20 20)))

