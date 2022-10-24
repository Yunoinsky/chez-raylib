(define-ftype vector-2 (struct [x float] [y float]))

(define (make-vector-2 x y)
  (let ([struct (make-ftype-pointer
                  vector-2
                  (foreign-alloc (ftype-sizeof vector-2)))])
    (ftype-set! vector-2 (x) struct x)
    (ftype-set! vector-2 (y) struct y)
    struct))

(define-ftype vector-3
  (struct [x float] [y float] [z float]))

(define (make-vector-3 x y z)
  (let ([struct (make-ftype-pointer
                  vector-3
                  (foreign-alloc (ftype-sizeof vector-3)))])
    (ftype-set! vector-3 (x) struct x)
    (ftype-set! vector-3 (y) struct y)
    (ftype-set! vector-3 (z) struct z)
    struct))

(define-ftype vector-4
  (struct [x float] [y float] [z float] [w float]))

(define (make-vector-4 x y z w)
  (let ([struct (make-ftype-pointer
                  vector-4
                  (foreign-alloc (ftype-sizeof vector-4)))])
    (ftype-set! vector-4 (x) struct x)
    (ftype-set! vector-4 (y) struct y)
    (ftype-set! vector-4 (z) struct z)
    (ftype-set! vector-4 (w) struct w)
    struct))

(define-ftype matrix
  (struct
    [m0 float]
    [m4 float]
    [m8 float]
    [m12 float]
    [m1 float]
    [m5 float]
    [m9 float]
    [m13 float]
    [m2 float]
    [m6 float]
    [m10 float]
    [m14 float]
    [m3 float]
    [m7 float]
    [m11 float]
    [m15 float]))

(define (make-matrix m0 m4 m8 m12 m1 m5 m9 m13 m2 m6 m10 m14
         m3 m7 m11 m15)
  (let ([struct (make-ftype-pointer
                  matrix
                  (foreign-alloc (ftype-sizeof matrix)))])
    (ftype-set! matrix (m0) struct m0)
    (ftype-set! matrix (m4) struct m4)
    (ftype-set! matrix (m8) struct m8)
    (ftype-set! matrix (m12) struct m12)
    (ftype-set! matrix (m1) struct m1)
    (ftype-set! matrix (m5) struct m5)
    (ftype-set! matrix (m9) struct m9)
    (ftype-set! matrix (m13) struct m13)
    (ftype-set! matrix (m2) struct m2)
    (ftype-set! matrix (m6) struct m6)
    (ftype-set! matrix (m10) struct m10)
    (ftype-set! matrix (m14) struct m14)
    (ftype-set! matrix (m3) struct m3)
    (ftype-set! matrix (m7) struct m7)
    (ftype-set! matrix (m11) struct m11)
    (ftype-set! matrix (m15) struct m15)
    struct))

(define-ftype color
  (struct
    [r unsigned-8]
    [g unsigned-8]
    [b unsigned-8]
    [a unsigned-8]))

(define (make-color r g b a)
  (let ([struct (make-ftype-pointer
                  color
                  (foreign-alloc (ftype-sizeof color)))])
    (ftype-set! color (r) struct r)
    (ftype-set! color (g) struct g)
    (ftype-set! color (b) struct b)
    (ftype-set! color (a) struct a)
    struct))

(define-ftype rectangle
  (struct [x float] [y float] [width float] [height float]))

(define (make-rectangle x y width height)
  (let ([struct (make-ftype-pointer
                  rectangle
                  (foreign-alloc (ftype-sizeof rectangle)))])
    (ftype-set! rectangle (x) struct x)
    (ftype-set! rectangle (y) struct y)
    (ftype-set! rectangle (width) struct width)
    (ftype-set! rectangle (height) struct height)
    struct))

(define-ftype image
  (struct
    [data void*]
    [width int]
    [height int]
    [mipmaps int]
    [format int]))

(define-ftype texture
  (struct
    [id unsigned]
    [width int]
    [height int]
    [mipmaps int]
    [format int]))

(define (make-texture id width height mipmaps format)
  (let ([struct (make-ftype-pointer
                  texture
                  (foreign-alloc (ftype-sizeof texture)))])
    (ftype-set! texture (id) struct id)
    (ftype-set! texture (width) struct width)
    (ftype-set! texture (height) struct height)
    (ftype-set! texture (mipmaps) struct mipmaps)
    (ftype-set! texture (format) struct format)
    struct))

(define-ftype render-texture
  (struct [id unsigned] [texture texture] [depth texture]))

(define-ftype npatch-info
  (struct
    [source rectangle]
    [left int]
    [top int]
    [right int]
    [bottom int]
    [layout int]))

(define-ftype glyph-info
  (struct
    [value int]
    [offset-x int]
    [offset-y int]
    [advance-x int]
    [image image]))

(define-ftype font
  (struct
    [base-size int]
    [glyph-count int]
    [glyph-padding int]
    [texture texture]
    [recs (* rectangle)]
    [glyphs (* glyph-info)]))

(define-ftype camera-3d
  (struct
    [position vector-3]
    [target vector-3]
    [up vector-3]
    [fovy float]
    [projection int]))

(define-ftype camera-2d
  (struct
    [offset vector-2]
    [target vector-2]
    [rotation float]
    [zoom float]))

(define-ftype mesh
  (struct
    [vertex-count int]
    [triangle-count int]
    [vertices (* float)]
    [texcoords (* float)]
    [texcoords-2 (* float)]
    [normals (* float)]
    [tangents (* float)]
    [colors (* unsigned-8)]
    [indices (* unsigned-short)]
    [anim-vertices (* float)]
    [anim-normals (* float)]
    [bone-ids (* unsigned-8)]
    [bone-weights (* float)]
    [vao-id unsigned]
    [vbo-id (* unsigned)]))

(define-ftype shader (struct [id unsigned] [locs (* int)]))

(define-ftype material-map
  (struct [texture texture] [color color] [value float]))

(define-ftype material
  (struct
    [shader shader]
    [maps (* material-map)]
    [params (* float)]))

(define-ftype transform
  (struct
    [translation vector-3]
    [rotation vector-4]
    [scale vector-3]))

(define-ftype bone-info
  (struct [name (* char)] [parent int]))

(define-ftype model
  (struct
    [transform matrix]
    [mesh-count int]
    [material-count int]
    [meshes (* mesh)]
    [materials (* material)]
    [mesh-material (* int)]
    [bone-count int]
    [bones (* bone-info)]
    [bind-pose (* transform)]))

(define-ftype model-animation
  (struct
    [bone-count int]
    [frame-count int]
    [bones (* bone-info)]
    [frame-poses (* (* transform))]))

(define-ftype ray
  (struct [position vector-3] [direction vector-3]))

(define-ftype ray-collision
  (struct
    [hit boolean]
    [distance float]
    [point vector-3]
    [normal vector-3]))

(define-ftype bounding-box
  (struct [min vector-3] [max vector-3]))

(define-ftype wave
  (struct
    [frame-count unsigned]
    [sample-rate unsigned]
    [sample-size unsigned]
    [channels unsigned]
    [data void*]))

(define-ftype audio-stream
  (struct
    [buffer void*]
    [processor void*]
    [sample-rate unsigned]
    [sample-size unsigned]
    [channels unsigned]))

(define-ftype sound
  (struct [stream audio-stream] [frame-count unsigned]))

(define-ftype music
  (struct
    [stream audio-stream]
    [frame-count unsigned]
    [looping boolean]
    [ctx-type int]
    [ctx-data void*]))

(define-ftype vr-device-info
  (struct
    [hresolution int]
    [vresolution int]
    [hscreen-size float]
    [vscreen-size float]
    [vscreen-center float]
    [eye-to-screen-distance float]
    [lens-separation-distance float]
    [interpupillary-distance float]
    [lens-distortion-values (* float)]
    [chroma-ab-correction (* float)]))

(define-ftype vr-stereo-config
  (struct
    [projection (* matrix)]
    [view-offset (* matrix)]
    [left-lens-center (* float)]
    [right-lens-center (* float)]
    [left-screen-center (* float)]
    [right-screen-center (* float)]
    [scale (* float)]
    [scale-in (* float)]))

(define-ftype file-path-list
  (struct
    [capacity unsigned]
    [count unsigned]
    [paths (* (* char))]))

