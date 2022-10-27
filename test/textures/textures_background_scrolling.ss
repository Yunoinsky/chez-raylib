(import (raylib))

(init-window 800 450 "raylib [textures] example - background scrolling")

(set-target-fps 60)
(do ([background (load-texture "./test/resources/cyberpunk_street_background.png")]
     [midground (load-texture "./test/resources/cyberpunk_street_midground.png")]
     [foreground (load-texture "./test/resources/cyberpunk_street_foreground.png")]
     [bg (get-color #x052c46ff)]
     [scrolling-back 0.0 (- scrolling-back 0.1)]
     [scrolling-mid 0.0 (- scrolling-mid 0.5)]
     [scrolling-fore 0.0 (- scrolling-fore 1.0)])
    ((window-should-close)
     (unload-texture background)
     (unload-texture midground)
     (unload-texture foreground)
     (close-window))
  (unless (> scrolling-back (* (texture-get background width) 2))
    (set! scrolling-back 0.0))
  (unless (> scrolling-mid (* (texture-get midground width) 2))
    (set! scrolling-back 0.0))
  (unless (> scrolling-fore (* (texture-get foreground width) 2))
    (set! scrolling-back 0.0))

  (drawing-begin
   (clear-background bg)
   (draw-texture-ex background (make-vector-2 scrolling-back 20.0) 0.0 2.0 WHITE)
   (draw-texture-ex background
                    (make-vector-2 (+ (* (texture-get background width) 2)
                                      scrolling-back)
                                   20.0)
                    0.0 2.0 WHITE)
   (draw-texture-ex midground (make-vector-2 scrolling-mid 20.0) 0.0 2.0 WHITE)
   (draw-texture-ex midground
                    (make-vector-2 (+ (* (texture-get midground width) 2)
                                      scrolling-mid)
                                   20.0)
                    0.0 2.0 WHITE)

   (draw-texture-ex foreground (make-vector-2 scrolling-fore 20.0) 0.0 2.0 WHITE)
   (draw-texture-ex foreground
                    (make-vector-2 (+ (* (texture-get foreground width) 2)
                                      scrolling-fore)
                                   20.0)
                    0.0 2.0 WHITE)
   (draw-text "BACKGROUND SCROLLING & PARALLAX"
              10 10 20 RED)
   (draw-text "(c) Cyberpunk Street Environment by Luis Zuno (@ansimuz)"
              470 430 10 RAYWHITE)))
