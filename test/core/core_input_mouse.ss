(import (raylib))

(init-window 800 450 "raylib [core] example - mouse input")
(set-target-fps 60)
(hide-cursor)

(do ([ball-pos (get-mouse-position)
               (get-mouse-position)]
     [ball-color DARKBLUE 
                 (cond
                  [(is-mouse-button-pressed
                    MOUSE_BUTTON_LEFT) MAROON]
                  [(is-mouse-button-pressed
                    MOUSE_BUTTON_RIGHT) DARKBLUE]
                  [(is-mouse-button-pressed
                    MOUSE_BUTTON_MIDDLE) LIME]
                  [else ball-color])])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-circle-v ball-pos 50.0 ball-color)  
   (draw-text "move ball with mouse and \
               click mouse button to change color"
              10 10 20
              DARKGRAY)))

