(import (raylib raylib))

(init-window 800 450 "raylib [audio] example - music playing (streaming)")

(init-audio-device)

(define music (load-music-stream "./test/resources/country.mp3"))

(play-music-stream music)

(set-target-fps 30)

(do ([time-played 0.0 (let ([t (/ (get-music-time-played music)
                                  (get-music-time-length music))])
                        (if (> t 1.0) 1.0 t))]
     [pause #f])
    ((window-should-close)
     (unload-music-stream music)
     (close-audio-device)
     (close-window))

  (update-music-stream music)

  (when (is-key-pressed KEY_SPACE)
    (stop-music-stream music)
    (play-music-stream music))

  (when (is-key-pressed KEY_P)
    (set! pause (not pause))
    (if pause
        (pause-music-stream music)
        (resume-music-stream music)))
  
  (drawing-begin
   (clear-background RAYWHITE)

   (draw-text "MUSIC SHOULD BE PLAYING!" 255 150 20 LIGHTGRAY)
   (draw-rectangle 200 200 400 12 LIGHTGRAY)
   (draw-rectangle 200 200 (int (* 400 time-played))
                   12 MAROON)
   (draw-rectangle-lines 200 200 400 12 GRAY)
   (draw-text "PRESS SPACE TO RESTART MUSIC" 215 250 20 LIGHTGRAY)
   (draw-text "PRESS P TO PAUSE/RESUME MUSIC" 208 280 20 LIGHTGRAY)))
