(import (raylib))

(init-window 800 450 "raylib [core] example - input mouse wheel")

(set-target-fps 60)

(hide-cursor)

(do ([box-pos-y 185 (- box-pos-y
                       (* (get-mouse-wheel-move) 4))])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-rectangle 360 (int box-pos-y) 80 80 MAROON)
   (draw-text "Use mouse wheel to move the cube up and down!"
              10 10 20 DARKGRAY)
   (draw-text (format "Box position Y: ~3,,,'0@s"
                      (int box-pos-y))
              10 40 20 LIGHTGRAY)))
