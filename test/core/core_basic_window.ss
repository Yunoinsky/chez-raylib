(import (raylib raylib))

(init-window 800 450 "raylib [core] example - basic window")
(set-target-fps 60)
(do ()
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "Congrats! You created your first window!"
              190
              200
              20
              LIGHTGRAY)))
