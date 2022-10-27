(import (raylib))

(define width 800)
(define height 450)

(init-window width height
             "raylib [core] example - basic screen manager")

(set-target-fps 60)

(do ([current-screen
      'logo
      (case current-screen
        ['logo (if (> frames-counter 120) 'title 'logo)]
        ['title (if (or (is-key-pressed KEY_ENTER)
                        (is-gesture-detected GESTURE_TAP))
                    'game-play
                    'title)]
        ['game-play (if (or (is-key-pressed KEY_ENTER)
                        (is-gesture-detected GESTURE_TAP))
                    'ending
                    'game-play)]
        ['ending (if (or (is-key-pressed KEY_ENTER)
                        (is-gesture-detected GESTURE_TAP))
                    'title
                    'ending)])]

     [frames-counter 0 (if (eq? current-screen 'logo)
                           (1+ frames-counter)
                           frames-counter)])
    ((window-should-close)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (case current-screen
     ['logo
      (draw-text "LOGO SCREEN" 20 20 40 LIGHTGRAY)
      (draw-text "WAIT for 2 SECONDS..." 290 220 20 GRAY)]
     ['title
      (draw-rectangle 0 0 width height GREEN)
      (draw-text "TITLE SCREEN" 20 20 40 DARKGREEN)
      (draw-text
       "PRESS ENTER OR TAP TO JUMP TO GAMEPLAY SCREEN"
       120 220 20 DARKGREEN)]
     ['game-play
      (draw-rectangle 0 0 width height PURPLE)
      (draw-text "GAMEPLAY SCREEN" 20 20 40 MAROON)
      (draw-text
       "PRESS ENTER OR TAP TO JUMP TO ENDING SCREEN"
       130 220 20 MAROON)]
     ['ending
      (draw-rectangle 0 0 width height BLUE)
      (draw-text "ENDING SCREEN" 20 20 40 DARKBLUE)
      (draw-text
       "PRESS ENTER OR TAP TO JUMP TO TITLE SCREEN"
       120 220 20 DARKBLUE)])))
