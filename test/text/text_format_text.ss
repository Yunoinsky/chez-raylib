(import (raylib))

(init-window 800 450 "raylib [text] example - text formatting")

(set-target-fps 60)

(do ([score 100020]
     [hiscore 200450]
     [lives 5])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text (format "Score: ~8,,,'0@s" score)
              200 80 20 RED)
   (draw-text (format "HiScore: ~8,,,'0@s" hiscore)
              200 120 20 GREEN)
   (draw-text (format "Lives: ~2,,,'0@s" lives)
              200 140 20 BLUE)
   (draw-text (format "Elapsed Time: ~5,2,,,'0f ms"
                      (* (get-frame-time) 1000))
              200 220 20 BLACK)))
