(import (raylib raylib))
(set-config-flags FLAG_MSAA_4X_HINT)
(init-window 800 450 "raylib [core] example - gamepad input")

(define tex-ps3 (load-texture "./test/resources/ps3.png"))
(define tex-xbox (load-texture "./test/resources/xbox.png"))

(do ()
    ((window-should-close) (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (if (is-gamepad-available 0)
       (let ([gp-name (get-gamepad-name 0)])
         (draw-text (format "GP1: ~s" gp-name)
                    10 10 10 BLACK)
         (case gp-name
           [("Xbox 360 Controller"
             "Microsoft X-Box 360 pad"
             "Xbox Controller"
             "Wireless Xbox Controller")
            (draw-texture tex-xbox 0 0 DARKGRAY)

            (let ([draw-key-circle
                   (lambda (k)
                     (when (is-gamepad-button-down 0 (car k))
                       (apply draw-circle (cdr k))))]
                  [draw-key-rect
                   (lambda (k)
                     (when (is-gamepad-button-down 0 (car k))
                       (apply draw-rectangle (cdr k))))])
              (for-each
               draw-key-circle
               `((,GAMEPAD_BUTTON_MIDDLE 394 89 19.0 ,RED)
                 (,GAMEPAD_BUTTON_MIDDLE_RIGHT 436 150 9.0 ,RED)
                 (,GAMEPAD_BUTTON_MIDDLE_LEFT 352 150 9.0 ,RED)
                 (,GAMEPAD_BUTTON_RIGHT_FACE_LEFT 501 151 15.0 ,BLUE)
                 (,GAMEPAD_BUTTON_RIGHT_FACE_DOWN 536 187 15.0 ,LIME)
                 (,GAMEPAD_BUTTON_RIGHT_FACE_RIGHT 572 151 15.0 ,MAROON)
                 (,GAMEPAD_BUTTON_RIGHT_FACE_UP 536 115 15.0 ,GOLD)))

              (draw-rectangle 317 202 19 71 BLACK)
              (draw-rectangle 293 228 69 19 BLACK)
              
              (for-each
               draw-key-rect
               `((,GAMEPAD_BUTTON_LEFT_FACE_UP 317 202 19 26 ,RED)
                 (,GAMEPAD_BUTTON_LEFT_FACE_DOWN 317 247 19 26 ,RED)
                 (,GAMEPAD_BUTTON_LEFT_FACE_LEFT 292 228 25 19 ,RED)
                 (,GAMEPAD_BUTTON_LEFT_FACE_RIGHT 336 228 26 19 ,RED)))
              (for-each
               draw-key-circle
               `((,GAMEPAD_BUTTON_LEFT_TRIGGER_1 259 61 20.0 ,RED)
                 (,GAMEPAD_BUTTON_RIGHT_TRIGGER_1 536 61 20.0 ,RED))))

            (draw-circle 259 152 39.0 BLACK)
            (draw-circle 259 152 34.0 LIGHTGRAY)
            (draw-circle (+ 259 (int (* 20 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_LEFT_X))))
                         (+ 152 (int (* 20 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_LEFT_Y))))
                         25.0 BLACK)

            (draw-circle 461 237 38.0 BLACK)
            (draw-circle 461 237 33.0 LIGHTGRAY)
            (draw-circle (+ 461 (int (* 20 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_RIGHT_X))))
                         (+ 237 (int (* 20 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_RIGHT_Y))))
                         25.0 BLACK)
            (draw-rectangle 170 30 15 70 GRAY)
            (draw-rectangle 604 30 15 70 GRAY)
            (draw-rectangle 170 30 15 (int (* 70 (/ (+ 1 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_LEFT_TRIGGER))
                                                    2))) RED)
            (draw-rectangle 604 30 15 (int (* 70 (/ (+ 1 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_RIGHT_TRIGGER))
                                                    2))) RED)]
           ["PLAYSTATION(R)3 Controller"
            (draw-texture tex-ps3 0 0 DARKGRAY)

            (let ([draw-key-circle
                   (lambda (k)
                     (when (is-gamepad-button-down 0 (car k))
                       (apply draw-circle (cdr k))))]
                  [draw-key-rect
                   (lambda (k)
                     (when (is-gamepad-button-down 0 (car k))
                       (apply draw-rectangle (cdr k))))])
              (for-each
               draw-key-circle
               `((,GAMEPAD_BUTTON_MIDDLE 396 222 13.0 ,RED)
                 (,GAMEPAD_BUTTON_RIGHT_FACE_UP 557 144 13.0 ,LIME)
                 (,GAMEPAD_BUTTON_RIGHT_FACE_RIGHT 586 173 13.0 ,RED)
                 (,GAMEPAD_BUTTON_RIGHT_FACE_DOWN 557 203 13.0 ,VIOLET)
                 (,GAMEPAD_BUTTON_RIGHT_FACE_LEFT 527 173 13.0 ,PINK)
                 (,GAMEPAD_BUTTON_LEFT_TRIGGER_1 239 82 20 ,RED)
                 (,GAMEPAD_BUTTON_LEFT_TRIGGER_2 557 82 20 ,RED)))

              (draw-key-rect GAMEPAD_BUTTON_MIDDLE_LEFT
                             328 170 32 13 RED)
              (when (is-gamepad-button-down
                     0 GAMEPAD_BUTTON_MIDDLE_RIGHT)
                (draw-triangle (make-vector-2 436.0 168.0)
                               (make-vector-2 436.0 185.0)
                               (make-vector-2 464.0 177.0) RED))
              (draw-rectangle 225 132 24 84 BLACK)
              (draw-rectangle 195 161 84 25 BLACK)
              (for-each
               draw-key-rect
               `((,GAMEPAD_BUTTON_LEFT_FACE_UP 255 132 24 30 ,RED)
                 (,GAMEPAD_BUTTON_LEFT_FACE_DOWN 225 186 24 30 ,RED)
                 (,GAMEPAD_BUTTON_LEFT_FACE_LEFT 195 161 30 25 ,RED)
                 (,GAMEPAD_BUTTON_LEFT_FACE_RIGHT 249 161 30 25 ,RED)))

              (draw-circle 319 255 35.0 BLACK)
              (draw-circle 319 255 31.0 LIGHTGRAY)
              (draw-circle (+ 319 (int (* 20 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_LEFT_X))))
                           (+ 255 (int (* 20 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_LEFT_Y))))
                           25.0 BLACK)
              (draw-circle 475 255 35.0 BLACK)
              (draw-circle 475 255 31.0 LIGHTGRAY)
              (draw-circle (+ 475 (int (* 20 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_RIGHT_X))))
                           (+ 255 (int (* 20 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_RIGHT_Y))))
                           25.0 BLACK)
              (draw-rectangle 169 48 15 70 GRAY)
              (draw-rectangle 611 48 15 70 GRAY)
              (draw-rectangle 169 48 15 (int (* 70 (/ (+ 1 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_LEFT_TRIGGER))
                                                      2))) RED)
              (draw-rectangle 611 48 15 (int (* 70 (/ (+ 1 (get-gamepad-axis-movement 0 GAMEPAD_AXIS_RIGHT_TRIGGER))
                                                      2))) RED))]
           [else (draw-text "- GENERIC GAMEPAD -" 280 180 20 GRAY)])
         (draw-text (format "DETECTED AXIS [~s]" (get-gamepad-axis-count 0)) 10 50 10 MAROON)
         (for-each
          (lambda (i)
            (draw-text (format "AXIS ~s: ~,2f" i (get-gamepad-axis-movement 0 i))
                       20 (+ 70 (* 20 i)) 10 DARKGRAY))
          (iota (get-gamepad-axis-count 0)))

         (if (= (get-gamepad-button-pressed) -1)
             (draw-text "DETECTED BUTTON NONE"
                        10 430 10 RED)
             (draw-text (format "DETECTED BUTTON: ~s" (get-gamepad-button-pressed))
                        10 430 10 RED)))
       (begin
         (draw-text "GP1: NOT DETECTED"
                    10 10 10 GRAY)
         (draw-texture tex-xbox 0 0 LIGHTGRAY)))))

