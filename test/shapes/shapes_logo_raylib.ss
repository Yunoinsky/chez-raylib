(import (raylib))

(define width 1600)
(define height 900)

(init-window
 width height
 "raylib [shapes] example - raylib logo using shapes")

(set-target-fps 60)

(do ()
    ((window-should-close) (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-rectangle (- (div width 2) 256)
                   (- (div height 2) 256)
                   512 512 BLACK)
   (draw-rectangle (- (div width 2) 224)
                   (- (div height 2) 224)
                   448 448 RAYWHITE)
   (draw-text "raylib"
              (- (div width 2) 88)
              (+ (div height 2) 96)
              100 BLACK)
   (draw-text "this is NOT a texture!"
              700 740 20 GRAY)))
