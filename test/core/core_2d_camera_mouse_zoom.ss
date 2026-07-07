(import (raylib raylib (0 3)))
(import (raylib raymath))
(import (raylib rlgl (0 3)))
(import (chez-raylib matrix))

(init-window 800 450 "raylib [core] example - 2d camera mouse zoom")

(define camera
  (let ([c (make-camera-2d 0.0 0.0 0.0 1.0)])
    (vector-2-set! (camera-2d-ref& c offset) x 0.0)
    (vector-2-set! (camera-2d-ref& c offset) y 0.0)
    (vector-2-set! (camera-2d-ref& c target) x 0.0)
    (vector-2-set! (camera-2d-ref& c target) y 0.0)
    c))

(set-target-fps 60)

(do ([zoom-increment 0.125])
    ((window-should-close)
     (close-window))
  (let ([target (camera-2d-ref& camera target)]
        [offset (camera-2d-ref& camera offset)]
        [wheel (get-mouse-wheel-move)]
        [zoom (camera-2d-get camera zoom)])
    (when (is-mouse-button-down MOUSE_BUTTON_RIGHT)
      (vector->vector-2
       (vector-add
        (vector-scale 
         (vector-2->vector (get-mouse-delta))
         (/ -1.0 zoom))
        (vector-2->vector target))
       target))
    (unless (= wheel 0)
      (vector->vector-2
       (vector-2->vector (get-screen-to-world-2d (get-mouse-position) camera))
       target)
      (vector-2-set! offset y 0.0)
      (camera-2d-set!
       camera zoom
       (max (+ zoom (* wheel zoom-increment)) zoom-increment)))
    (drawing-begin
     (clear-background BLACK)
     (mode-2d-begin
      camera
      (rl-load-identity)
      (rl-translatef 0.0 (* 25.0 50.0) 0.0)
      (rl-rotatef 90.0 1.0 0.0 0.0)
      (draw-grid 100 50.0))
     (draw-circle 100 100 50.0 YELLOW))
    (draw-text "Mouse right button drag to move, mouse wheel to zoom" 10 390 10 LIGHTGRAY))
)
