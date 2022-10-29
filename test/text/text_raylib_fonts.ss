(import (raylib raylib))

(define screen-width 800)
(define screen-height 450)

(init-window screen-width screen-height
             "raylib [text] example - raylib fonts")

(define font-names
  '(alagard pixelplay mecha setback romulus
            pixantiqua alpha_beta jupiter_crash))

(define fonts
  (map (lambda (s)
         (load-font
          (format "./test/resources/fonts/~s.png" s)))
       font-names))

(define messages
  '("ALAGARD FONT designed by Hewett Tsoi"
    "PIXELPLAY FONT designed by Aleksander Shevchuk"
    "MECHA FONT designed by Captain Falcon"
    "SETBACK FONT designed by Brian Kent (AEnigma)"
    "ROMULUS FONT designed by Hewett Tsoi"
    "PIXANTIQUA FONT designed by Gerhard Grossmann"
    "ALPHA_BETA FONT designed by Brian Kent (AEnigma)"
    "JUPITER_CRASH FONT designed by Brian Kent (AEnigma)"))

(define spacings
  '(2 4 8 4 3 4 4 1))

(define positions
  (map (lambda (fnt msg spc i)
         (let ([bs (font-get fnt base-size)])
           (make-vector-2 (/ (-
                              screen-width
                              (vector-2-get
                               (measure-text-ex
                                fnt msg
                                (* bs 2.0)
                                (float spc)) x)) 2.0)
                          (+ 60.0 bs (* 45.0 i)))))
       fonts messages spacings (iota (length spacings))))

(let ([pos3 (list-ref positions 3)]
      [pos4 (list-ref positions 4)]
      [pos7 (list-ref positions 7)])
  (let ([y3 (vector-2-get pos3 y)]
        [y4 (vector-2-get pos4 y)]
        [y7 (vector-2-get pos7 y)])
    (vector-2-set! pos3 y (+ 8 y3))
    (vector-2-set! pos4 y (+ 2 y4))
    (vector-2-set! pos7 y (- y7 8))))

(define colors
  (list MAROON ORANGE DARKGREEN DARKBLUE
        DARKPURPLE LIME GOLD RED))

(set-target-fps 60)

(do ()
    ((window-should-close)
     (for-each unload-font
               fonts)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (draw-text "free fonts included with raylib"
              250 20 20 DARKGRAY)
   (draw-line 220 50 590 50 DARKGRAY)
   (for-each
    (lambda (fnt msg pos spc clr)
      (draw-text-ex fnt msg pos
                    (* (font-get fnt base-size) 2.0)
                    (float spc)
                    clr))
    fonts messages positions spacings colors)))
