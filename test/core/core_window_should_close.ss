(import (raylib))

(define width 800)
(define height 450)

(init-window width height
             "raylib [core] example - window should close")

(set-target-fps 60)

(set-exit-key KEY_NULL)

(do ([exit-window-requested
      #f
      (and (or (window-should-close)
               (is-key-pressed KEY_ESCAPE)
               exit-window-requested)
           (not (is-key-pressed KEY_N)))]
     [exit-window
      #f
      (and exit-window-requested
           (is-key-pressed KEY_Y))])
    (exit-window
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (if exit-window-requested
       (begin
         (draw-rectangle 0 100 width 200 BLACK)
         (draw-text
          "Are you sure you want to exit program? [Y/N]"
          40 180 30 WHITE))
       (draw-text
        "Try to close the window to get confirmation message!"
        120 200 20 LIGHTGRAY))))

