(import (raylib))

(define width  800)
(define height 450)
(init-window width height "raylib [core] example - keyboard input")
(set-target-fps 60)
(do ([x (/ width 2)
        (cond
         [(is-key-down KEY_D) (+ x 2)]
         [(is-key-down KEY_A) (- x 2)]
         [else x])]
     [y (/ height 2)
        (cond
         [(is-key-down KEY_W) (- y 2)]
         [(is-key-down KEY_S) (+ y 2)]
         [else y])])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "move the ball with arrow keys"
              10 10 20
              DARKGRAY)
   (draw-circle x y 50.0 MAROON)))


