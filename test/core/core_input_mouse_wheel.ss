(import (raylib))

(define width 800)
(define height 450)

(init-window width height "raylib [core] example - input mouse wheel")

(set-target-fps 60)

(hide-cursor)

(do ([scroll-speed 4]
     [box-pos-y (- (/ height 2) 40)
                (- box-pos-y
                   (* (get-mouse-wheel-move) scroll-speed))])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-rectangle (- (/ width 2) 40)
                   (int box-pos-y) 80 80 MAROON)
   (draw-text "Use mouse wheel to move the cube up and down!"
              10 10 20 DARKGRAY)
   (draw-text (format "Box position Y: ~3,,,'0@s"
                      (int box-pos-y))
              10 40 20 LIGHTGRAY)))

