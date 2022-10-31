(import (raylib raylib))


(init-window 800 450 "raylib [texture] example - raylib logo texture")

(set-target-fps 60)

(do ([box-pos-y 185.0 (- box-pos-y
                         (* (get-mouse-wheel-move) 4))]
     [texture (load-texture "./test/resources/raylib_logo.png")])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-texture texture
                 (- 400 (/ (texture-get texture width) 2))
                 (- 225 (/ (texture-get texture height) 2))
                 WHITE)))
