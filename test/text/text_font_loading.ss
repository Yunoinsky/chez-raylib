(import (raylib raylib (0 3)))

(define screen-width 800)
(define screen-height 450)

(init-window screen-width screen-height "raylib [text] example - font loading")

(define msg "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHI\nJKLMNOPQRSTUVWXYZ[]^_`abcdefghijklmn\nopqrstuvwxyz{|}~¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓ\nÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷\nøùúûüýþÿ")

(define font-bm (load-font "./test/resources/fonts/pixantiqua.fnt"))

(define font-ttf (load-font-ex "./test/resources/fonts/pixantiqua.ttf" 32 (make-ftype-pointer int 0) 250))

(set-target-fps 60)

(do ([pos (make-vector-2 20.0 100.0)]
     [use-ttf #f (is-key-down KEY_SPACE)])
    ((window-should-close)
     (unload-font font-bm)
     (unload-font font-ttf)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "Hold SPACE to use TTF generated font"
              20 20 20 LIGHTGRAY)
   (if use-ttf
       (begin
         (draw-text-ex font-ttf msg pos (float (font-get font-ttf base-Size))
                       2.0 LIME)
         (draw-text "Using TTF font generated" 20 (- screen-height 30) 20 GRAY))
       (begin
         (draw-text-ex font-bm msg pos (float (font-get font-bm base-Size))
                       2.0 MAROON)
         (draw-text "Using BMFont (Angelcode) imported" 20 (- screen-height 30) 20 GRAY)))))
  
