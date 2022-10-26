(import (raylib))

(init-window 800 450 "raylib [core] example - input mouse wheel")



(set-target-fps 60)

(do ([box-pos-y 185.0 (- box-pos-y
                         (* (get-mouse-wheel-move) 4))]
     [texture (load-texture "./raylib_logo.png")])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-texture texture
                 (- 400 (div
                         (ftype-ref
                          Texture
                          (width)
                          texture)
                         2))
                 (- 225 (div
                         (ftype-ref
                          Texture
                          (height)
                          texture)
                         2))
                 WHITE)))


