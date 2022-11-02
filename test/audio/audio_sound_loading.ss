(import (raylib raylib))

(init-window 800 450 "raylib [audio] example - sound loading and playing")

(init-audio-device)

(define fx-wav (load-sound "./test/resources/sound.wav"))
(define fx-ogg (load-sound "./test/resources/target.ogg"))

(set-target-fps 60)

(do ()
    ((window-should-close)
     (unload-sound fx-wav)
     (unload-sound fx-ogg)
     (close-audio-device))
  (when (is-key-pressed KEY_SPACE)
    (play-sound fx-wav))
  (when (is-key-pressed KEY_ENTER)
    (play-sound fx-ogg))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "Press SPACE to PLAY the WAV sound!" 200 180 20 LIGHTGRAY)
   (draw-text "Press ENTER to PLAY the OGG sound!" 200 220 20 LIGHTGRAY)))

