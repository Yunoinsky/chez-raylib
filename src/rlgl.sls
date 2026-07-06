(library (raylib rlgl (0 3))
  (export rl-Render-Batch make-rl-render-batch
   copy-rl-render-batch rl-render-batch-set!
   rl-render-batch-get rl-render-batch-ref& rl-Draw-Call
   make-rl-draw-call copy-rl-draw-call rl-draw-call-set!
   rl-draw-call-get rl-draw-call-ref& rl-Vertex-Buffer
   make-rl-vertex-buffer copy-rl-vertex-buffer
   rl-vertex-buffer-set! rl-vertex-buffer-get
   rl-vertex-buffer-ref& Matrix make-matrix copy-matrix
   matrix-set! matrix-get matrix-ref& RL_CULL_FACE_FRONT
   RL_CULL_FACE_BACK RL_ATTACHMENT_CUBEMAP_POSITIVE_X
   RL_ATTACHMENT_CUBEMAP_NEGATIVE_X
   RL_ATTACHMENT_CUBEMAP_POSITIVE_Y
   RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y
   RL_ATTACHMENT_CUBEMAP_POSITIVE_Z
   RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z RL_ATTACHMENT_TEXTURE2D
   RL_ATTACHMENT_RENDERBUFFER RL_ATTACHMENT_COLOR_CHANNEL0
   RL_ATTACHMENT_COLOR_CHANNEL1 RL_ATTACHMENT_COLOR_CHANNEL2
   RL_ATTACHMENT_COLOR_CHANNEL3 RL_ATTACHMENT_COLOR_CHANNEL4
   RL_ATTACHMENT_COLOR_CHANNEL5 RL_ATTACHMENT_COLOR_CHANNEL6
   RL_ATTACHMENT_COLOR_CHANNEL7 RL_ATTACHMENT_DEPTH
   RL_ATTACHMENT_STENCIL RL_SHADER_ATTRIB_FLOAT
   RL_SHADER_ATTRIB_VEC2 RL_SHADER_ATTRIB_VEC3
   RL_SHADER_ATTRIB_VEC4 RL_SHADER_UNIFORM_FLOAT
   RL_SHADER_UNIFORM_VEC2 RL_SHADER_UNIFORM_VEC3
   RL_SHADER_UNIFORM_VEC4 RL_SHADER_UNIFORM_INT
   RL_SHADER_UNIFORM_IVEC2 RL_SHADER_UNIFORM_IVEC3
   RL_SHADER_UNIFORM_IVEC4 RL_SHADER_UNIFORM_UINT
   RL_SHADER_UNIFORM_UIVEC2 RL_SHADER_UNIFORM_UIVEC3
   RL_SHADER_UNIFORM_UIVEC4 RL_SHADER_UNIFORM_SAMPLER2D
   RL_SHADER_LOC_VERTEX_POSITION
   RL_SHADER_LOC_VERTEX_TEXCOORD01
   RL_SHADER_LOC_VERTEX_TEXCOORD02 RL_SHADER_LOC_VERTEX_NORMAL
   RL_SHADER_LOC_VERTEX_TANGENT RL_SHADER_LOC_VERTEX_COLOR
   RL_SHADER_LOC_MATRIX_MVP RL_SHADER_LOC_MATRIX_VIEW
   RL_SHADER_LOC_MATRIX_PROJECTION RL_SHADER_LOC_MATRIX_MODEL
   RL_SHADER_LOC_MATRIX_NORMAL RL_SHADER_LOC_VECTOR_VIEW
   RL_SHADER_LOC_COLOR_DIFFUSE RL_SHADER_LOC_COLOR_SPECULAR
   RL_SHADER_LOC_COLOR_AMBIENT RL_SHADER_LOC_MAP_ALBEDO
   RL_SHADER_LOC_MAP_METALNESS RL_SHADER_LOC_MAP_NORMAL
   RL_SHADER_LOC_MAP_ROUGHNESS RL_SHADER_LOC_MAP_OCCLUSION
   RL_SHADER_LOC_MAP_EMISSION RL_SHADER_LOC_MAP_HEIGHT
   RL_SHADER_LOC_MAP_CUBEMAP RL_SHADER_LOC_MAP_IRRADIANCE
   RL_SHADER_LOC_MAP_PREFILTER RL_SHADER_LOC_MAP_BRDF
   RL_BLEND_ALPHA RL_BLEND_ADDITIVE RL_BLEND_MULTIPLIED
   RL_BLEND_ADD_COLORS RL_BLEND_SUBTRACT_COLORS
   RL_BLEND_ALPHA_PREMULTIPLY RL_BLEND_CUSTOM
   RL_BLEND_CUSTOM_SEPARATE RL_TEXTURE_FILTER_POINT
   RL_TEXTURE_FILTER_BILINEAR RL_TEXTURE_FILTER_TRILINEAR
   RL_TEXTURE_FILTER_ANISOTROPIC_4X
   RL_TEXTURE_FILTER_ANISOTROPIC_8X
   RL_TEXTURE_FILTER_ANISOTROPIC_16X
   RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE
   RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA
   RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5
   RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8
   RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1
   RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4
   RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8
   RL_PIXELFORMAT_UNCOMPRESSED_R32
   RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32
   RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32
   RL_PIXELFORMAT_UNCOMPRESSED_R16
   RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16
   RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16A16
   RL_PIXELFORMAT_COMPRESSED_DXT1_RGB
   RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA
   RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA
   RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA
   RL_PIXELFORMAT_COMPRESSED_ETC1_RGB
   RL_PIXELFORMAT_COMPRESSED_ETC2_RGB
   RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA
   RL_PIXELFORMAT_COMPRESSED_PVRT_RGB
   RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA
   RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA
   RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA RL_LOG_ALL
   RL_LOG_TRACE RL_LOG_DEBUG RL_LOG_INFO RL_LOG_WARNING
   RL_LOG_ERROR RL_LOG_FATAL RL_LOG_NONE RL_OPENGL_SOFTWARE
   RL_OPENGL_11 RL_OPENGL_21 RL_OPENGL_33 RL_OPENGL_43
   RL_OPENGL_ES_20 RL_OPENGL_ES_30 rl-load-draw-quad
   rl-load-draw-cube rl-set-matrix-view-offset-stereo
   rl-set-matrix-projection-stereo rl-set-matrix-modelview
   rl-set-matrix-projection rl-get-matrix-view-offset-stereo
   rl-get-matrix-projection-stereo rl-get-matrix-transform
   rl-get-matrix-projection rl-get-matrix-modelview
   rl-bind-image-texture rl-get-shader-buffer-size
   rl-copy-shader-buffer rl-read-shader-buffer
   rl-bind-shader-buffer rl-update-shader-buffer
   rl-unload-shader-buffer rl-load-shader-buffer
   rl-compute-shader-dispatch rl-set-shader
   rl-set-uniform-sampler rl-set-uniform-matrices
   rl-set-uniform-matrix rl-set-uniform rl-get-location-attrib
   rl-get-location-uniform rl-unload-shader-program
   rl-unload-shader rl-load-shader-program-compute
   rl-load-shader-program-ex rl-load-shader-program
   rl-load-shader rl-resize-framebuffer rl-copy-framebuffer
   rl-unload-framebuffer rl-framebuffer-complete
   rl-framebuffer-attach rl-load-framebuffer
   rl-read-screen-pixels rl-read-texture-pixels
   rl-gen-texture-mipmaps rl-unload-texture
   rl-get-pixel-format-name rl-get-gl-texture-formats
   rl-update-texture rl-load-texture-cubemap
   rl-load-texture-depth rl-load-texture
   rl-draw-vertex-array-elements-instanced
   rl-draw-vertex-array-instanced rl-draw-vertex-array-elements
   rl-draw-vertex-array rl-set-vertex-attribute-default
   rl-set-vertex-attribute-divisor rl-set-vertex-attribute
   rl-unload-vertex-buffer rl-unload-vertex-array
   rl-update-vertex-buffer-elements rl-update-vertex-buffer
   rl-load-vertex-buffer-element rl-load-vertex-buffer
   rl-load-vertex-array rl-set-texture
   rl-check-render-batch-limit rl-draw-render-batch-active
   rl-set-render-batch-active rl-draw-render-batch
   rl-unload-render-batch rl-load-render-batch
   rl-get-shader-locs-default rl-get-shader-id-default
   rl-get-texture-id-default rl-get-framebuffer-height
   rl-set-framebuffer-height rl-get-framebuffer-width
   rl-set-framebuffer-width rl-get-version rl-get-proc-address
   rl-load-extensions rlgl-close rlgl-init
   rl-set-blend-factors-separate rl-set-blend-factors
   rl-set-blend-mode rl-check-errors rl-clear-screen-buffers
   rl-clear-color rl-is-stereo-render-enabled
   rl-disable-stereo-render rl-enable-stereo-render
   rl-disable-smooth-lines rl-enable-smooth-lines
   rl-get-line-width rl-set-line-width rl-disable-wire-mode
   rl-enable-wire-mode rl-get-point-size rl-set-point-size
   rl-disable-point-mode rl-enable-point-mode rl-scissor
   rl-disable-scissor-test rl-enable-scissor-test
   rl-set-cull-face rl-color-mask rl-disable-backface-culling
   rl-enable-backface-culling rl-disable-depth-mask
   rl-enable-depth-mask rl-disable-depth-test
   rl-enable-depth-test rl-disable-color-blend
   rl-enable-color-blend rl-bind-framebuffer
   rl-blit-framebuffer rl-active-draw-buffers
   rl-get-active-framebuffer rl-disable-framebuffer
   rl-enable-framebuffer rl-disable-shader rl-enable-shader
   rl-cubemap-parameters rl-texture-parameters
   rl-disable-texture-cubemap rl-enable-texture-cubemap
   rl-disable-texture rl-enable-texture rl-active-texture-slot
   rl-disable-state-pointer rl-enable-state-pointer
   rl-disable-vertex-attribute rl-enable-vertex-attribute
   rl-disable-vertex-buffer-element
   rl-enable-vertex-buffer-element rl-disable-vertex-buffer
   rl-enable-vertex-buffer rl-disable-vertex-array
   rl-enable-vertex-array rl-color-4f rl-color-3f rl-color-4ub
   rl-normal-3f rl-tex-coord-2f rl-vertex-3f rl-vertex-2f
   rl-vertex-2i rl-end rl-begin rl-get-cull-distance-far
   rl-get-cull-distance-near rl-set-clip-planes rl-viewport
   rl-ortho rl-frustum rl-mult-matrixf rl-scalef rl-rotatef
   rl-translatef rl-load-identity rl-pop-matrix rl-push-matrix
   rl-matrix-mode)
  (import (chezscheme))
  (begin
    (define-ftype Matrix
      (struct
        [m-0 float]
        [m-4 float]
        [m-8 float]
        [m-12 float]
        [m-1 float]
        [m-5 float]
        [m-9 float]
        [m-13 float]
        [m-2 float]
        [m-6 float]
        [m-10 float]
        [m-14 float]
        [m-3 float]
        [m-7 float]
        [m-11 float]
        [m-15 float]))
    (define make-matrix
      (case-lambda
        [(m-0 m-4 m-8 m-12 m-1 m-5 m-9 m-13 m-2 m-6 m-10 m-14 m-3
          m-7 m-11 m-15)
         (let ([s (make-ftype-pointer
                    Matrix
                    (foreign-alloc (ftype-sizeof Matrix)))])
           (ftype-set! Matrix (m-0) s m-0)
           (ftype-set! Matrix (m-4) s m-4)
           (ftype-set! Matrix (m-8) s m-8)
           (ftype-set! Matrix (m-12) s m-12)
           (ftype-set! Matrix (m-1) s m-1)
           (ftype-set! Matrix (m-5) s m-5)
           (ftype-set! Matrix (m-9) s m-9)
           (ftype-set! Matrix (m-13) s m-13)
           (ftype-set! Matrix (m-2) s m-2)
           (ftype-set! Matrix (m-6) s m-6)
           (ftype-set! Matrix (m-10) s m-10)
           (ftype-set! Matrix (m-14) s m-14)
           (ftype-set! Matrix (m-3) s m-3)
           (ftype-set! Matrix (m-7) s m-7)
           (ftype-set! Matrix (m-11) s m-11)
           (ftype-set! Matrix (m-15) s m-15)
           s)]
        [(struct m-0 m-4 m-8 m-12 m-1 m-5 m-9 m-13 m-2 m-6 m-10 m-14
          m-3 m-7 m-11 m-15)
         (ftype-set! Matrix (m-0) struct m-0)
         (ftype-set! Matrix (m-4) struct m-4)
         (ftype-set! Matrix (m-8) struct m-8)
         (ftype-set! Matrix (m-12) struct m-12)
         (ftype-set! Matrix (m-1) struct m-1)
         (ftype-set! Matrix (m-5) struct m-5)
         (ftype-set! Matrix (m-9) struct m-9)
         (ftype-set! Matrix (m-13) struct m-13)
         (ftype-set! Matrix (m-2) struct m-2)
         (ftype-set! Matrix (m-6) struct m-6)
         (ftype-set! Matrix (m-10) struct m-10)
         (ftype-set! Matrix (m-14) struct m-14)
         (ftype-set! Matrix (m-3) struct m-3)
         (ftype-set! Matrix (m-7) struct m-7)
         (ftype-set! Matrix (m-11) struct m-11)
         (ftype-set! Matrix (m-15) struct m-15)
         struct]))
    (define copy-matrix
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Matrix
                     (foreign-alloc (ftype-sizeof Matrix)))])
          (ftype-set! Matrix (m-0) dst (ftype-ref Matrix (m-0) src))
          (ftype-set! Matrix (m-4) dst (ftype-ref Matrix (m-4) src))
          (ftype-set! Matrix (m-8) dst (ftype-ref Matrix (m-8) src))
          (ftype-set! Matrix (m-12) dst (ftype-ref Matrix (m-12) src))
          (ftype-set! Matrix (m-1) dst (ftype-ref Matrix (m-1) src))
          (ftype-set! Matrix (m-5) dst (ftype-ref Matrix (m-5) src))
          (ftype-set! Matrix (m-9) dst (ftype-ref Matrix (m-9) src))
          (ftype-set! Matrix (m-13) dst (ftype-ref Matrix (m-13) src))
          (ftype-set! Matrix (m-2) dst (ftype-ref Matrix (m-2) src))
          (ftype-set! Matrix (m-6) dst (ftype-ref Matrix (m-6) src))
          (ftype-set! Matrix (m-10) dst (ftype-ref Matrix (m-10) src))
          (ftype-set! Matrix (m-14) dst (ftype-ref Matrix (m-14) src))
          (ftype-set! Matrix (m-3) dst (ftype-ref Matrix (m-3) src))
          (ftype-set! Matrix (m-7) dst (ftype-ref Matrix (m-7) src))
          (ftype-set! Matrix (m-11) dst (ftype-ref Matrix (m-11) src))
          (ftype-set! Matrix (m-15) dst (ftype-ref Matrix (m-15) src))
          dst)))
    (define-syntax matrix-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Matrix (f ...) s v)]
        [(_ s f v) (ftype-set! Matrix (f) s v)]))
    (define-syntax matrix-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Matrix (f ...) s)]
        [(_ s f) (ftype-ref Matrix (f) s)]))
    (define-syntax matrix-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Matrix (f ...) s)]
        [(_ s f) (ftype-&ref Matrix (f) s)]))
    (define-ftype rl-Vertex-Buffer
      (struct
        [element-Count int]
        [vertices (* float)]
        [texcoords (* float)]
        [normals (* float)]
        [colors (* unsigned-8)]
        [indices void*]
        [vao-Id void*]
        [vbo-Id (array 5 unsigned)]))
    (define make-rl-vertex-buffer
      (case-lambda
        [(element-Count vertices texcoords normals colors indices
          vao-Id vbo-Id)
         (let ([s (make-ftype-pointer
                    rl-Vertex-Buffer
                    (foreign-alloc (ftype-sizeof rl-Vertex-Buffer)))])
           (ftype-set!
             rl-Vertex-Buffer
             (element-Count)
             s
             element-Count)
           (void)
           (void)
           (void)
           (void)
           (ftype-set! rl-Vertex-Buffer (indices) s indices)
           (ftype-set! rl-Vertex-Buffer (vao-Id) s vao-Id)
           (void)
           s)]
        [(struct element-Count vertices texcoords normals colors
          indices vao-Id vbo-Id)
         (ftype-set!
           rl-Vertex-Buffer
           (element-Count)
           struct
           element-Count)
         (void)
         (void)
         (void)
         (void)
         (ftype-set! rl-Vertex-Buffer (indices) struct indices)
         (ftype-set! rl-Vertex-Buffer (vao-Id) struct vao-Id)
         (void)
         struct]))
    (define copy-rl-vertex-buffer
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     rl-Vertex-Buffer
                     (foreign-alloc (ftype-sizeof rl-Vertex-Buffer)))])
          (ftype-set!
            rl-Vertex-Buffer
            (element-Count)
            dst
            (ftype-ref rl-Vertex-Buffer (element-Count) src))
          (void)
          (void)
          (void)
          (void)
          (ftype-set!
            rl-Vertex-Buffer
            (indices)
            dst
            (ftype-ref rl-Vertex-Buffer (indices) src))
          (ftype-set!
            rl-Vertex-Buffer
            (vao-Id)
            dst
            (ftype-ref rl-Vertex-Buffer (vao-Id) src))
          (void)
          dst)))
    (define-syntax rl-vertex-buffer-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! rl-Vertex-Buffer (f ...) s v)]
        [(_ s f v) (ftype-set! rl-Vertex-Buffer (f) s v)]))
    (define-syntax rl-vertex-buffer-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref rl-Vertex-Buffer (f ...) s)]
        [(_ s f) (ftype-ref rl-Vertex-Buffer (f) s)]))
    (define-syntax rl-vertex-buffer-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref rl-Vertex-Buffer (f ...) s)]
        [(_ s f) (ftype-&ref rl-Vertex-Buffer (f) s)]))
    (define-ftype rl-Draw-Call
      (struct
        [mode int]
        [vertex-Count int]
        [vertex-Alignment int]
        [texture-Id unsigned]))
    (define make-rl-draw-call
      (case-lambda
        [(mode vertex-Count vertex-Alignment texture-Id)
         (let ([s (make-ftype-pointer
                    rl-Draw-Call
                    (foreign-alloc (ftype-sizeof rl-Draw-Call)))])
           (ftype-set! rl-Draw-Call (mode) s mode)
           (ftype-set! rl-Draw-Call (vertex-Count) s vertex-Count)
           (ftype-set!
             rl-Draw-Call
             (vertex-Alignment)
             s
             vertex-Alignment)
           (ftype-set! rl-Draw-Call (texture-Id) s texture-Id)
           s)]
        [(struct mode vertex-Count vertex-Alignment texture-Id)
         (ftype-set! rl-Draw-Call (mode) struct mode)
         (ftype-set! rl-Draw-Call (vertex-Count) struct vertex-Count)
         (ftype-set!
           rl-Draw-Call
           (vertex-Alignment)
           struct
           vertex-Alignment)
         (ftype-set! rl-Draw-Call (texture-Id) struct texture-Id)
         struct]))
    (define copy-rl-draw-call
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     rl-Draw-Call
                     (foreign-alloc (ftype-sizeof rl-Draw-Call)))])
          (ftype-set!
            rl-Draw-Call
            (mode)
            dst
            (ftype-ref rl-Draw-Call (mode) src))
          (ftype-set!
            rl-Draw-Call
            (vertex-Count)
            dst
            (ftype-ref rl-Draw-Call (vertex-Count) src))
          (ftype-set!
            rl-Draw-Call
            (vertex-Alignment)
            dst
            (ftype-ref rl-Draw-Call (vertex-Alignment) src))
          (ftype-set!
            rl-Draw-Call
            (texture-Id)
            dst
            (ftype-ref rl-Draw-Call (texture-Id) src))
          dst)))
    (define-syntax rl-draw-call-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! rl-Draw-Call (f ...) s v)]
        [(_ s f v) (ftype-set! rl-Draw-Call (f) s v)]))
    (define-syntax rl-draw-call-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref rl-Draw-Call (f ...) s)]
        [(_ s f) (ftype-ref rl-Draw-Call (f) s)]))
    (define-syntax rl-draw-call-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref rl-Draw-Call (f ...) s)]
        [(_ s f) (ftype-&ref rl-Draw-Call (f) s)]))
    (define-ftype rl-Render-Batch
      (struct
        [buffer-Count int]
        [current-Buffer int]
        [vertex-Buffer (* rl-Vertex-Buffer)]
        [draws (* rl-Draw-Call)]
        [draw-Counter int]
        [current-Depth float]))
    (define make-rl-render-batch
      (case-lambda
        [(buffer-Count current-Buffer vertex-Buffer draws
          draw-Counter current-Depth)
         (let ([s (make-ftype-pointer
                    rl-Render-Batch
                    (foreign-alloc (ftype-sizeof rl-Render-Batch)))])
           (ftype-set! rl-Render-Batch (buffer-Count) s buffer-Count)
           (ftype-set!
             rl-Render-Batch
             (current-Buffer)
             s
             current-Buffer)
           (void)
           (void)
           (ftype-set! rl-Render-Batch (draw-Counter) s draw-Counter)
           (ftype-set! rl-Render-Batch (current-Depth) s current-Depth)
           s)]
        [(struct buffer-Count current-Buffer vertex-Buffer draws
          draw-Counter current-Depth)
         (ftype-set!
           rl-Render-Batch
           (buffer-Count)
           struct
           buffer-Count)
         (ftype-set!
           rl-Render-Batch
           (current-Buffer)
           struct
           current-Buffer)
         (void)
         (void)
         (ftype-set!
           rl-Render-Batch
           (draw-Counter)
           struct
           draw-Counter)
         (ftype-set!
           rl-Render-Batch
           (current-Depth)
           struct
           current-Depth)
         struct]))
    (define copy-rl-render-batch
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     rl-Render-Batch
                     (foreign-alloc (ftype-sizeof rl-Render-Batch)))])
          (ftype-set!
            rl-Render-Batch
            (buffer-Count)
            dst
            (ftype-ref rl-Render-Batch (buffer-Count) src))
          (ftype-set!
            rl-Render-Batch
            (current-Buffer)
            dst
            (ftype-ref rl-Render-Batch (current-Buffer) src))
          (void)
          (void)
          (ftype-set!
            rl-Render-Batch
            (draw-Counter)
            dst
            (ftype-ref rl-Render-Batch (draw-Counter) src))
          (ftype-set!
            rl-Render-Batch
            (current-Depth)
            dst
            (ftype-ref rl-Render-Batch (current-Depth) src))
          dst)))
    (define-syntax rl-render-batch-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! rl-Render-Batch (f ...) s v)]
        [(_ s f v) (ftype-set! rl-Render-Batch (f) s v)]))
    (define-syntax rl-render-batch-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref rl-Render-Batch (f ...) s)]
        [(_ s f) (ftype-ref rl-Render-Batch (f) s)]))
    (define-syntax rl-render-batch-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref rl-Render-Batch (f ...) s)]
        [(_ s f) (ftype-&ref rl-Render-Batch (f) s)]))
    (define RL_OPENGL_SOFTWARE 0)
    (define RL_OPENGL_11 1)
    (define RL_OPENGL_21 2)
    (define RL_OPENGL_33 3)
    (define RL_OPENGL_43 4)
    (define RL_OPENGL_ES_20 5)
    (define RL_OPENGL_ES_30 6)
    (define RL_LOG_ALL 0)
    (define RL_LOG_TRACE 1)
    (define RL_LOG_DEBUG 2)
    (define RL_LOG_INFO 3)
    (define RL_LOG_WARNING 4)
    (define RL_LOG_ERROR 5)
    (define RL_LOG_FATAL 6)
    (define RL_LOG_NONE 7)
    (define RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE 1)
    (define RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA 2)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5 3)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8 4)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 5)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 6)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 7)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R32 8)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32 9)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 10)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R16 11)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16 12)
    (define RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 13)
    (define RL_PIXELFORMAT_COMPRESSED_DXT1_RGB 14)
    (define RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA 15)
    (define RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA 16)
    (define RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA 17)
    (define RL_PIXELFORMAT_COMPRESSED_ETC1_RGB 18)
    (define RL_PIXELFORMAT_COMPRESSED_ETC2_RGB 19)
    (define RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA 20)
    (define RL_PIXELFORMAT_COMPRESSED_PVRT_RGB 21)
    (define RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA 22)
    (define RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA 23)
    (define RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA 24)
    (define RL_TEXTURE_FILTER_POINT 0)
    (define RL_TEXTURE_FILTER_BILINEAR 1)
    (define RL_TEXTURE_FILTER_TRILINEAR 2)
    (define RL_TEXTURE_FILTER_ANISOTROPIC_4X 3)
    (define RL_TEXTURE_FILTER_ANISOTROPIC_8X 4)
    (define RL_TEXTURE_FILTER_ANISOTROPIC_16X 5)
    (define RL_BLEND_ALPHA 0)
    (define RL_BLEND_ADDITIVE 1)
    (define RL_BLEND_MULTIPLIED 2)
    (define RL_BLEND_ADD_COLORS 3)
    (define RL_BLEND_SUBTRACT_COLORS 4)
    (define RL_BLEND_ALPHA_PREMULTIPLY 5)
    (define RL_BLEND_CUSTOM 6)
    (define RL_BLEND_CUSTOM_SEPARATE 7)
    (define RL_SHADER_LOC_VERTEX_POSITION 0)
    (define RL_SHADER_LOC_VERTEX_TEXCOORD01 1)
    (define RL_SHADER_LOC_VERTEX_TEXCOORD02 2)
    (define RL_SHADER_LOC_VERTEX_NORMAL 3)
    (define RL_SHADER_LOC_VERTEX_TANGENT 4)
    (define RL_SHADER_LOC_VERTEX_COLOR 5)
    (define RL_SHADER_LOC_MATRIX_MVP 6)
    (define RL_SHADER_LOC_MATRIX_VIEW 7)
    (define RL_SHADER_LOC_MATRIX_PROJECTION 8)
    (define RL_SHADER_LOC_MATRIX_MODEL 9)
    (define RL_SHADER_LOC_MATRIX_NORMAL 10)
    (define RL_SHADER_LOC_VECTOR_VIEW 11)
    (define RL_SHADER_LOC_COLOR_DIFFUSE 12)
    (define RL_SHADER_LOC_COLOR_SPECULAR 13)
    (define RL_SHADER_LOC_COLOR_AMBIENT 14)
    (define RL_SHADER_LOC_MAP_ALBEDO 15)
    (define RL_SHADER_LOC_MAP_METALNESS 16)
    (define RL_SHADER_LOC_MAP_NORMAL 17)
    (define RL_SHADER_LOC_MAP_ROUGHNESS 18)
    (define RL_SHADER_LOC_MAP_OCCLUSION 19)
    (define RL_SHADER_LOC_MAP_EMISSION 20)
    (define RL_SHADER_LOC_MAP_HEIGHT 21)
    (define RL_SHADER_LOC_MAP_CUBEMAP 22)
    (define RL_SHADER_LOC_MAP_IRRADIANCE 23)
    (define RL_SHADER_LOC_MAP_PREFILTER 24)
    (define RL_SHADER_LOC_MAP_BRDF 25)
    (define RL_SHADER_UNIFORM_FLOAT 0)
    (define RL_SHADER_UNIFORM_VEC2 1)
    (define RL_SHADER_UNIFORM_VEC3 2)
    (define RL_SHADER_UNIFORM_VEC4 3)
    (define RL_SHADER_UNIFORM_INT 4)
    (define RL_SHADER_UNIFORM_IVEC2 5)
    (define RL_SHADER_UNIFORM_IVEC3 6)
    (define RL_SHADER_UNIFORM_IVEC4 7)
    (define RL_SHADER_UNIFORM_UINT 8)
    (define RL_SHADER_UNIFORM_UIVEC2 9)
    (define RL_SHADER_UNIFORM_UIVEC3 10)
    (define RL_SHADER_UNIFORM_UIVEC4 11)
    (define RL_SHADER_UNIFORM_SAMPLER2D 12)
    (define RL_SHADER_ATTRIB_FLOAT 0)
    (define RL_SHADER_ATTRIB_VEC2 1)
    (define RL_SHADER_ATTRIB_VEC3 2)
    (define RL_SHADER_ATTRIB_VEC4 3)
    (define RL_ATTACHMENT_COLOR_CHANNEL0 0)
    (define RL_ATTACHMENT_COLOR_CHANNEL1 1)
    (define RL_ATTACHMENT_COLOR_CHANNEL2 2)
    (define RL_ATTACHMENT_COLOR_CHANNEL3 3)
    (define RL_ATTACHMENT_COLOR_CHANNEL4 4)
    (define RL_ATTACHMENT_COLOR_CHANNEL5 5)
    (define RL_ATTACHMENT_COLOR_CHANNEL6 6)
    (define RL_ATTACHMENT_COLOR_CHANNEL7 7)
    (define RL_ATTACHMENT_DEPTH 100)
    (define RL_ATTACHMENT_STENCIL 200)
    (define RL_ATTACHMENT_CUBEMAP_POSITIVE_X 0)
    (define RL_ATTACHMENT_CUBEMAP_NEGATIVE_X 1)
    (define RL_ATTACHMENT_CUBEMAP_POSITIVE_Y 2)
    (define RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y 3)
    (define RL_ATTACHMENT_CUBEMAP_POSITIVE_Z 4)
    (define RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z 5)
    (define RL_ATTACHMENT_TEXTURE2D 100)
    (define RL_ATTACHMENT_RENDERBUFFER 200)
    (define RL_CULL_FACE_FRONT 0)
    (define RL_CULL_FACE_BACK 1)
    (define rl-matrix-mode
      (let ([f #f])
        (lambda (mode)
          (unless f
            (set! f (foreign-procedure "rlMatrixMode" (int) void)))
          (f mode))))
    (define rl-push-matrix
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlPushMatrix" () void)))
          (f))))
    (define rl-pop-matrix
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlPopMatrix" () void)))
          (f))))
    (define rl-load-identity
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlLoadIdentity" () void)))
          (f))))
    (define rl-translatef
      (let ([f #f])
        (lambda (x y z)
          (unless f
            (set! f
              (foreign-procedure "rlTranslatef"
                (float float float)
                void)))
          (f x y z))))
    (define rl-rotatef
      (let ([f #f])
        (lambda (angle x y z)
          (unless f
            (set! f
              (foreign-procedure "rlRotatef"
                (float float float float)
                void)))
          (f angle x y z))))
    (define rl-scalef
      (let ([f #f])
        (lambda (x y z)
          (unless f
            (set! f
              (foreign-procedure "rlScalef" (float float float) void)))
          (f x y z))))
    (define rl-mult-matrixf
      (let ([f #f])
        (lambda (matf)
          (unless f
            (set! f
              (foreign-procedure "rlMultMatrixf" ((* float)) void)))
          (f matf))))
    (define rl-frustum
      (let ([f #f])
        (lambda (left right bottom top znear zfar)
          (unless f
            (set! f
              (foreign-procedure "rlFrustum"
                (double double double double double double)
                void)))
          (f left right bottom top znear zfar))))
    (define rl-ortho
      (let ([f #f])
        (lambda (left right bottom top znear zfar)
          (unless f
            (set! f
              (foreign-procedure "rlOrtho"
                (double double double double double double)
                void)))
          (f left right bottom top znear zfar))))
    (define rl-viewport
      (let ([f #f])
        (lambda (x y width height)
          (unless f
            (set! f
              (foreign-procedure "rlViewport" (int int int int) void)))
          (f x y width height))))
    (define rl-set-clip-planes
      (let ([f #f])
        (lambda (near-plane far-plane)
          (unless f
            (set! f
              (foreign-procedure "rlSetClipPlanes" (double double) void)))
          (f near-plane far-plane))))
    (define rl-get-cull-distance-near
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlGetCullDistanceNear" () double)))
          (f))))
    (define rl-get-cull-distance-far
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlGetCullDistanceFar" () double)))
          (f))))
    (define rl-begin
      (let ([f #f])
        (lambda (mode)
          (unless f (set! f (foreign-procedure "rlBegin" (int) void)))
          (f mode))))
    (define rl-end
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "rlEnd" () void)))
          (f))))
    (define rl-vertex-2i
      (let ([f #f])
        (lambda (x y)
          (unless f
            (set! f (foreign-procedure "rlVertex2i" (int int) void)))
          (f x y))))
    (define rl-vertex-2f
      (let ([f #f])
        (lambda (x y)
          (unless f
            (set! f
              (foreign-procedure "rlVertex2f" (float float) void)))
          (f x y))))
    (define rl-vertex-3f
      (let ([f #f])
        (lambda (x y z)
          (unless f
            (set! f
              (foreign-procedure "rlVertex3f" (float float float) void)))
          (f x y z))))
    (define rl-tex-coord-2f
      (let ([f #f])
        (lambda (x y)
          (unless f
            (set! f
              (foreign-procedure "rlTexCoord2f" (float float) void)))
          (f x y))))
    (define rl-normal-3f
      (let ([f #f])
        (lambda (x y z)
          (unless f
            (set! f
              (foreign-procedure "rlNormal3f" (float float float) void)))
          (f x y z))))
    (define rl-color-4ub
      (let ([f #f])
        (lambda (r g b a)
          (unless f
            (set! f
              (foreign-procedure "rlColor4ub"
                (unsigned-8 unsigned-8 unsigned-8 unsigned-8)
                void)))
          (f r g b a))))
    (define rl-color-3f
      (let ([f #f])
        (lambda (x y z)
          (unless f
            (set! f
              (foreign-procedure "rlColor3f" (float float float) void)))
          (f x y z))))
    (define rl-color-4f
      (let ([f #f])
        (lambda (x y z w)
          (unless f
            (set! f
              (foreign-procedure "rlColor4f"
                (float float float float)
                void)))
          (f x y z w))))
    (define rl-enable-vertex-array
      (let ([f #f])
        (lambda (vao-id)
          (unless f
            (set! f
              (foreign-procedure "rlEnableVertexArray"
                (unsigned)
                unsigned-8)))
          (not (= (f vao-id) 0)))))
    (define rl-disable-vertex-array
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisableVertexArray" () void)))
          (f))))
    (define rl-enable-vertex-buffer
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlEnableVertexBuffer" (unsigned) void)))
          (f id))))
    (define rl-disable-vertex-buffer
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlDisableVertexBuffer" () void)))
          (f))))
    (define rl-enable-vertex-buffer-element
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlEnableVertexBufferElement"
                (unsigned)
                void)))
          (f id))))
    (define rl-disable-vertex-buffer-element
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlDisableVertexBufferElement" () void)))
          (f))))
    (define rl-enable-vertex-attribute
      (let ([f #f])
        (lambda (index)
          (unless f
            (set! f
              (foreign-procedure "rlEnableVertexAttribute"
                (unsigned)
                void)))
          (f index))))
    (define rl-disable-vertex-attribute
      (let ([f #f])
        (lambda (index)
          (unless f
            (set! f
              (foreign-procedure "rlDisableVertexAttribute"
                (unsigned)
                void)))
          (f index))))
    (define rl-enable-state-pointer
      (let ([f #f])
        (lambda (vertex-attrib-type buffer)
          (unless f
            (set! f
              (foreign-procedure "rlEnableStatePointer"
                (int void*)
                void)))
          (f vertex-attrib-type buffer))))
    (define rl-disable-state-pointer
      (let ([f #f])
        (lambda (vertex-attrib-type)
          (unless f
            (set! f
              (foreign-procedure "rlDisableStatePointer" (int) void)))
          (f vertex-attrib-type))))
    (define rl-active-texture-slot
      (let ([f #f])
        (lambda (slot)
          (unless f
            (set! f
              (foreign-procedure "rlActiveTextureSlot" (int) void)))
          (f slot))))
    (define rl-enable-texture
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlEnableTexture" (unsigned) void)))
          (f id))))
    (define rl-disable-texture
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisableTexture" () void)))
          (f))))
    (define rl-enable-texture-cubemap
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlEnableTextureCubemap"
                (unsigned)
                void)))
          (f id))))
    (define rl-disable-texture-cubemap
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlDisableTextureCubemap" () void)))
          (f))))
    (define rl-texture-parameters
      (let ([f #f])
        (lambda (id param value)
          (unless f
            (set! f
              (foreign-procedure "rlTextureParameters"
                (unsigned int int)
                void)))
          (f id param value))))
    (define rl-cubemap-parameters
      (let ([f #f])
        (lambda (id param value)
          (unless f
            (set! f
              (foreign-procedure "rlCubemapParameters"
                (unsigned int int)
                void)))
          (f id param value))))
    (define rl-enable-shader
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlEnableShader" (unsigned) void)))
          (f id))))
    (define rl-disable-shader
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisableShader" () void)))
          (f))))
    (define rl-enable-framebuffer
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlEnableFramebuffer" (unsigned) void)))
          (f id))))
    (define rl-disable-framebuffer
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisableFramebuffer" () void)))
          (f))))
    (define rl-get-active-framebuffer
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlGetActiveFramebuffer" () unsigned)))
          (f))))
    (define rl-active-draw-buffers
      (let ([f #f])
        (lambda (count)
          (unless f
            (set! f
              (foreign-procedure "rlActiveDrawBuffers" (int) void)))
          (f count))))
    (define rl-blit-framebuffer
      (let ([f #f])
        (lambda (src-x src-y src-width src-height dst-x dst-y
                 dst-width dst-height buffer-mask)
          (unless f
            (set! f
              (foreign-procedure "rlBlitFramebuffer"
                (int int int int int int int int int)
                void)))
          (f src-x src-y src-width src-height dst-x dst-y dst-width
             dst-height buffer-mask))))
    (define rl-bind-framebuffer
      (let ([f #f])
        (lambda (target framebuffer)
          (unless f
            (set! f
              (foreign-procedure "rlBindFramebuffer"
                (unsigned unsigned)
                void)))
          (f target framebuffer))))
    (define rl-enable-color-blend
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlEnableColorBlend" () void)))
          (f))))
    (define rl-disable-color-blend
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisableColorBlend" () void)))
          (f))))
    (define rl-enable-depth-test
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlEnableDepthTest" () void)))
          (f))))
    (define rl-disable-depth-test
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisableDepthTest" () void)))
          (f))))
    (define rl-enable-depth-mask
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlEnableDepthMask" () void)))
          (f))))
    (define rl-disable-depth-mask
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisableDepthMask" () void)))
          (f))))
    (define rl-enable-backface-culling
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlEnableBackfaceCulling" () void)))
          (f))))
    (define rl-disable-backface-culling
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlDisableBackfaceCulling" () void)))
          (f))))
    (define rl-color-mask
      (let ([f #f])
        (lambda (r g b a)
          (unless f
            (set! f
              (foreign-procedure "rlColorMask"
                (unsigned-8 unsigned-8 unsigned-8 unsigned-8)
                void)))
          (f r g b a))))
    (define rl-set-cull-face
      (let ([f #f])
        (lambda (mode)
          (unless f
            (set! f (foreign-procedure "rlSetCullFace" (int) void)))
          (f mode))))
    (define rl-enable-scissor-test
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlEnableScissorTest" () void)))
          (f))))
    (define rl-disable-scissor-test
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisableScissorTest" () void)))
          (f))))
    (define rl-scissor
      (let ([f #f])
        (lambda (x y width height)
          (unless f
            (set! f
              (foreign-procedure "rlScissor" (int int int int) void)))
          (f x y width height))))
    (define rl-enable-point-mode
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlEnablePointMode" () void)))
          (f))))
    (define rl-disable-point-mode
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisablePointMode" () void)))
          (f))))
    (define rl-set-point-size
      (let ([f #f])
        (lambda (size)
          (unless f
            (set! f (foreign-procedure "rlSetPointSize" (float) void)))
          (f size))))
    (define rl-get-point-size
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlGetPointSize" () float)))
          (f))))
    (define rl-enable-wire-mode
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlEnableWireMode" () void)))
          (f))))
    (define rl-disable-wire-mode
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisableWireMode" () void)))
          (f))))
    (define rl-set-line-width
      (let ([f #f])
        (lambda (width)
          (unless f
            (set! f (foreign-procedure "rlSetLineWidth" (float) void)))
          (f width))))
    (define rl-get-line-width
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlGetLineWidth" () float)))
          (f))))
    (define rl-enable-smooth-lines
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlEnableSmoothLines" () void)))
          (f))))
    (define rl-disable-smooth-lines
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlDisableSmoothLines" () void)))
          (f))))
    (define rl-enable-stereo-render
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlEnableStereoRender" () void)))
          (f))))
    (define rl-disable-stereo-render
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlDisableStereoRender" () void)))
          (f))))
    (define rl-is-stereo-render-enabled
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlIsStereoRenderEnabled"
                ()
                unsigned-8)))
          (not (= (f) 0)))))
    (define rl-clear-color
      (let ([f #f])
        (lambda (r g b a)
          (unless f
            (set! f
              (foreign-procedure "rlClearColor"
                (unsigned-8 unsigned-8 unsigned-8 unsigned-8)
                void)))
          (f r g b a))))
    (define rl-clear-screen-buffers
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlClearScreenBuffers" () void)))
          (f))))
    (define rl-check-errors
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlCheckErrors" () void)))
          (f))))
    (define rl-set-blend-mode
      (let ([f #f])
        (lambda (mode)
          (unless f
            (set! f (foreign-procedure "rlSetBlendMode" (int) void)))
          (f mode))))
    (define rl-set-blend-factors
      (let ([f #f])
        (lambda (gl-src-factor gl-dst-factor gl-equation)
          (unless f
            (set! f
              (foreign-procedure "rlSetBlendFactors" (int int int) void)))
          (f gl-src-factor gl-dst-factor gl-equation))))
    (define rl-set-blend-factors-separate
      (let ([f #f])
        (lambda (gl-src-rgb gl-dst-rgb gl-src-alpha gl-dst-alpha
                 gl-eq-rgb gl-eq-alpha)
          (unless f
            (set! f
              (foreign-procedure "rlSetBlendFactorsSeparate"
                (int int int int int int)
                void)))
          (f gl-src-rgb gl-dst-rgb gl-src-alpha gl-dst-alpha gl-eq-rgb
             gl-eq-alpha))))
    (define rlgl-init
      (let ([f #f])
        (lambda (width height)
          (unless f
            (set! f (foreign-procedure "rlglInit" (int int) void)))
          (f width height))))
    (define rlgl-close
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "rlglClose" () void)))
          (f))))
    (define rl-load-extensions
      (let ([f #f])
        (lambda (loader)
          (unless f
            (set! f
              (foreign-procedure "rlLoadExtensions" (void*) void)))
          (f loader))))
    (define rl-get-proc-address
      (let ([f #f])
        (lambda (proc-name)
          (unless f
            (set! f
              (foreign-procedure "rlGetProcAddress" (string) void*)))
          (f proc-name))))
    (define rl-get-version
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlGetVersion" () int)))
          (f))))
    (define rl-set-framebuffer-width
      (let ([f #f])
        (lambda (width)
          (unless f
            (set! f
              (foreign-procedure "rlSetFramebufferWidth" (int) void)))
          (f width))))
    (define rl-get-framebuffer-width
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlGetFramebufferWidth" () int)))
          (f))))
    (define rl-set-framebuffer-height
      (let ([f #f])
        (lambda (height)
          (unless f
            (set! f
              (foreign-procedure "rlSetFramebufferHeight" (int) void)))
          (f height))))
    (define rl-get-framebuffer-height
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlGetFramebufferHeight" () int)))
          (f))))
    (define rl-get-texture-id-default
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlGetTextureIdDefault" () unsigned)))
          (f))))
    (define rl-get-shader-id-default
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlGetShaderIdDefault" () unsigned)))
          (f))))
    (define rl-get-shader-locs-default
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlGetShaderLocsDefault" () (* int))))
          (f))))
    (define rl-load-render-batch
      (let ([f #f])
        (lambda (num-buffers buffer-elements)
          (unless f
            (set! f
              (foreign-procedure "rlLoadRenderBatch"
                (int int)
                (* rl-Render-Batch))))
          (f num-buffers buffer-elements))))
    (define rl-unload-render-batch
      (let ([f #f])
        (lambda (batch)
          (unless f
            (set! f
              (foreign-procedure "rlUnloadRenderBatch"
                ((& rl-Render-Batch))
                void)))
          (f batch))))
    (define rl-draw-render-batch
      (let ([f #f])
        (lambda (batch)
          (unless f
            (set! f
              (foreign-procedure "rlDrawRenderBatch"
                ((* rl-Render-Batch))
                void)))
          (f batch))))
    (define rl-set-render-batch-active
      (let ([f #f])
        (lambda (batch)
          (unless f
            (set! f
              (foreign-procedure "rlSetRenderBatchActive"
                ((* rl-Render-Batch))
                void)))
          (f batch))))
    (define rl-draw-render-batch-active
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlDrawRenderBatchActive" () void)))
          (f))))
    (define rl-check-render-batch-limit
      (let ([f #f])
        (lambda (v-count)
          (unless f
            (set! f
              (foreign-procedure "rlCheckRenderBatchLimit"
                (int)
                unsigned-8)))
          (not (= (f v-count) 0)))))
    (define rl-set-texture
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f (foreign-procedure "rlSetTexture" (unsigned) void)))
          (f id))))
    (define rl-load-vertex-array
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlLoadVertexArray" () unsigned)))
          (f))))
    (define rl-load-vertex-buffer
      (let ([f #f])
        (lambda (buffer size dynamic)
          (unless f
            (set! f
              (foreign-procedure "rlLoadVertexBuffer"
                (void* int unsigned-8)
                unsigned)))
          (f buffer size dynamic))))
    (define rl-load-vertex-buffer-element
      (let ([f #f])
        (lambda (buffer size dynamic)
          (unless f
            (set! f
              (foreign-procedure "rlLoadVertexBufferElement"
                (void* int unsigned-8)
                unsigned)))
          (f buffer size dynamic))))
    (define rl-update-vertex-buffer
      (let ([f #f])
        (lambda (buffer-id data data-size offset)
          (unless f
            (set! f
              (foreign-procedure "rlUpdateVertexBuffer"
                (unsigned void* int int)
                void)))
          (f buffer-id data data-size offset))))
    (define rl-update-vertex-buffer-elements
      (let ([f #f])
        (lambda (id data data-size offset)
          (unless f
            (set! f
              (foreign-procedure "rlUpdateVertexBufferElements"
                (unsigned void* int int)
                void)))
          (f id data data-size offset))))
    (define rl-unload-vertex-array
      (let ([f #f])
        (lambda (vao-id)
          (unless f
            (set! f
              (foreign-procedure "rlUnloadVertexArray" (unsigned) void)))
          (f vao-id))))
    (define rl-unload-vertex-buffer
      (let ([f #f])
        (lambda (vbo-id)
          (unless f
            (set! f
              (foreign-procedure "rlUnloadVertexBuffer" (unsigned) void)))
          (f vbo-id))))
    (define rl-set-vertex-attribute
      (let ([f #f])
        (lambda (index comp-size type normalized stride offset)
          (unless f
            (set! f
              (foreign-procedure "rlSetVertexAttribute"
                (unsigned int int unsigned-8 int int)
                void)))
          (f index comp-size type normalized stride offset))))
    (define rl-set-vertex-attribute-divisor
      (let ([f #f])
        (lambda (index divisor)
          (unless f
            (set! f
              (foreign-procedure "rlSetVertexAttributeDivisor"
                (unsigned int)
                void)))
          (f index divisor))))
    (define rl-set-vertex-attribute-default
      (let ([f #f])
        (lambda (loc-index value attrib-type count)
          (unless f
            (set! f
              (foreign-procedure "rlSetVertexAttributeDefault"
                (int void* int int)
                void)))
          (f loc-index value attrib-type count))))
    (define rl-draw-vertex-array
      (let ([f #f])
        (lambda (offset count)
          (unless f
            (set! f
              (foreign-procedure "rlDrawVertexArray" (int int) void)))
          (f offset count))))
    (define rl-draw-vertex-array-elements
      (let ([f #f])
        (lambda (offset count buffer)
          (unless f
            (set! f
              (foreign-procedure "rlDrawVertexArrayElements"
                (int int void*)
                void)))
          (f offset count buffer))))
    (define rl-draw-vertex-array-instanced
      (let ([f #f])
        (lambda (offset count instances)
          (unless f
            (set! f
              (foreign-procedure "rlDrawVertexArrayInstanced"
                (int int int)
                void)))
          (f offset count instances))))
    (define rl-draw-vertex-array-elements-instanced
      (let ([f #f])
        (lambda (offset count buffer instances)
          (unless f
            (set! f
              (foreign-procedure "rlDrawVertexArrayElementsInstanced"
                (int int void* int)
                void)))
          (f offset count buffer instances))))
    (define rl-load-texture
      (let ([f #f])
        (lambda (data width height format mipmap-count)
          (unless f
            (set! f
              (foreign-procedure "rlLoadTexture"
                (void* int int int int)
                unsigned)))
          (f data width height format mipmap-count))))
    (define rl-load-texture-depth
      (let ([f #f])
        (lambda (width height use-render-buffer)
          (unless f
            (set! f
              (foreign-procedure "rlLoadTextureDepth"
                (int int unsigned-8)
                unsigned)))
          (f width height use-render-buffer))))
    (define rl-load-texture-cubemap
      (let ([f #f])
        (lambda (data size format mipmap-count)
          (unless f
            (set! f
              (foreign-procedure "rlLoadTextureCubemap"
                (void* int int int)
                unsigned)))
          (f data size format mipmap-count))))
    (define rl-update-texture
      (let ([f #f])
        (lambda (id offset-x offset-y width height format data)
          (unless f
            (set! f
              (foreign-procedure "rlUpdateTexture"
                (unsigned int int int int int void*)
                void)))
          (f id offset-x offset-y width height format data))))
    (define rl-get-gl-texture-formats
      (let ([f #f])
        (lambda (format gl-internal-format gl-format gl-type)
          (unless f
            (set! f
              (foreign-procedure "rlGetGlTextureFormats"
                (int (* unsigned) (* unsigned) (* unsigned))
                void)))
          (f format gl-internal-format gl-format gl-type))))
    (define rl-get-pixel-format-name
      (let ([f #f])
        (lambda (format)
          (unless f
            (set! f
              (foreign-procedure "rlGetPixelFormatName"
                (unsigned)
                string)))
          (f format))))
    (define rl-unload-texture
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlUnloadTexture" (unsigned) void)))
          (f id))))
    (define rl-gen-texture-mipmaps
      (let ([f #f])
        (lambda (id width height format mipmaps)
          (unless f
            (set! f
              (foreign-procedure "rlGenTextureMipmaps"
                (unsigned int int int (* int))
                void)))
          (f id width height format mipmaps))))
    (define rl-read-texture-pixels
      (let ([f #f])
        (lambda (id width height format)
          (unless f
            (set! f
              (foreign-procedure "rlReadTexturePixels"
                (unsigned int int int)
                void*)))
          (f id width height format))))
    (define rl-read-screen-pixels
      (let ([f #f])
        (lambda (width height)
          (unless f
            (set! f
              (foreign-procedure "rlReadScreenPixels"
                (int int)
                (* unsigned-8))))
          (f width height))))
    (define rl-load-framebuffer
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlLoadFramebuffer" () unsigned)))
          (f))))
    (define rl-framebuffer-attach
      (let ([f #f])
        (lambda (id tex-id attach-type tex-type mip-level)
          (unless f
            (set! f
              (foreign-procedure "rlFramebufferAttach"
                (unsigned unsigned int int int)
                void)))
          (f id tex-id attach-type tex-type mip-level))))
    (define rl-framebuffer-complete
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlFramebufferComplete"
                (unsigned)
                unsigned-8)))
          (not (= (f id) 0)))))
    (define rl-unload-framebuffer
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlUnloadFramebuffer" (unsigned) void)))
          (f id))))
    (define rl-copy-framebuffer
      (let ([f #f])
        (lambda (x y width height format pixels)
          (unless f
            (set! f
              (foreign-procedure "rlCopyFramebuffer"
                (int int int int int void*)
                void)))
          (f x y width height format pixels))))
    (define rl-resize-framebuffer
      (let ([f #f])
        (lambda (width height)
          (unless f
            (set! f
              (foreign-procedure "rlResizeFramebuffer" (int int) void)))
          (f width height))))
    (define rl-load-shader
      (let ([f #f])
        (lambda (code type)
          (unless f
            (set! f
              (foreign-procedure "rlLoadShader" (string int) unsigned)))
          (f code type))))
    (define rl-load-shader-program
      (let ([f #f])
        (lambda (vs-code fs-code)
          (unless f
            (set! f
              (foreign-procedure "rlLoadShaderProgram"
                (string string)
                unsigned)))
          (f vs-code fs-code))))
    (define rl-load-shader-program-ex
      (let ([f #f])
        (lambda (vs-id fs-id)
          (unless f
            (set! f
              (foreign-procedure "rlLoadShaderProgramEx"
                (unsigned unsigned)
                unsigned)))
          (f vs-id fs-id))))
    (define rl-load-shader-program-compute
      (let ([f #f])
        (lambda (cs-id)
          (unless f
            (set! f
              (foreign-procedure "rlLoadShaderProgramCompute"
                (unsigned)
                unsigned)))
          (f cs-id))))
    (define rl-unload-shader
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlUnloadShader" (unsigned) void)))
          (f id))))
    (define rl-unload-shader-program
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlUnloadShaderProgram"
                (unsigned)
                void)))
          (f id))))
    (define rl-get-location-uniform
      (let ([f #f])
        (lambda (id uniform-name)
          (unless f
            (set! f
              (foreign-procedure "rlGetLocationUniform"
                (unsigned string)
                int)))
          (f id uniform-name))))
    (define rl-get-location-attrib
      (let ([f #f])
        (lambda (id attrib-name)
          (unless f
            (set! f
              (foreign-procedure "rlGetLocationAttrib"
                (unsigned string)
                int)))
          (f id attrib-name))))
    (define rl-set-uniform
      (let ([f #f])
        (lambda (loc-index value uniform-type count)
          (unless f
            (set! f
              (foreign-procedure "rlSetUniform"
                (int void* int int)
                void)))
          (f loc-index value uniform-type count))))
    (define rl-set-uniform-matrix
      (let ([f #f])
        (lambda (loc-index mat)
          (unless f
            (set! f
              (foreign-procedure "rlSetUniformMatrix"
                (int (& Matrix))
                void)))
          (f loc-index mat))))
    (define rl-set-uniform-matrices
      (let ([f #f])
        (lambda (loc-index mat count)
          (unless f
            (set! f
              (foreign-procedure "rlSetUniformMatrices"
                (int (* Matrix) int)
                void)))
          (f loc-index mat count))))
    (define rl-set-uniform-sampler
      (let ([f #f])
        (lambda (loc-index texture-id)
          (unless f
            (set! f
              (foreign-procedure "rlSetUniformSampler"
                (int unsigned)
                void)))
          (f loc-index texture-id))))
    (define rl-set-shader
      (let ([f #f])
        (lambda (id locs)
          (unless f
            (set! f
              (foreign-procedure "rlSetShader" (unsigned (* int)) void)))
          (f id locs))))
    (define rl-compute-shader-dispatch
      (let ([f #f])
        (lambda (group-x group-y group-z)
          (unless f
            (set! f
              (foreign-procedure "rlComputeShaderDispatch"
                (unsigned unsigned unsigned)
                void)))
          (f group-x group-y group-z))))
    (define rl-load-shader-buffer
      (let ([f #f])
        (lambda (size data usage-hint)
          (unless f
            (set! f
              (foreign-procedure "rlLoadShaderBuffer"
                (unsigned void* int)
                unsigned)))
          (f size data usage-hint))))
    (define rl-unload-shader-buffer
      (let ([f #f])
        (lambda (ssbo-id)
          (unless f
            (set! f
              (foreign-procedure "rlUnloadShaderBuffer" (unsigned) void)))
          (f ssbo-id))))
    (define rl-update-shader-buffer
      (let ([f #f])
        (lambda (id data data-size offset)
          (unless f
            (set! f
              (foreign-procedure "rlUpdateShaderBuffer"
                (unsigned void* unsigned unsigned)
                void)))
          (f id data data-size offset))))
    (define rl-bind-shader-buffer
      (let ([f #f])
        (lambda (id index)
          (unless f
            (set! f
              (foreign-procedure "rlBindShaderBuffer"
                (unsigned unsigned)
                void)))
          (f id index))))
    (define rl-read-shader-buffer
      (let ([f #f])
        (lambda (id dest count offset)
          (unless f
            (set! f
              (foreign-procedure "rlReadShaderBuffer"
                (unsigned void* unsigned unsigned)
                void)))
          (f id dest count offset))))
    (define rl-copy-shader-buffer
      (let ([f #f])
        (lambda (dest-id src-id dest-offset src-offset count)
          (unless f
            (set! f
              (foreign-procedure "rlCopyShaderBuffer"
                (unsigned unsigned unsigned unsigned unsigned)
                void)))
          (f dest-id src-id dest-offset src-offset count))))
    (define rl-get-shader-buffer-size
      (let ([f #f])
        (lambda (id)
          (unless f
            (set! f
              (foreign-procedure "rlGetShaderBufferSize"
                (unsigned)
                unsigned)))
          (f id))))
    (define rl-bind-image-texture
      (let ([f #f])
        (lambda (id index format readonly)
          (unless f
            (set! f
              (foreign-procedure "rlBindImageTexture"
                (unsigned unsigned int unsigned-8)
                void)))
          (f id index format readonly))))
    (define rl-get-matrix-modelview
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlGetMatrixModelview" () (* Matrix))))
          (let ([ret (f)]
                [dst (make-ftype-pointer
                       Matrix
                       (foreign-alloc (ftype-sizeof Matrix)))])
            (ftype-set! Matrix (m-0) dst (ftype-ref Matrix (m-0) ret))
            (ftype-set! Matrix (m-4) dst (ftype-ref Matrix (m-4) ret))
            (ftype-set! Matrix (m-8) dst (ftype-ref Matrix (m-8) ret))
            (ftype-set! Matrix (m-12) dst (ftype-ref Matrix (m-12) ret))
            (ftype-set! Matrix (m-1) dst (ftype-ref Matrix (m-1) ret))
            (ftype-set! Matrix (m-5) dst (ftype-ref Matrix (m-5) ret))
            (ftype-set! Matrix (m-9) dst (ftype-ref Matrix (m-9) ret))
            (ftype-set! Matrix (m-13) dst (ftype-ref Matrix (m-13) ret))
            (ftype-set! Matrix (m-2) dst (ftype-ref Matrix (m-2) ret))
            (ftype-set! Matrix (m-6) dst (ftype-ref Matrix (m-6) ret))
            (ftype-set! Matrix (m-10) dst (ftype-ref Matrix (m-10) ret))
            (ftype-set! Matrix (m-14) dst (ftype-ref Matrix (m-14) ret))
            (ftype-set! Matrix (m-3) dst (ftype-ref Matrix (m-3) ret))
            (ftype-set! Matrix (m-7) dst (ftype-ref Matrix (m-7) ret))
            (ftype-set! Matrix (m-11) dst (ftype-ref Matrix (m-11) ret))
            (ftype-set! Matrix (m-15) dst (ftype-ref Matrix (m-15) ret))
            dst))))
    (define rl-get-matrix-projection
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlGetMatrixProjection" () (* Matrix))))
          (let ([ret (f)]
                [dst (make-ftype-pointer
                       Matrix
                       (foreign-alloc (ftype-sizeof Matrix)))])
            (ftype-set! Matrix (m-0) dst (ftype-ref Matrix (m-0) ret))
            (ftype-set! Matrix (m-4) dst (ftype-ref Matrix (m-4) ret))
            (ftype-set! Matrix (m-8) dst (ftype-ref Matrix (m-8) ret))
            (ftype-set! Matrix (m-12) dst (ftype-ref Matrix (m-12) ret))
            (ftype-set! Matrix (m-1) dst (ftype-ref Matrix (m-1) ret))
            (ftype-set! Matrix (m-5) dst (ftype-ref Matrix (m-5) ret))
            (ftype-set! Matrix (m-9) dst (ftype-ref Matrix (m-9) ret))
            (ftype-set! Matrix (m-13) dst (ftype-ref Matrix (m-13) ret))
            (ftype-set! Matrix (m-2) dst (ftype-ref Matrix (m-2) ret))
            (ftype-set! Matrix (m-6) dst (ftype-ref Matrix (m-6) ret))
            (ftype-set! Matrix (m-10) dst (ftype-ref Matrix (m-10) ret))
            (ftype-set! Matrix (m-14) dst (ftype-ref Matrix (m-14) ret))
            (ftype-set! Matrix (m-3) dst (ftype-ref Matrix (m-3) ret))
            (ftype-set! Matrix (m-7) dst (ftype-ref Matrix (m-7) ret))
            (ftype-set! Matrix (m-11) dst (ftype-ref Matrix (m-11) ret))
            (ftype-set! Matrix (m-15) dst (ftype-ref Matrix (m-15) ret))
            dst))))
    (define rl-get-matrix-transform
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "rlGetMatrixTransform" () (* Matrix))))
          (let ([ret (f)]
                [dst (make-ftype-pointer
                       Matrix
                       (foreign-alloc (ftype-sizeof Matrix)))])
            (ftype-set! Matrix (m-0) dst (ftype-ref Matrix (m-0) ret))
            (ftype-set! Matrix (m-4) dst (ftype-ref Matrix (m-4) ret))
            (ftype-set! Matrix (m-8) dst (ftype-ref Matrix (m-8) ret))
            (ftype-set! Matrix (m-12) dst (ftype-ref Matrix (m-12) ret))
            (ftype-set! Matrix (m-1) dst (ftype-ref Matrix (m-1) ret))
            (ftype-set! Matrix (m-5) dst (ftype-ref Matrix (m-5) ret))
            (ftype-set! Matrix (m-9) dst (ftype-ref Matrix (m-9) ret))
            (ftype-set! Matrix (m-13) dst (ftype-ref Matrix (m-13) ret))
            (ftype-set! Matrix (m-2) dst (ftype-ref Matrix (m-2) ret))
            (ftype-set! Matrix (m-6) dst (ftype-ref Matrix (m-6) ret))
            (ftype-set! Matrix (m-10) dst (ftype-ref Matrix (m-10) ret))
            (ftype-set! Matrix (m-14) dst (ftype-ref Matrix (m-14) ret))
            (ftype-set! Matrix (m-3) dst (ftype-ref Matrix (m-3) ret))
            (ftype-set! Matrix (m-7) dst (ftype-ref Matrix (m-7) ret))
            (ftype-set! Matrix (m-11) dst (ftype-ref Matrix (m-11) ret))
            (ftype-set! Matrix (m-15) dst (ftype-ref Matrix (m-15) ret))
            dst))))
    (define rl-get-matrix-projection-stereo
      (let ([f #f])
        (lambda (eye)
          (unless f
            (set! f
              (foreign-procedure "rlGetMatrixProjectionStereo"
                (int)
                (* Matrix))))
          (let ([ret (f eye)]
                [dst (make-ftype-pointer
                       Matrix
                       (foreign-alloc (ftype-sizeof Matrix)))])
            (ftype-set! Matrix (m-0) dst (ftype-ref Matrix (m-0) ret))
            (ftype-set! Matrix (m-4) dst (ftype-ref Matrix (m-4) ret))
            (ftype-set! Matrix (m-8) dst (ftype-ref Matrix (m-8) ret))
            (ftype-set! Matrix (m-12) dst (ftype-ref Matrix (m-12) ret))
            (ftype-set! Matrix (m-1) dst (ftype-ref Matrix (m-1) ret))
            (ftype-set! Matrix (m-5) dst (ftype-ref Matrix (m-5) ret))
            (ftype-set! Matrix (m-9) dst (ftype-ref Matrix (m-9) ret))
            (ftype-set! Matrix (m-13) dst (ftype-ref Matrix (m-13) ret))
            (ftype-set! Matrix (m-2) dst (ftype-ref Matrix (m-2) ret))
            (ftype-set! Matrix (m-6) dst (ftype-ref Matrix (m-6) ret))
            (ftype-set! Matrix (m-10) dst (ftype-ref Matrix (m-10) ret))
            (ftype-set! Matrix (m-14) dst (ftype-ref Matrix (m-14) ret))
            (ftype-set! Matrix (m-3) dst (ftype-ref Matrix (m-3) ret))
            (ftype-set! Matrix (m-7) dst (ftype-ref Matrix (m-7) ret))
            (ftype-set! Matrix (m-11) dst (ftype-ref Matrix (m-11) ret))
            (ftype-set! Matrix (m-15) dst (ftype-ref Matrix (m-15) ret))
            dst))))
    (define rl-get-matrix-view-offset-stereo
      (let ([f #f])
        (lambda (eye)
          (unless f
            (set! f
              (foreign-procedure "rlGetMatrixViewOffsetStereo"
                (int)
                (* Matrix))))
          (let ([ret (f eye)]
                [dst (make-ftype-pointer
                       Matrix
                       (foreign-alloc (ftype-sizeof Matrix)))])
            (ftype-set! Matrix (m-0) dst (ftype-ref Matrix (m-0) ret))
            (ftype-set! Matrix (m-4) dst (ftype-ref Matrix (m-4) ret))
            (ftype-set! Matrix (m-8) dst (ftype-ref Matrix (m-8) ret))
            (ftype-set! Matrix (m-12) dst (ftype-ref Matrix (m-12) ret))
            (ftype-set! Matrix (m-1) dst (ftype-ref Matrix (m-1) ret))
            (ftype-set! Matrix (m-5) dst (ftype-ref Matrix (m-5) ret))
            (ftype-set! Matrix (m-9) dst (ftype-ref Matrix (m-9) ret))
            (ftype-set! Matrix (m-13) dst (ftype-ref Matrix (m-13) ret))
            (ftype-set! Matrix (m-2) dst (ftype-ref Matrix (m-2) ret))
            (ftype-set! Matrix (m-6) dst (ftype-ref Matrix (m-6) ret))
            (ftype-set! Matrix (m-10) dst (ftype-ref Matrix (m-10) ret))
            (ftype-set! Matrix (m-14) dst (ftype-ref Matrix (m-14) ret))
            (ftype-set! Matrix (m-3) dst (ftype-ref Matrix (m-3) ret))
            (ftype-set! Matrix (m-7) dst (ftype-ref Matrix (m-7) ret))
            (ftype-set! Matrix (m-11) dst (ftype-ref Matrix (m-11) ret))
            (ftype-set! Matrix (m-15) dst (ftype-ref Matrix (m-15) ret))
            dst))))
    (define rl-set-matrix-projection
      (let ([f #f])
        (lambda (proj)
          (unless f
            (set! f
              (foreign-procedure "rlSetMatrixProjection"
                ((& Matrix))
                void)))
          (f proj))))
    (define rl-set-matrix-modelview
      (let ([f #f])
        (lambda (view)
          (unless f
            (set! f
              (foreign-procedure "rlSetMatrixModelview"
                ((& Matrix))
                void)))
          (f view))))
    (define rl-set-matrix-projection-stereo
      (let ([f #f])
        (lambda (right left)
          (unless f
            (set! f
              (foreign-procedure "rlSetMatrixProjectionStereo"
                ((& Matrix) (& Matrix))
                void)))
          (f right left))))
    (define rl-set-matrix-view-offset-stereo
      (let ([f #f])
        (lambda (right left)
          (unless f
            (set! f
              (foreign-procedure "rlSetMatrixViewOffsetStereo"
                ((& Matrix) (& Matrix))
                void)))
          (f right left))))
    (define rl-load-draw-cube
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlLoadDrawCube" () void)))
          (f))))
    (define rl-load-draw-quad
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "rlLoadDrawQuad" () void)))
          (f))))
    (define (load-rlgl)
      (load-shared-object
        (let loop ([libs (library-directories)])
          (cond
            [(null? libs) (error 'rlgl "rlgl not found")]
            [(file-exists?
               (string-append (caar libs) "/raylib/rlgl.dll"))
             (string-append (caar libs) "/raylib/rlgl.dll")]
            [else (loop (cdr libs))]))))))
