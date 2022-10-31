(import (raylib raylib))

(define width 800)
(define height 450)

(init-window width height
             "raylib [core] example - 3d camera free")

(set-target-fps 60)

(do ([scissor-area
      (make-rectangle 0.0 0.0 300.0 300.0)
      (make-rectangle scissor-area s-x s-y 300.0 300.0)]
     [s-x 0.0 (- (get-mouse-x) 150.0)]
     [s-y 0.0 (- (get-mouse-y) 150.0)]
     [s-w 300]
     [s-h 300]
     [scissor-mode #t (if (is-key-pressed KEY_S)
                          (not scissor-mode)
                          scissor-mode)])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (when scissor-mode
     (begin-scissor-mode (int s-x) (int s-y) s-w s-h))
   (draw-rectangle
    0 0 (get-screen-width) (get-screen-height) RED)
   (draw-text "Move the mouse around to reveal this text!"
              190 200 20 LIGHTGRAY)
   (when scissor-mode
     (end-scissor-mode))
   (draw-rectangle-lines-ex scissor-area 1.0 BLACK)
   (draw-text "Press S to toggle scissor test"
              10 10 20 BLACK)))
