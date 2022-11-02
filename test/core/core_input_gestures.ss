(import (raylib raylib))

(define-syntax offer!
  (syntax-rules ()
    [(_ l a) (set! l (cons a l))]))

(define MAX_GESTURE_STRINGS 20)

(define screen-width 800)
(define screen-height 450)
(init-window screen-width screen-height "raylib [core] example - input gestures")

(set-target-fps 60)

(hide-cursor)

(do ([current-gesture (get-gesture-detected) (get-gesture-detected)]
     [last-gesture GESTURE_NONE current-gesture]
     [touch-pos (get-touch-position 0) (get-touch-position touch-pos 0)]
     [touch-area (make-rectangle 220.0 10.0 (- screen-width 230.0) (- screen-height 20.0))]
     [gestures '()])
    ((window-should-close)
     (close-window))
  (when (and (check-collision-point-rec touch-pos touch-area)
             (not (= current-gesture GESTURE_NONE))
             (not (= current-gesture last-gesture)))
    (let ([g-str (assq
                  current-gesture
                  `((,GESTURE_TAP . "GESTURE TAP")
                    (,GESTURE_DOUBLETAP . "GESTURE DOUBLETAP")
                    (,GESTURE_HOLD . "GESTURE HOLD")
                    (,GESTURE_DRAG . "GESTURE DRAG")
                    (,GESTURE_SWIPE_RIGHT . "GESTURE SWIPE RIGHT")
                    (,GESTURE_SWIPE_LEFT . "GESTURE SWIPE LEFT")
                    (,GESTURE_SWIPE_UP . "GESTURE SWIPE UP")
                    (,GESTURE_SWIPE_DOWN . "GESTURE SWIPE DOWN")
                    (,GESTURE_PINCH_IN . "GESTURE PINCH IN")
                    (,GESTURE_PINCH_OUT . "GESTURE PINCH OUT")))])
      (when g-str
        (offer! gestures (cdr g-str)))
      (unless (<= (length gestures) MAX_GESTURE_STRINGS)
        (set-cdr! (list-tail gestures (- MAX_GESTURE_STRINGS 1)) '()))))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-rectangle-rec touch-area GRAY)
   (draw-rectangle 225 15 (- screen-width 240) (- screen-height 30) RAYWHITE)
   (draw-text "GESTURES TEST AREA"
              (- screen-width 270) (- screen-height 40)
              20 (fade GRAY 0.5))
   (for-each
    (lambda (ind g-str)
        (draw-rectangle 10 (+ 30 (* 20 ind)) 200 20
                        (fade LIGHTGRAY
                              (if (even? ind) 0.5 0.3)))
        (draw-text g-str 35 (+ 36 (* 20 ind)) 10
                   (if (= 0 ind)
                       MAROON DARKGRAY)))
    (enumerate gestures)
    gestures)
   (draw-rectangle-lines 10 29 200 (- screen-height 50) GRAY)
   (draw-text "DETECTED GESTURES" 50 15 10 GRAY)
   (unless (= current-gesture GESTURE_NONE)
     (draw-circle-v touch-pos 30.0 MAROON))))

