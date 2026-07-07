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
      (let* ([new-zoom (max (+ zoom (* wheel zoom-increment)) zoom-increment)]
             [world (get-screen-to-world-2d (get-mouse-position) camera)]
             [wx (vector-2-get world x)]
             [wy (vector-2-get world y)]
             [ox (vector-2-get offset x)]
             [oy (vector-2-get offset y)]
             [mx (vector-2-get (get-mouse-position) x)]
             [my (vector-2-get (get-mouse-position) y)])
        ;; Keep the point under mouse fixed at screen after zoom change
        (vector-2-set! target x (- wx (/ (- mx ox) new-zoom 1.0)))
        (vector-2-set! target y (- wy (/ (- my oy) new-zoom 1.0)))
        (camera-2d-set! camera zoom new-zoom)))
    (drawing-begin
     (clear-background BLACK)
     (mode-2d-begin
      camera
      ;; 3D grid rotated to XY plane (matches raylib C example)
      (rl-push-matrix)
      (rl-translatef 0.0 (* 25.0 50.0) 0.0)
      (rl-rotatef 90.0 1.0 0.0 0.0)
      (draw-grid 100 50.0)
      (rl-pop-matrix)
      ;; Reference circle at screen center in camera space
      (draw-circle 400 225 50.0 YELLOW))
     (draw-text "Mouse right button drag to move, mouse wheel to zoom" 10 390 10 LIGHTGRAY))))
