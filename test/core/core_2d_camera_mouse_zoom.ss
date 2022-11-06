(import (raylib raylib))
(import (raylib raymath))
(import (matrix))

(init-window 800 450 "raylib [core] example - 2d camera mouse zoom")

(define camera
  (make-camera2d
   '(0.0 0.0)
   '(0.0 0.0)
   0.0 1.0))

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
      (get-screen-to-world-2d target (get-mouse-position) camera)
      (get-mouse-position offset)
      (camera-2d-set!
       camera zoom
       (max (+ zoom (* wheel zoom-increment)) zoom-increment)))
    (drawing-begin
     (clear-background BLACK)
     
     (mode-2d-begin
      camera
      
      ((foreign-procedure "rlPushMatrix" () void))
      ((foreign-procedure "rlTranslatef" (float float float) void)
       0.0 (* 25.0 50.0) 0.0)
      ((foreign-procedure "rlRotatef" (float float float float) void)
       90.0 1.0 0.0 0.0)
      (draw-grid 100 50.0)
      ((foreign-procedure "rlPopMatrix" () void))
      
      (draw-circle 100 100 50.0 YELLOW))
     (draw-text "Mouse right button drag to move, mouse wheel to zoom" 10 10 20 WHITE))))
