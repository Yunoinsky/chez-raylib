(import (raylib raylib))

(define width 800)
(define height 450)

(init-window width height
             "raylib [core] example -generate random values")

(set-target-fps 60)

(do ([rand-value
      (- (random 14) 8)
      (if (odd? (div frames-counter 120))
          (- (random 14) 8)
          rand-value)]
     [frames-counter
      0
      (if (odd? (div frames-counter 120))
          0
          (1+ frames-counter))])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text
    "Every 2 seconds a new random value is generated:"
    130 100 20 MAROON)
   (draw-text
    (format "~2,,,@s" rand-value) 360 180 80 LIGHTGRAY)))

