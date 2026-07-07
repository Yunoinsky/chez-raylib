(import (raylib raylib (0 3)))

(init-window 800 450 "raylib [audio] example - sound loading and playing")

(init-audio-device)

(define fx-wav (load-sound "./test/resources/sound.wav"))
(define fx-ogg (load-sound "./test/resources/target.ogg"))

(set-sound-volume fx-wav 0.2)

(set-target-fps 60)

(do ()
    ((window-should-close)
     (stop-sound)
     (unload-sound fx-wav)
     (unload-sound fx-ogg)
     (close-audio-device))
  (when (is-key-pressed KEY_SPACE)
    (play-sound fx-wav))
  (when (is-key-pressed KEY_ENTER)
    (play-sound fx-ogg))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "MULTICHANNEL SOUND PLAYING" 20 20 20 GRAY)
   (draw-text "Press ENTER to play the ogg sound!" 200 120 20 LIGHTGRAY)
   (draw-text "Press SPACE to play the wav sound!" 200 180 20 LIGHTGRAY)
   (draw-text
    (format "CONCURRENT SOUNDS PLAYING: ~s"
            (and (is-sound-playing fx-wav) (is-sound-playing fx-ogg)))
    220 280 20 RED)))
