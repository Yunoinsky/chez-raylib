(import (raylib raylib))

(define screen-width 800)
(define screen-height 450)

(init-window screen-width screen-height
             "raylib [text] example - sprite font loading")

(define messages
  '("THIS IS A custom SPRITE FONT..."
    "...and this is ANOTHER CUSTOM font..."
    "...and a THIRD one! GREAT! :D"))

(define fnt-names
  '(mecha alagard jupiter_crash))

(define fonts
  (map (lambda (s)
         (load-font
          (format "./test/resources/fonts/custom_~s.png" s)))
       fnt-names))

(define spacings
  '(-3.0 -2.0 2.0))

(define y-offset
  '(-80.0 -40.0 50.0))

(define positions
  (map
   (lambda (fnt msg spc ost)
     (let ([bs (font-get fnt base-size)])
       (make-vector-2
        (/ (- screen-width
              (vector-2-get (measure-text-ex
                             fnt msg
                             (float bs)
                             spc) x)) 2.0)
        (- (/ (- screen-height bs) 2.0) ost))))
   fonts messages spacings y-offset))

(set-target-fps 60)

(do ()
    ((window-should-close)
     (for-each unload-font fonts)
     (close-window))
  (drawing-begin
   (clear-background RAYWHITE)
   (for-each
    (lambda (fnt msg pos spc)
      (draw-text-ex fnt msg pos
                    (float (font-get fnt base-size))
                    spc WHITE))
    fonts messages positions spacings)))
