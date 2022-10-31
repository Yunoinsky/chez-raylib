(import (raylib raylib))

(define width 1600)
(define height 900)

(init-window width height
             "raylib [shapes] example - basic shapes drawing")

(set-target-fps 60)

(do ([rotation 0.0 (+ rotation 0.2)]
     [circle-x (div width 5)]
     [rect-x-base (div width 2)]
     [poly-x-base (* (/ width 4.0) 3.0)])
    ((window-should-close) (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "some basic shapes available on raylib"
              40 40 40 DARKGRAY)
   (draw-circle circle-x 240 70.0 DARKBLUE)
   (draw-circle-gradient circle-x 440 120.0 GREEN SKYBLUE)
   (draw-circle-lines circle-x 680 160.0 DARKBLUE)

   (draw-rectangle (- rect-x-base 120) 200 240 120 RED)
   (draw-rectangle-gradient-h (- rect-x-base 180)
                              340 360 260 MAROON GOLD)
   (draw-rectangle-lines (- rect-x-base 80)
                         640 160 120 ORANGE)

   (draw-triangle (make-vector-2 poly-x-base 80.0)
                  (make-vector-2 (- poly-x-base 120.0) 300.0)
                  (make-vector-2 (+ poly-x-base 120.0) 300.0)
                  VIOLET)

   (draw-triangle-lines
    (make-vector-2 poly-x-base 160.0)
    (make-vector-2 (- poly-x-base 40.0) 460.0)
    (make-vector-2 (+ poly-x-base 40.0) 460.0) DARKBLUE)

   (draw-poly (make-vector-2 poly-x-base 660.0)
              6 160.0 rotation BROWN)
   (draw-poly-lines (make-vector-2 poly-x-base 660.0)
                    6 180.0 rotation BROWN)
   (draw-poly-lines-ex (make-vector-2 poly-x-base 660.0)
                       6 170.0 rotation 6.0 BEIGE)

   (draw-line 18 42 (- width 18) 42 BLACK)))
