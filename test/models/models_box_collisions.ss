(import (raylib raylib))

(init-window 800 450 "raylib [models] example - box collisions")

(define camera
  (make-camera3d '(0.0 10.0 10.0)
                 '(0.0  0.0  0.0)
                 '(0.0  1.0  0.0)
                 45.0 CAMERA_CUSTOM))

(define player-pos '(0.0 1.0 2.0))

(define player-size '(1.0 2.0 1.0))



(define enemy-box-pos '(-4.0 1.0 0.0))

(define enemy-box-size '(2.0 2.0 2.0))

(define enemy-sphere-pos '(4.0 0.0 0.0))

(define enemy-sphere-size 1.5)

(set-target-fps 60)

(do ([player-box (make-bounding-box)]
     [enemy-box (make-bounding-box)])
    ((window-should-close)
     (close-window))
  (cond
   [(is-key-down KEY_D)
    (set-car! player-pos (+ (car player-pos) 0.2))]
   [(is-key-down KEY_A)
    (set-car! player-pos (- (car player-pos) 0.2))]
   [(is-key-down KEY_S)
    (set-car! (cddr player-pos) (+ (caddr player-pos) 0.2))]
   [(is-key-down KEY_W)
    (set-car! (cddr player-pos) (- (caddr player-pos) 0.2))])

  (let ([player-half (map (lambda (v) (/ v 2)) player-size)]
        [enemy-box-half (map (lambda (v) (/ v 2)) enemy-box-size)])
    (apply make-vector-3 
           (cons (bounding-box-ref& player-box min)
                 (map - player-pos player-half)))
    (apply make-vector-3 
           (cons (bounding-box-ref& player-box max)
                 (map + player-pos player-half)))
    (apply make-vector-3 
           (cons (bounding-box-ref& enemy-box min)
                 (map - enemy-box-pos enemy-box-half)))
    (apply make-vector-3 
           (cons (bounding-box-ref& enemy-box max)
                 (map + enemy-box-pos enemy-box-half))))
  (let ([collision (or (check-collision-boxes player-box enemy-box)
                       (check-collision-box-sphere player-box (apply make-vector-3
                                                                     enemy-sphere-pos)
                                                   enemy-sphere-size))])
    (drawing-begin
     (clear-background RAYWHITE)
     (mode-3d-begin
      camera
      (draw-cube-v (apply make-vector-3 enemy-box-pos)
                   (apply make-vector-3 enemy-box-size) GRAY)
      (draw-cube-wires (apply make-vector-3 enemy-box-pos)
                       (car enemy-box-size) (cadr enemy-box-size) (caddr enemy-box-size) DARKGRAY)
      
      (draw-sphere (apply make-vector-3 enemy-sphere-pos)
                   enemy-sphere-size GRAY)
      (draw-sphere-wires (apply make-vector-3 enemy-sphere-pos)
                         enemy-sphere-size 16 16 DARKGRAY)
      (draw-cube-v (apply make-vector-3 player-pos)
                   (apply make-vector-3 player-size) (if collision RED GREEN))
      (draw-grid 10 1.0))
     (draw-text "Move player with cursors to collide" 220 40 20 GRAY)
     (draw-fps 10 10))))

    
