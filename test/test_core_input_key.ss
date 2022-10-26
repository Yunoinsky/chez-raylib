(import (raylib))

(init-window 800 450 "raylib [core] example - basic window")
(set-target-fps 60)
(do ([x 400 (cond
             [(is-key-down KEY_D) (+ x 2)]
             [(is-key-down KEY_A) (- x 2)]
             [else x])]
     [y 225 (cond
             [(is-key-down KEY_W) (- y 2)]
             [(is-key-down KEY_S) (+ y 2)]
             [else y])])
    ((window-should-close)
     (close-window))
  (begin-drawing)
  (clear-background RAYWHITE)
  (draw-text "move the ball with arrow keys"
             10 10 20
             DARKGRAY)
  (draw-circle x y 50.0 MAROON)
  (end-drawing))

