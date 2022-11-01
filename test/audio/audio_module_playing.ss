(import (raylib raylib))

(define MAX_CIRCLES 64)

(define-record-type circle-wave
  (fields (mutable x)
          (mutable y)
          (mutable radius)
          (mutable alpha)
          (mutable speed)
          (mutable color)))

(set-config-flags FLAG_MSAA_4X_HINT)

(init-window 800 450 "raylib [audio] example - module playing (streaming)")

(init-audio-device)

(define colors
  (vector ORANGE RED GOLD LIME BLUE
          VIOLET BROWN LIGHTGRAY PINK
          YELLOW GREEN SKYBLUE PURPLE BEIGE))

(define circles
  (vector-map
   (lambda (x)
     (let ([r (float (get-random-value 10 40))])
       (make-circle-wave
        (get-random-value (int r)
                          (int (- 800 r)))
        (get-random-value (int r)
                          (int (- 450 4)))
        r
        0.0
        (random 0.5)
        (vector-ref colors (random 14)))))
   (make-vector MAX_CIRCLES)))

(define music (load-music-stream "./test/resources/mini1111.xm"))

(music-set! music looping 0)
(play-music-stream music)

(set-target-fps 60)

(do ([pitch 1.0 (cond
                 [(is-key-down KEY_DOWN) (- pitch 0.01)]
                 [(is-key-down KEY_UP) (+ pitch 0.01)]
                 [else pitch])]
     [time-played 0.0 (* (/ (get-music-time-played music)
                            (get-music-time-length music))
                         760)]
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
  
  (set-music-pitch music pitch)

  (unless pause
    (vector-for-each
     (lambda (circle)
       (let* ([speed (circle-wave-speed circle)]
              [alpha (+ (circle-wave-alpha circle)
                        speed)]
              [radius (+ (circle-wave-radius circle)
                         (* speed 10.0))])
       (circle-wave-alpha-set!
        circle alpha)
       (circle-wave-radius-set!
        circle radius)
       (cond
        [(> alpha 1.0) (circle-wave-speed-set!
                        circle (- speed))]
        [(<= alpha 0.0)
         (let ([r (float (get-random-value 10 40))])
           (circle-wave-radius-set! circle r)
           (circle-wave-alpha-set! circle 0.0)
           (circle-wave-x-set!
            circle
            (get-random-value (int r)
                                     (int (- 800 r))))
           (circle-wave-y-set!
            circle
            (get-random-value (int r)
                              (int (- 450 4))))
           (circle-wave-color-set!
            circle (vector-ref colors (random 14)))
           (circle-wave-speed-set! circle
                                   (random 0.5)))])))
     circles))
  
  (drawing-begin
   (clear-background RAYWHITE)
   (vector-for-each
    (lambda (circle)
      (draw-circle (circle-wave-x circle)
                   (circle-wave-y circle)
                   (circle-wave-radius circle)
                   (fade (circle-wave-color circle)
                         (circle-wave-alpha circle))))
    circles)
   (draw-rectangle 20 (- 450 20 12) (- 800 40) 12 LIGHTGRAY)
   (draw-rectangle 20 (- 450 20 12) (int time-played)
                   12 MAROON)
   (draw-rectangle-lines 20 (- 450 20 12) (- 800 40)
                         12 GRAY)))
