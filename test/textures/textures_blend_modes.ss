(import (raylib))
(define screen-width 800)
(define screen-height 450)
(init-window screen-width screen-height "raylib [textures] example - blend modes")

(do ([bg-tex (load-texture "./test/resources/cyberpunk_street_background.png")]
     [fg-tex (load-texture "./test/resources/cyberpunk_street_foreground.png")]
     [blend-mode 0 (if (is-key-pressed KEY_SPACE)
                       (mod (1+ blend-mode) 4)
                       blend-mode)])
    ((window-should-close)
     (unload-texture bg-tex)
     (unload-texture fg-tex)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-texture bg-tex
                 (div (- screen-width (texture-get bg-tex width)) 2)
                 (div (- screen-height (texture-get bg-tex height)) 2)
                 WHITE)
   (blend-mode-begin
    blend-mode
    (draw-texture fg-tex
                  (div (- screen-width (texture-get fg-tex width)) 2)
                  (div (- screen-height (texture-get fg-tex height)) 2)
                  WHITE))

   (draw-text (format "Current: ~a" 
                      (case blend-mode
                        [0 'BLEND_ALPHA]
                        [1 'BLEND_ADDITIVE]
                        [2 'BLEND_MULTIPLIED]
                        [3 'BLEND_ADD_COLORS]))
              (- (div screen-width 2) 60)
              370
              10
              GRAY)
   (draw-text "(c) Cyberpunk Street Environment by Luis Zuno (@ansimuz)"
              470 430 10 GRAY)))
