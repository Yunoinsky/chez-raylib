(import (raylib))

(define width 800)
(define height 450)

(init-window width height "raylib [textures] example - texture to image")

(define image (load-image "./test/resources/raylib_logo.png"))
(define texture (load-texture-from-image image))
(unload-image image)

(set! image (load-image-from-texture texture))
(unload-texture texture)

(set! texture (load-texture-from-image image))
(unload-image image)

(do ()
    ((window-should-close)
     (unload-texture texture)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-texture texture (- (div width 2)
                    (div (texture-get texture width) 2))
                 (- (div height 2)
                    (div (texture-get texture height) 2))
                 WHITE)
   (draw-text "this IS a texture loaded from an image!"
              300 370 10 GRAY)))
