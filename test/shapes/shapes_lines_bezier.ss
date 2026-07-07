(import (chezscheme))
(import (raylib raylib (0 3)))

(define width 900)
(define height 450)

(set-config-flags FLAG_MSAA_4X_HINT)
(init-window width height "raylib [shapes] example - cubic-bezier lines")

(do ([start (make-vector-2 0.0 0.0)]
     [end (make-vector-2 (float width) (float height))])
    ((window-should-close)
     (close-window))
  (cond
   [(is-mouse-button-down MOUSE_BUTTON_LEFT)
    (let ([p (get-mouse-position)])
      (vector-2-set! start x (vector-2-get p x))
      (vector-2-set! start y (vector-2-get p y)))]
   [(is-mouse-button-down MOUSE_BUTTON_RIGHT)
    (let ([p (get-mouse-position)])
      (vector-2-set! end x (vector-2-get p x))
      (vector-2-set! end y (vector-2-get p y)))])
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "USE MOUSE LEFT-RIGHT CLICK to DEFINE LINE START and END POINTS"
              15 20 20 GRAY)
   (draw-line-bezier start end 2.0 RED)))

