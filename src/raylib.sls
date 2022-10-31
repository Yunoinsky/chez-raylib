(let load-loop ([libs (library-directories)])
  (when (null? libs) (error #f "Raylib not found"))
  (let ([libpath (string-append
                   (caar libs)
                   "/raylib/raylib.dll")])
    (if (file-exists? libpath)
        (load-shared-object libpath)
        (load-loop (cdr libs)))))
(library (raylib raylib (0 2))
  (export RAYWHITE MAGENTA BLANK BLACK WHITE DARKBROWN BROWN
   BEIGE DARKPURPLE VIOLET PURPLE DARKBLUE BLUE SKYBLUE
   DARKGREEN LIME GREEN MAROON RED PINK ORANGE GOLD YELLOW
   DARKGRAY GRAY LIGHTGRAY detach-audio-stream-processor
   attach-audio-stream-processor set-audio-stream-callback
   set-audio-stream-buffer-size-default set-audio-stream-pan
   set-audio-stream-pitch set-audio-stream-volume
   stop-audio-stream is-audio-stream-playing
   resume-audio-stream pause-audio-stream play-audio-stream
   is-audio-stream-processed update-audio-stream
   unload-audio-stream load-audio-stream get-music-time-played
   get-music-time-length set-music-pan set-music-pitch
   set-music-volume seek-music-stream resume-music-stream
   pause-music-stream stop-music-stream update-music-stream
   is-music-stream-playing play-music-stream
   unload-music-stream load-music-stream-from-memory
   load-music-stream unload-wave-samples load-wave-samples
   wave-format wave-crop wave-copy set-sound-pan
   set-sound-pitch set-sound-volume is-sound-playing
   get-sounds-playing stop-sound-multi play-sound-multi
   resume-sound pause-sound stop-sound play-sound
   export-wave-as-code export-wave unload-sound unload-wave
   update-sound load-sound-from-wave load-sound
   load-wave-from-memory load-wave set-master-volume
   is-audio-device-ready close-audio-device init-audio-device
   get-ray-collision-quad get-ray-collision-triangle
   get-ray-collision-mesh get-ray-collision-box
   get-ray-collision-sphere check-collision-box-sphere
   check-collision-boxes check-collision-spheres
   is-model-animation-valid unload-model-animations
   unload-model-animation update-model-animation
   load-model-animations set-model-mesh-material
   set-material-texture unload-material load-material-default
   load-materials gen-mesh-cubicmap gen-mesh-heightmap
   gen-mesh-knot gen-mesh-torus gen-mesh-cone gen-mesh-cylinder
   gen-mesh-hemi-sphere gen-mesh-sphere gen-mesh-cube
   gen-mesh-plane gen-mesh-poly gen-mesh-tangents
   get-mesh-bounding-box export-mesh draw-mesh-instanced
   draw-mesh unload-mesh update-mesh-buffer upload-mesh
   draw-billboard-pro draw-billboard-rec draw-billboard
   draw-bounding-box draw-model-wires-ex draw-model-wires
   draw-model-ex draw-model get-model-bounding-box
   unload-model-keep-meshes unload-model load-model-from-mesh
   load-model draw-grid draw-ray draw-plane
   draw-cylinder-wires-ex draw-cylinder-wires draw-cylinder-ex
   draw-cylinder draw-sphere-wires draw-sphere-ex draw-sphere
   draw-cube-texture-rec draw-cube-texture draw-cube-wires-v
   draw-cube-wires draw-cube-v draw-cube draw-triangle-strip-3d
   draw-triangle-3d draw-circle-3d draw-point-3d draw-line-3d
   text-to-integer text-to-pascal text-to-lower text-to-upper
   text-find-index text-append text-insert text-replace
   text-subtext text-length text-is-equal text-copy
   codepoint-to-utf8 get-codepoint get-codepoint-count
   unload-codepoints load-codepoints get-glyph-atlas-rec
   get-glyph-info get-glyph-index measure-text-ex measure-text
   draw-text-codepoints draw-text-codepoint draw-text-pro
   draw-text-ex draw-text draw-fps export-font-as-code
   unload-font unload-font-data load-font-data
   load-font-from-memory load-font-from-image load-font-ex
   load-font get-font-default get-pixel-data-size
   set-pixel-color get-pixel-color get-color color-alpha-blend
   color-alpha color-from-hsv color-to-hsv
   color-from-normalized color-normalize color-to-int fade
   draw-texture-poly draw-texture-npatch draw-texture-pro
   draw-texture-tiled draw-texture-quad draw-texture-rec
   draw-texture-ex draw-texture-v draw-texture set-texture-wrap
   set-texture-filter gen-texture-mipmaps update-texture-rec
   update-texture unload-render-texture unload-texture
   load-render-texture load-texture-cubemap
   load-texture-from-image load-texture image-draw-text-ex
   image-draw-text image-draw image-draw-rectangle-lines
   image-draw-rectangle-rec image-draw-rectangle-v
   image-draw-rectangle image-draw-circle-v image-draw-circle
   image-draw-line-v image-draw-line image-draw-pixel-v
   image-draw-pixel image-clear-background get-image-color
   get-image-alpha-border unload-image-palette
   unload-image-colors load-image-palette load-image-colors
   image-color-replace image-color-brightness
   image-color-contrast image-color-grayscale
   image-color-invert image-color-tint image-rotate-ccw
   image-rotate-cw image-flip-horizontal image-flip-vertical
   image-dither image-mipmaps image-resize-canvas
   image-resize-nn image-resize image-alpha-premultiply
   image-alpha-mask image-alpha-clear image-alpha-crop
   image-crop image-to-pot image-format image-text-ex
   image-text image-from-image image-copy gen-image-cellular
   gen-image-white-noise gen-image-checked
   gen-image-gradient-radial gen-image-gradient-h
   gen-image-gradient-v gen-image-color export-image-as-code
   export-image unload-image load-image-from-screen
   load-image-from-texture load-image-from-memory
   load-image-anim load-image-raw load-image get-collision-rec
   check-collision-point-line check-collision-lines
   check-collision-point-triangle check-collision-point-circle
   check-collision-point-rec check-collision-circle-rec
   check-collision-circles check-collision-recs
   draw-poly-lines-ex draw-poly-lines draw-poly
   draw-triangle-strip draw-triangle-fan draw-triangle-lines
   draw-triangle draw-rectangle-rounded-lines
   draw-rectangle-rounded draw-rectangle-lines-ex
   draw-rectangle-lines draw-rectangle-gradient-ex
   draw-rectangle-gradient-h draw-rectangle-gradient-v
   draw-rectangle-pro draw-rectangle-rec draw-rectangle-v
   draw-rectangle draw-ring-lines draw-ring draw-ellipse-lines
   draw-ellipse draw-circle-lines draw-circle-v
   draw-circle-gradient draw-circle-sector-lines
   draw-circle-sector draw-circle draw-line-strip
   draw-line-bezier-cubic draw-line-bezier-quad
   draw-line-bezier draw-line-ex draw-line-v draw-line
   draw-pixel-v draw-pixel set-shapes-texture
   set-camera-move-controls set-camera-smooth-zoom-control
   set-camera-alt-control set-camera-pan-control update-camera
   set-camera-mode get-gesture-pinch-angle
   get-gesture-pinch-vector get-gesture-drag-angle
   get-gesture-drag-vector get-gesture-hold-duration
   get-gesture-detected is-gesture-detected
   set-gestures-enabled get-touch-point-count
   get-touch-point-id get-touch-position get-touch-y
   get-touch-x set-mouse-cursor get-mouse-wheel-move-v
   get-mouse-wheel-move set-mouse-scale set-mouse-offset
   set-mouse-position get-mouse-delta get-mouse-position
   get-mouse-y get-mouse-x is-mouse-button-up
   is-mouse-button-released is-mouse-button-down
   is-mouse-button-pressed set-gamepad-mappings
   get-gamepad-axis-movement get-gamepad-axis-count
   get-gamepad-button-pressed is-gamepad-button-up
   is-gamepad-button-released is-gamepad-button-down
   is-gamepad-button-pressed get-gamepad-name
   is-gamepad-available get-char-pressed get-key-pressed
   set-exit-key is-key-up is-key-released is-key-down
   is-key-pressed decode-data-base-64 encode-data-base-64
   decompress-data compress-data get-file-mod-time
   unload-dropped-files load-dropped-files is-file-dropped
   unload-directory-files load-directory-files-ex
   load-directory-files is-path-file change-directory
   get-application-directory get-working-directory
   get-prev-directory-path get-directory-path
   get-file-name-without-ext get-file-name get-file-extension
   get-file-length is-file-extension directory-exists
   file-exists save-file-text unload-file-text load-file-text
   export-data-as-code save-file-data unload-file-data
   load-file-data set-save-file-text-callback
   set-load-file-text-callback set-save-file-data-callback
   set-load-file-data-callback set-trace-log-callback open-url
   mem-free mem-realloc mem-alloc set-trace-log-level
   set-config-flags take-screenshot set-random-seed
   get-random-value get-time get-frame-time get-fps
   set-target-fps get-world-to-screen-2d get-world-to-screen-ex
   get-screen-to-world-2d get-world-to-screen
   get-camera-matrix-2d get-camera-matrix get-mouse-ray
   unload-shader set-shader-value-texture
   set-shader-value-matrix set-shader-value-v set-shader-value
   get-shader-location-attrib get-shader-location
   load-shader-from-memory load-shader unload-vr-stereo-config
   load-vr-stereo-config end-vr-stereo-mode
   begin-vr-stereo-mode end-scissor-mode begin-scissor-mode
   end-blend-mode begin-blend-mode end-shader-mode
   begin-shader-mode end-texture-mode begin-texture-mode
   end-mode-3d begin-mode-3d end-mode-2d begin-mode-2d
   end-drawing begin-drawing clear-background
   is-cursor-on-screen disable-cursor enable-cursor
   is-cursor-hidden hide-cursor show-cursor wait-time
   poll-input-events swap-screen-buffer disable-event-waiting
   enable-event-waiting get-clipboard-text set-clipboard-text
   get-monitor-name get-window-scale-dpi get-window-position
   get-monitor-refresh-rate get-monitor-physical-height
   get-monitor-physical-width get-monitor-height
   get-monitor-width get-monitor-position get-current-monitor
   get-monitor-count get-render-height get-render-width
   get-screen-height get-screen-width get-window-handle
   set-window-opacity set-window-size set-window-min-size
   set-window-monitor set-window-position set-window-title
   set-window-icon restore-window minimize-window
   maximize-window toggle-fullscreen clear-window-state
   set-window-state is-window-state is-window-resized
   is-window-focused is-window-maximized is-window-minimized
   is-window-hidden is-window-fullscreen is-window-ready
   close-window window-should-close init-window
   make-audio-callback make-save-file-text-callback
   make-load-file-text-callback make-save-file-data-callback
   make-load-file-data-callback make-trace-log-callback
   make-file-path-list file-path-list-ref& file-path-list-get
   file-path-list-set! File-Path-List make-vr-stereo-config
   vr-stereo-config-ref& vr-stereo-config-get
   vr-stereo-config-set! Vr-Stereo-Config make-vr-device-info
   vr-device-info-ref& vr-device-info-get vr-device-info-set!
   Vr-Device-Info make-music music-ref& music-get music-set!
   Music make-sound sound-ref& sound-get sound-set! Sound
   make-audio-stream audio-stream-ref& audio-stream-get
   audio-stream-set! Audio-Stream make-wave wave-ref& wave-get
   wave-set! Wave make-bounding-box bounding-box-ref&
   bounding-box-get bounding-box-set! Bounding-Box
   make-ray-collision ray-collision-ref& ray-collision-get
   ray-collision-set! Ray-Collision make-ray ray-ref& ray-get
   ray-set! Ray make-model-animation model-animation-ref&
   model-animation-get model-animation-set! Model-Animation
   make-model model-ref& model-get model-set! Model
   make-bone-info bone-info-ref& bone-info-get bone-info-set!
   Bone-Info make-transform transform-ref& transform-get
   transform-set! Transform make-material material-ref&
   material-get material-set! Material make-material-map
   material-map-ref& material-map-get material-map-set!
   Material-Map make-shader shader-ref& shader-get shader-set!
   Shader make-mesh mesh-ref& mesh-get mesh-set! Mesh
   make-camera-2d camera-2d-ref& camera-2d-get camera-2d-set!
   Camera-2D make-camera-3d camera-3d-ref& camera-3d-get
   camera-3d-set! Camera-3D make-font font-ref& font-get
   font-set! Font make-glyph-info glyph-info-ref&
   glyph-info-get glyph-info-set! Glyph-Info make-npatch-info
   npatch-info-ref& npatch-info-get npatch-info-set!
   Npatch-Info make-render-texture render-texture-ref&
   render-texture-get render-texture-set! Render-Texture
   copy-texture make-texture texture-ref& texture-get
   texture-set! Texture make-image image-ref& image-get
   image-set! Image copy-rectangle make-rectangle
   rectangle-ref& rectangle-get rectangle-set! Rectangle
   copy-color make-color color-ref& color-get color-set! Color
   copy-matrix make-matrix matrix-ref& matrix-get matrix-set!
   Matrix copy-vector-4 make-vector-4 vector-4-ref&
   vector-4-get vector-4-set! Vector-4 copy-vector-3
   make-vector-3 vector-3-ref& vector-3-get vector-3-set!
   Vector-3 copy-vector-2 make-vector-2 vector-2-ref&
   vector-2-get vector-2-set! Vector-2
   NPATCH_THREE_PATCH_HORIZONTAL NPATCH_THREE_PATCH_VERTICAL
   NPATCH_NINE_PATCH CAMERA_ORTHOGRAPHIC CAMERA_PERSPECTIVE
   CAMERA_THIRD_PERSON CAMERA_FIRST_PERSON CAMERA_ORBITAL
   CAMERA_FREE CAMERA_CUSTOM GESTURE_PINCH_OUT GESTURE_PINCH_IN
   GESTURE_SWIPE_DOWN GESTURE_SWIPE_UP GESTURE_SWIPE_LEFT
   GESTURE_SWIPE_RIGHT GESTURE_DRAG GESTURE_HOLD
   GESTURE_DOUBLETAP GESTURE_TAP GESTURE_NONE
   BLEND_CUSTOM_SEPARATE BLEND_CUSTOM BLEND_ALPHA_PREMULTIPLY
   BLEND_SUBTRACT_COLORS BLEND_ADD_COLORS BLEND_MULTIPLIED
   BLEND_ADDITIVE BLEND_ALPHA FONT_SDF FONT_BITMAP FONT_DEFAULT
   CUBEMAP_LAYOUT_PANORAMA CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE
   CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR
   CUBEMAP_LAYOUT_LINE_HORIZONTAL CUBEMAP_LAYOUT_LINE_VERTICAL
   CUBEMAP_LAYOUT_AUTO_DETECT TEXTURE_WRAP_MIRROR_CLAMP
   TEXTURE_WRAP_MIRROR_REPEAT TEXTURE_WRAP_CLAMP
   TEXTURE_WRAP_REPEAT TEXTURE_FILTER_ANISOTROPIC_16X
   TEXTURE_FILTER_ANISOTROPIC_8X TEXTURE_FILTER_ANISOTROPIC_4X
   TEXTURE_FILTER_TRILINEAR TEXTURE_FILTER_BILINEAR
   TEXTURE_FILTER_POINT PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA
   PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA
   PIXELFORMAT_COMPRESSED_PVRT_RGBA
   PIXELFORMAT_COMPRESSED_PVRT_RGB
   PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA
   PIXELFORMAT_COMPRESSED_ETC2_RGB
   PIXELFORMAT_COMPRESSED_ETC1_RGB
   PIXELFORMAT_COMPRESSED_DXT5_RGBA
   PIXELFORMAT_COMPRESSED_DXT3_RGBA
   PIXELFORMAT_COMPRESSED_DXT1_RGBA
   PIXELFORMAT_COMPRESSED_DXT1_RGB
   PIXELFORMAT_UNCOMPRESSED_R32G32B32A32
   PIXELFORMAT_UNCOMPRESSED_R32G32B32
   PIXELFORMAT_UNCOMPRESSED_R32
   PIXELFORMAT_UNCOMPRESSED_R8G8B8A8
   PIXELFORMAT_UNCOMPRESSED_R4G4B4A4
   PIXELFORMAT_UNCOMPRESSED_R5G5B5A1
   PIXELFORMAT_UNCOMPRESSED_R8G8B8
   PIXELFORMAT_UNCOMPRESSED_R5G6B5
   PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA
   PIXELFORMAT_UNCOMPRESSED_GRAYSCALE SHADER_ATTRIB_VEC4
   SHADER_ATTRIB_VEC3 SHADER_ATTRIB_VEC2 SHADER_ATTRIB_FLOAT
   SHADER_UNIFORM_SAMPLER2D SHADER_UNIFORM_IVEC4
   SHADER_UNIFORM_IVEC3 SHADER_UNIFORM_IVEC2 SHADER_UNIFORM_INT
   SHADER_UNIFORM_VEC4 SHADER_UNIFORM_VEC3 SHADER_UNIFORM_VEC2
   SHADER_UNIFORM_FLOAT SHADER_LOC_MAP_BRDF
   SHADER_LOC_MAP_PREFILTER SHADER_LOC_MAP_IRRADIANCE
   SHADER_LOC_MAP_CUBEMAP SHADER_LOC_MAP_HEIGHT
   SHADER_LOC_MAP_EMISSION SHADER_LOC_MAP_OCCLUSION
   SHADER_LOC_MAP_ROUGHNESS SHADER_LOC_MAP_NORMAL
   SHADER_LOC_MAP_METALNESS SHADER_LOC_MAP_ALBEDO
   SHADER_LOC_COLOR_AMBIENT SHADER_LOC_COLOR_SPECULAR
   SHADER_LOC_COLOR_DIFFUSE SHADER_LOC_VECTOR_VIEW
   SHADER_LOC_MATRIX_NORMAL SHADER_LOC_MATRIX_MODEL
   SHADER_LOC_MATRIX_PROJECTION SHADER_LOC_MATRIX_VIEW
   SHADER_LOC_MATRIX_MVP SHADER_LOC_VERTEX_COLOR
   SHADER_LOC_VERTEX_TANGENT SHADER_LOC_VERTEX_NORMAL
   SHADER_LOC_VERTEX_TEXCOORD02 SHADER_LOC_VERTEX_TEXCOORD01
   SHADER_LOC_VERTEX_POSITION MATERIAL_MAP_BRDF
   MATERIAL_MAP_PREFILTER MATERIAL_MAP_IRRADIANCE
   MATERIAL_MAP_CUBEMAP MATERIAL_MAP_HEIGHT
   MATERIAL_MAP_EMISSION MATERIAL_MAP_OCCLUSION
   MATERIAL_MAP_ROUGHNESS MATERIAL_MAP_NORMAL
   MATERIAL_MAP_METALNESS MATERIAL_MAP_ALBEDO
   GAMEPAD_AXIS_RIGHT_TRIGGER GAMEPAD_AXIS_LEFT_TRIGGER
   GAMEPAD_AXIS_RIGHT_Y GAMEPAD_AXIS_RIGHT_X
   GAMEPAD_AXIS_LEFT_Y GAMEPAD_AXIS_LEFT_X
   GAMEPAD_BUTTON_RIGHT_THUMB GAMEPAD_BUTTON_LEFT_THUMB
   GAMEPAD_BUTTON_MIDDLE_RIGHT GAMEPAD_BUTTON_MIDDLE
   GAMEPAD_BUTTON_MIDDLE_LEFT GAMEPAD_BUTTON_RIGHT_TRIGGER_2
   GAMEPAD_BUTTON_RIGHT_TRIGGER_1 GAMEPAD_BUTTON_LEFT_TRIGGER_2
   GAMEPAD_BUTTON_LEFT_TRIGGER_1 GAMEPAD_BUTTON_RIGHT_FACE_LEFT
   GAMEPAD_BUTTON_RIGHT_FACE_DOWN
   GAMEPAD_BUTTON_RIGHT_FACE_RIGHT GAMEPAD_BUTTON_RIGHT_FACE_UP
   GAMEPAD_BUTTON_LEFT_FACE_LEFT GAMEPAD_BUTTON_LEFT_FACE_DOWN
   GAMEPAD_BUTTON_LEFT_FACE_RIGHT GAMEPAD_BUTTON_LEFT_FACE_UP
   GAMEPAD_BUTTON_UNKNOWN MOUSE_CURSOR_NOT_ALLOWED
   MOUSE_CURSOR_RESIZE_ALL MOUSE_CURSOR_RESIZE_NESW
   MOUSE_CURSOR_RESIZE_NWSE MOUSE_CURSOR_RESIZE_NS
   MOUSE_CURSOR_RESIZE_EW MOUSE_CURSOR_POINTING_HAND
   MOUSE_CURSOR_CROSSHAIR MOUSE_CURSOR_IBEAM MOUSE_CURSOR_ARROW
   MOUSE_CURSOR_DEFAULT MOUSE_BUTTON_BACK MOUSE_BUTTON_FORWARD
   MOUSE_BUTTON_EXTRA MOUSE_BUTTON_SIDE MOUSE_BUTTON_MIDDLE
   MOUSE_BUTTON_RIGHT MOUSE_BUTTON_LEFT KEY_VOLUME_DOWN
   KEY_VOLUME_UP KEY_MENU KEY_BACK KEY_KP_EQUAL KEY_KP_ENTER
   KEY_KP_ADD KEY_KP_SUBTRACT KEY_KP_MULTIPLY KEY_KP_DIVIDE
   KEY_KP_DECIMAL KEY_KP_9 KEY_KP_8 KEY_KP_7 KEY_KP_6 KEY_KP_5
   KEY_KP_4 KEY_KP_3 KEY_KP_2 KEY_KP_1 KEY_KP_0 KEY_KB_MENU
   KEY_RIGHT_SUPER KEY_RIGHT_ALT KEY_RIGHT_CONTROL
   KEY_RIGHT_SHIFT KEY_LEFT_SUPER KEY_LEFT_ALT KEY_LEFT_CONTROL
   KEY_LEFT_SHIFT KEY_F12 KEY_F11 KEY_F10 KEY_F9 KEY_F8 KEY_F7
   KEY_F6 KEY_F5 KEY_F4 KEY_F3 KEY_F2 KEY_F1 KEY_PAUSE
   KEY_PRINT_SCREEN KEY_NUM_LOCK KEY_SCROLL_LOCK KEY_CAPS_LOCK
   KEY_END KEY_HOME KEY_PAGE_DOWN KEY_PAGE_UP KEY_UP KEY_DOWN
   KEY_LEFT KEY_RIGHT KEY_DELETE KEY_INSERT KEY_BACKSPACE
   KEY_TAB KEY_ENTER KEY_ESCAPE KEY_SPACE KEY_GRAVE
   KEY_RIGHT_BRACKET KEY_BACKSLASH KEY_LEFT_BRACKET KEY_Z KEY_Y
   KEY_X KEY_W KEY_V KEY_U KEY_T KEY_S KEY_R KEY_Q KEY_P KEY_O
   KEY_N KEY_M KEY_L KEY_K KEY_J KEY_I KEY_H KEY_G KEY_F KEY_E
   KEY_D KEY_C KEY_B KEY_A KEY_EQUAL KEY_SEMICOLON KEY_NINE
   KEY_EIGHT KEY_SEVEN KEY_SIX KEY_FIVE KEY_FOUR KEY_THREE
   KEY_TWO KEY_ONE KEY_ZERO KEY_SLASH KEY_PERIOD KEY_MINUS
   KEY_COMMA KEY_APOSTROPHE KEY_NULL LOG_NONE LOG_FATAL
   LOG_ERROR LOG_WARNING LOG_INFO LOG_DEBUG LOG_TRACE LOG_ALL
   FLAG_INTERLACED_HINT FLAG_MSAA_4X_HINT
   FLAG_WINDOW_MOUSE_PASSTHROUGH FLAG_WINDOW_HIGHDPI
   FLAG_WINDOW_TRANSPARENT FLAG_WINDOW_ALWAYS_RUN
   FLAG_WINDOW_TOPMOST FLAG_WINDOW_UNFOCUSED
   FLAG_WINDOW_MAXIMIZED FLAG_WINDOW_MINIMIZED
   FLAG_WINDOW_HIDDEN FLAG_WINDOW_UNDECORATED
   FLAG_WINDOW_RESIZABLE FLAG_FULLSCREEN_MODE FLAG_VSYNC_HINT
   rad->deg deg->rad PI drawing-begin mode-3d-begin
   blend-mode-begin scissor-mode-begin float int arr*
   make-array trace-log make-camera3d)
  (import (chezscheme))
  (define make-camera3d
    (lambda (position target up fovy projection)
      (let ([camera (make-camera-3d)])
        (make-vector-3
          (camera-3d-ref& camera position)
          (car position)
          (cadr position)
          (caddr position))
        (make-vector-3
          (camera-3d-ref& camera target)
          (car target)
          (cadr target)
          (caddr target))
        (make-vector-3
          (camera-3d-ref& camera up)
          (car up)
          (cadr up)
          (caddr up))
        (camera-3d-set! camera fovy fovy)
        (camera-3d-set! camera projection projection)
        camera)))
  (define-syntax trace-log
    (syntax-rules ()
      [(_ log-type text)
       (begin
         (display
           (case log-type
             [1 "\x1B;[32mTRACE: \x1B;[0m"]
             [2 "\x1B;[34mDEBUG: \x1B;[0m"]
             [3 "\x1B;[36mINFO: \x1B;[0m"]
             [4 "\x1B;[33mWARNING: \x1B;[0m"]
             [5 "\x1B;[31mERROR: \x1B;[0m"]
             [6 "\x1B;[35mFATAL: \x1B;[0m"]
             [else ""]))
         (display text)
         (newline))]
      [(_ log-type text args ...)
       (trace-log log-type (format text args ...))]))
  (define-syntax make-array
    (syntax-rules ()
      [(_ num ftype-name)
       (let ([size (ftype-sizeof ftype-name)]
             [arr (make-vector num)])
         (do ([i 0 (\x31;+ i)]
              [addr (foreign-alloc (* num size)) (+ addr size)])
             ((= i num) arr)
           (vector-set! arr i (make-ftype-pointer ftype-name addr))))]
      [(_ data-list ftype-name maker-fn)
       (let* ([size (ftype-sizeof ftype-name)]
              [num (length data-list)]
              [arr (make-vector num)])
         (do ([i 0 (\x31;+ i)]
              [addr (foreign-alloc (* num size)) (+ addr size)]
              [dl data-list (cdr dl)])
             ((= i num) arr)
           (vector-set!
             arr
             i
             (apply
               maker-fn
               (cons (make-ftype-pointer ftype-name addr) (car dl))))))]))
  (define-syntax arr*
    (syntax-rules () [(_ arr) (vector-ref arr 0)]))
  (define-syntax int
    (syntax-rules ()
      [(_ f) (if (flonum? f) (flonum->fixnum (round f)) f)]))
  (define-syntax float
    (syntax-rules ()
      [(_ f) (if (fixnum? f) (fixnum->flonum f) f)]))
  (define-syntax scissor-mode-begin
    (syntax-rules ()
      [(_ rect-l e0 e1 ...)
       (begin
         (apply begin-scissor-mode rect-l)
         e0
         e1
         ...
         (end-blend-mode))]))
  (define-syntax blend-mode-begin
    (syntax-rules ()
      [(_ blend-mode e0 e1 ...)
       (begin
         (begin-blend-mode blend-mode)
         e0
         e1
         ...
         (end-blend-mode))]))
  (define-syntax mode-3d-begin
    (syntax-rules ()
      [(_ camera e0 e1 ...)
       (begin (begin-mode-3d camera) e0 e1 ... (end-mode-3d))]))
  (define-syntax drawing-begin
    (syntax-rules ()
      [(_ e0 e1 ...)
       (begin (begin-drawing) e0 e1 ... (end-drawing))]))
  (define PI 3.141592653589793)
  (define deg->rad (lambda (deg) (/ (* deg PI) 180)))
  (define rad->deg (lambda (rad) (/ (* rad 180) PI)))
  (define FLAG_VSYNC_HINT 64)
  (define FLAG_FULLSCREEN_MODE 2)
  (define FLAG_WINDOW_RESIZABLE 4)
  (define FLAG_WINDOW_UNDECORATED 8)
  (define FLAG_WINDOW_HIDDEN 128)
  (define FLAG_WINDOW_MINIMIZED 512)
  (define FLAG_WINDOW_MAXIMIZED 1024)
  (define FLAG_WINDOW_UNFOCUSED 2048)
  (define FLAG_WINDOW_TOPMOST 4096)
  (define FLAG_WINDOW_ALWAYS_RUN 256)
  (define FLAG_WINDOW_TRANSPARENT 16)
  (define FLAG_WINDOW_HIGHDPI 8192)
  (define FLAG_WINDOW_MOUSE_PASSTHROUGH 16384)
  (define FLAG_MSAA_4X_HINT 32)
  (define FLAG_INTERLACED_HINT 65536)
  (define LOG_ALL 0)
  (define LOG_TRACE 1)
  (define LOG_DEBUG 2)
  (define LOG_INFO 3)
  (define LOG_WARNING 4)
  (define LOG_ERROR 5)
  (define LOG_FATAL 6)
  (define LOG_NONE 7)
  (define KEY_NULL 0)
  (define KEY_APOSTROPHE 39)
  (define KEY_COMMA 44)
  (define KEY_MINUS 45)
  (define KEY_PERIOD 46)
  (define KEY_SLASH 47)
  (define KEY_ZERO 48)
  (define KEY_ONE 49)
  (define KEY_TWO 50)
  (define KEY_THREE 51)
  (define KEY_FOUR 52)
  (define KEY_FIVE 53)
  (define KEY_SIX 54)
  (define KEY_SEVEN 55)
  (define KEY_EIGHT 56)
  (define KEY_NINE 57)
  (define KEY_SEMICOLON 59)
  (define KEY_EQUAL 61)
  (define KEY_A 65)
  (define KEY_B 66)
  (define KEY_C 67)
  (define KEY_D 68)
  (define KEY_E 69)
  (define KEY_F 70)
  (define KEY_G 71)
  (define KEY_H 72)
  (define KEY_I 73)
  (define KEY_J 74)
  (define KEY_K 75)
  (define KEY_L 76)
  (define KEY_M 77)
  (define KEY_N 78)
  (define KEY_O 79)
  (define KEY_P 80)
  (define KEY_Q 81)
  (define KEY_R 82)
  (define KEY_S 83)
  (define KEY_T 84)
  (define KEY_U 85)
  (define KEY_V 86)
  (define KEY_W 87)
  (define KEY_X 88)
  (define KEY_Y 89)
  (define KEY_Z 90)
  (define KEY_LEFT_BRACKET 91)
  (define KEY_BACKSLASH 92)
  (define KEY_RIGHT_BRACKET 93)
  (define KEY_GRAVE 96)
  (define KEY_SPACE 32)
  (define KEY_ESCAPE 256)
  (define KEY_ENTER 257)
  (define KEY_TAB 258)
  (define KEY_BACKSPACE 259)
  (define KEY_INSERT 260)
  (define KEY_DELETE 261)
  (define KEY_RIGHT 262)
  (define KEY_LEFT 263)
  (define KEY_DOWN 264)
  (define KEY_UP 265)
  (define KEY_PAGE_UP 266)
  (define KEY_PAGE_DOWN 267)
  (define KEY_HOME 268)
  (define KEY_END 269)
  (define KEY_CAPS_LOCK 280)
  (define KEY_SCROLL_LOCK 281)
  (define KEY_NUM_LOCK 282)
  (define KEY_PRINT_SCREEN 283)
  (define KEY_PAUSE 284)
  (define KEY_F1 290)
  (define KEY_F2 291)
  (define KEY_F3 292)
  (define KEY_F4 293)
  (define KEY_F5 294)
  (define KEY_F6 295)
  (define KEY_F7 296)
  (define KEY_F8 297)
  (define KEY_F9 298)
  (define KEY_F10 299)
  (define KEY_F11 300)
  (define KEY_F12 301)
  (define KEY_LEFT_SHIFT 340)
  (define KEY_LEFT_CONTROL 341)
  (define KEY_LEFT_ALT 342)
  (define KEY_LEFT_SUPER 343)
  (define KEY_RIGHT_SHIFT 344)
  (define KEY_RIGHT_CONTROL 345)
  (define KEY_RIGHT_ALT 346)
  (define KEY_RIGHT_SUPER 347)
  (define KEY_KB_MENU 348)
  (define KEY_KP_0 320)
  (define KEY_KP_1 321)
  (define KEY_KP_2 322)
  (define KEY_KP_3 323)
  (define KEY_KP_4 324)
  (define KEY_KP_5 325)
  (define KEY_KP_6 326)
  (define KEY_KP_7 327)
  (define KEY_KP_8 328)
  (define KEY_KP_9 329)
  (define KEY_KP_DECIMAL 330)
  (define KEY_KP_DIVIDE 331)
  (define KEY_KP_MULTIPLY 332)
  (define KEY_KP_SUBTRACT 333)
  (define KEY_KP_ADD 334)
  (define KEY_KP_ENTER 335)
  (define KEY_KP_EQUAL 336)
  (define KEY_BACK 4)
  (define KEY_MENU 82)
  (define KEY_VOLUME_UP 24)
  (define KEY_VOLUME_DOWN 25)
  (define MOUSE_BUTTON_LEFT 0)
  (define MOUSE_BUTTON_RIGHT 1)
  (define MOUSE_BUTTON_MIDDLE 2)
  (define MOUSE_BUTTON_SIDE 3)
  (define MOUSE_BUTTON_EXTRA 4)
  (define MOUSE_BUTTON_FORWARD 5)
  (define MOUSE_BUTTON_BACK 6)
  (define MOUSE_CURSOR_DEFAULT 0)
  (define MOUSE_CURSOR_ARROW 1)
  (define MOUSE_CURSOR_IBEAM 2)
  (define MOUSE_CURSOR_CROSSHAIR 3)
  (define MOUSE_CURSOR_POINTING_HAND 4)
  (define MOUSE_CURSOR_RESIZE_EW 5)
  (define MOUSE_CURSOR_RESIZE_NS 6)
  (define MOUSE_CURSOR_RESIZE_NWSE 7)
  (define MOUSE_CURSOR_RESIZE_NESW 8)
  (define MOUSE_CURSOR_RESIZE_ALL 9)
  (define MOUSE_CURSOR_NOT_ALLOWED 10)
  (define GAMEPAD_BUTTON_UNKNOWN 0)
  (define GAMEPAD_BUTTON_LEFT_FACE_UP 1)
  (define GAMEPAD_BUTTON_LEFT_FACE_RIGHT 2)
  (define GAMEPAD_BUTTON_LEFT_FACE_DOWN 3)
  (define GAMEPAD_BUTTON_LEFT_FACE_LEFT 4)
  (define GAMEPAD_BUTTON_RIGHT_FACE_UP 5)
  (define GAMEPAD_BUTTON_RIGHT_FACE_RIGHT 6)
  (define GAMEPAD_BUTTON_RIGHT_FACE_DOWN 7)
  (define GAMEPAD_BUTTON_RIGHT_FACE_LEFT 8)
  (define GAMEPAD_BUTTON_LEFT_TRIGGER_1 9)
  (define GAMEPAD_BUTTON_LEFT_TRIGGER_2 10)
  (define GAMEPAD_BUTTON_RIGHT_TRIGGER_1 11)
  (define GAMEPAD_BUTTON_RIGHT_TRIGGER_2 12)
  (define GAMEPAD_BUTTON_MIDDLE_LEFT 13)
  (define GAMEPAD_BUTTON_MIDDLE 14)
  (define GAMEPAD_BUTTON_MIDDLE_RIGHT 15)
  (define GAMEPAD_BUTTON_LEFT_THUMB 16)
  (define GAMEPAD_BUTTON_RIGHT_THUMB 17)
  (define GAMEPAD_AXIS_LEFT_X 0)
  (define GAMEPAD_AXIS_LEFT_Y 1)
  (define GAMEPAD_AXIS_RIGHT_X 2)
  (define GAMEPAD_AXIS_RIGHT_Y 3)
  (define GAMEPAD_AXIS_LEFT_TRIGGER 4)
  (define GAMEPAD_AXIS_RIGHT_TRIGGER 5)
  (define MATERIAL_MAP_ALBEDO 0)
  (define MATERIAL_MAP_METALNESS 1)
  (define MATERIAL_MAP_NORMAL 2)
  (define MATERIAL_MAP_ROUGHNESS 3)
  (define MATERIAL_MAP_OCCLUSION 4)
  (define MATERIAL_MAP_EMISSION 5)
  (define MATERIAL_MAP_HEIGHT 6)
  (define MATERIAL_MAP_CUBEMAP 7)
  (define MATERIAL_MAP_IRRADIANCE 8)
  (define MATERIAL_MAP_PREFILTER 9)
  (define MATERIAL_MAP_BRDF 10)
  (define SHADER_LOC_VERTEX_POSITION 0)
  (define SHADER_LOC_VERTEX_TEXCOORD01 1)
  (define SHADER_LOC_VERTEX_TEXCOORD02 2)
  (define SHADER_LOC_VERTEX_NORMAL 3)
  (define SHADER_LOC_VERTEX_TANGENT 4)
  (define SHADER_LOC_VERTEX_COLOR 5)
  (define SHADER_LOC_MATRIX_MVP 6)
  (define SHADER_LOC_MATRIX_VIEW 7)
  (define SHADER_LOC_MATRIX_PROJECTION 8)
  (define SHADER_LOC_MATRIX_MODEL 9)
  (define SHADER_LOC_MATRIX_NORMAL 10)
  (define SHADER_LOC_VECTOR_VIEW 11)
  (define SHADER_LOC_COLOR_DIFFUSE 12)
  (define SHADER_LOC_COLOR_SPECULAR 13)
  (define SHADER_LOC_COLOR_AMBIENT 14)
  (define SHADER_LOC_MAP_ALBEDO 15)
  (define SHADER_LOC_MAP_METALNESS 16)
  (define SHADER_LOC_MAP_NORMAL 17)
  (define SHADER_LOC_MAP_ROUGHNESS 18)
  (define SHADER_LOC_MAP_OCCLUSION 19)
  (define SHADER_LOC_MAP_EMISSION 20)
  (define SHADER_LOC_MAP_HEIGHT 21)
  (define SHADER_LOC_MAP_CUBEMAP 22)
  (define SHADER_LOC_MAP_IRRADIANCE 23)
  (define SHADER_LOC_MAP_PREFILTER 24)
  (define SHADER_LOC_MAP_BRDF 25)
  (define SHADER_UNIFORM_FLOAT 0)
  (define SHADER_UNIFORM_VEC2 1)
  (define SHADER_UNIFORM_VEC3 2)
  (define SHADER_UNIFORM_VEC4 3)
  (define SHADER_UNIFORM_INT 4)
  (define SHADER_UNIFORM_IVEC2 5)
  (define SHADER_UNIFORM_IVEC3 6)
  (define SHADER_UNIFORM_IVEC4 7)
  (define SHADER_UNIFORM_SAMPLER2D 8)
  (define SHADER_ATTRIB_FLOAT 0)
  (define SHADER_ATTRIB_VEC2 1)
  (define SHADER_ATTRIB_VEC3 2)
  (define SHADER_ATTRIB_VEC4 3)
  (define PIXELFORMAT_UNCOMPRESSED_GRAYSCALE 1)
  (define PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA 2)
  (define PIXELFORMAT_UNCOMPRESSED_R5G6B5 3)
  (define PIXELFORMAT_UNCOMPRESSED_R8G8B8 4)
  (define PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 5)
  (define PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 6)
  (define PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 7)
  (define PIXELFORMAT_UNCOMPRESSED_R32 8)
  (define PIXELFORMAT_UNCOMPRESSED_R32G32B32 9)
  (define PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 10)
  (define PIXELFORMAT_COMPRESSED_DXT1_RGB 11)
  (define PIXELFORMAT_COMPRESSED_DXT1_RGBA 12)
  (define PIXELFORMAT_COMPRESSED_DXT3_RGBA 13)
  (define PIXELFORMAT_COMPRESSED_DXT5_RGBA 14)
  (define PIXELFORMAT_COMPRESSED_ETC1_RGB 15)
  (define PIXELFORMAT_COMPRESSED_ETC2_RGB 16)
  (define PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA 17)
  (define PIXELFORMAT_COMPRESSED_PVRT_RGB 18)
  (define PIXELFORMAT_COMPRESSED_PVRT_RGBA 19)
  (define PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA 20)
  (define PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA 21)
  (define TEXTURE_FILTER_POINT 0)
  (define TEXTURE_FILTER_BILINEAR 1)
  (define TEXTURE_FILTER_TRILINEAR 2)
  (define TEXTURE_FILTER_ANISOTROPIC_4X 3)
  (define TEXTURE_FILTER_ANISOTROPIC_8X 4)
  (define TEXTURE_FILTER_ANISOTROPIC_16X 5)
  (define TEXTURE_WRAP_REPEAT 0)
  (define TEXTURE_WRAP_CLAMP 1)
  (define TEXTURE_WRAP_MIRROR_REPEAT 2)
  (define TEXTURE_WRAP_MIRROR_CLAMP 3)
  (define CUBEMAP_LAYOUT_AUTO_DETECT 0)
  (define CUBEMAP_LAYOUT_LINE_VERTICAL 1)
  (define CUBEMAP_LAYOUT_LINE_HORIZONTAL 2)
  (define CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR 3)
  (define CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE 4)
  (define CUBEMAP_LAYOUT_PANORAMA 5)
  (define FONT_DEFAULT 0)
  (define FONT_BITMAP 1)
  (define FONT_SDF 2)
  (define BLEND_ALPHA 0)
  (define BLEND_ADDITIVE 1)
  (define BLEND_MULTIPLIED 2)
  (define BLEND_ADD_COLORS 3)
  (define BLEND_SUBTRACT_COLORS 4)
  (define BLEND_ALPHA_PREMULTIPLY 5)
  (define BLEND_CUSTOM 6)
  (define BLEND_CUSTOM_SEPARATE 7)
  (define GESTURE_NONE 0)
  (define GESTURE_TAP 1)
  (define GESTURE_DOUBLETAP 2)
  (define GESTURE_HOLD 4)
  (define GESTURE_DRAG 8)
  (define GESTURE_SWIPE_RIGHT 16)
  (define GESTURE_SWIPE_LEFT 32)
  (define GESTURE_SWIPE_UP 64)
  (define GESTURE_SWIPE_DOWN 128)
  (define GESTURE_PINCH_IN 256)
  (define GESTURE_PINCH_OUT 512)
  (define CAMERA_CUSTOM 0)
  (define CAMERA_FREE 1)
  (define CAMERA_ORBITAL 2)
  (define CAMERA_FIRST_PERSON 3)
  (define CAMERA_THIRD_PERSON 4)
  (define CAMERA_PERSPECTIVE 0)
  (define CAMERA_ORTHOGRAPHIC 1)
  (define NPATCH_NINE_PATCH 0)
  (define NPATCH_THREE_PATCH_VERTICAL 1)
  (define NPATCH_THREE_PATCH_HORIZONTAL 2)
  (define-ftype Vector-2 (struct [x float] [y float]))
  (define-syntax vector-2-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Vector-2 (f ...) s v)]
      [(_ s f v) (ftype-set! Vector-2 (f) s v)]))
  (define-syntax vector-2-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Vector-2 (f ...) s)]
      [(_ s f) (ftype-ref Vector-2 (f) s)]))
  (define-syntax vector-2-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Vector-2 (f ...) s)]
      [(_ s f) (ftype-&ref Vector-2 (f) s)]))
  (define make-vector-2
    (case-lambda
      [(x y)
       (let ([struct (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
         (ftype-set! Vector-2 (x) struct x)
         (ftype-set! Vector-2 (y) struct y)
         struct)]
      [(struct x y)
       (ftype-set! Vector-2 (x) struct x)
       (ftype-set! Vector-2 (y) struct y)
       struct]))
  (define copy-vector-2
    (case-lambda
      [(src dst)
       (make-vector-2
         dst
         (ftype-ref Vector-2 (x) src)
         (ftype-ref Vector-2 (y) src))]
      [(src)
       (let ([dst (make-ftype-pointer
                    Vector-2
                    (foreign-alloc (ftype-sizeof Vector-2)))])
         (copy-vector-2 src dst))]))
  (define-ftype Vector-3
    (struct [x float] [y float] [z float]))
  (define-syntax vector-3-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Vector-3 (f ...) s v)]
      [(_ s f v) (ftype-set! Vector-3 (f) s v)]))
  (define-syntax vector-3-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Vector-3 (f ...) s)]
      [(_ s f) (ftype-ref Vector-3 (f) s)]))
  (define-syntax vector-3-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Vector-3 (f ...) s)]
      [(_ s f) (ftype-&ref Vector-3 (f) s)]))
  (define make-vector-3
    (case-lambda
      [(x y z)
       (let ([struct (make-ftype-pointer
                       Vector-3
                       (foreign-alloc (ftype-sizeof Vector-3)))])
         (ftype-set! Vector-3 (x) struct x)
         (ftype-set! Vector-3 (y) struct y)
         (ftype-set! Vector-3 (z) struct z)
         struct)]
      [(struct x y z)
       (ftype-set! Vector-3 (x) struct x)
       (ftype-set! Vector-3 (y) struct y)
       (ftype-set! Vector-3 (z) struct z)
       struct]))
  (define copy-vector-3
    (case-lambda
      [(src dst)
       (make-vector-3
         dst
         (ftype-ref Vector-3 (x) src)
         (ftype-ref Vector-3 (y) src)
         (ftype-ref Vector-3 (z) src))]
      [(src)
       (let ([dst (make-ftype-pointer
                    Vector-3
                    (foreign-alloc (ftype-sizeof Vector-3)))])
         (copy-vector-3 src dst))]))
  (define-ftype Vector-4
    (struct [x float] [y float] [z float] [w float]))
  (define-syntax vector-4-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Vector-4 (f ...) s v)]
      [(_ s f v) (ftype-set! Vector-4 (f) s v)]))
  (define-syntax vector-4-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Vector-4 (f ...) s)]
      [(_ s f) (ftype-ref Vector-4 (f) s)]))
  (define-syntax vector-4-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Vector-4 (f ...) s)]
      [(_ s f) (ftype-&ref Vector-4 (f) s)]))
  (define make-vector-4
    (case-lambda
      [(x y z w)
       (let ([struct (make-ftype-pointer
                       Vector-4
                       (foreign-alloc (ftype-sizeof Vector-4)))])
         (ftype-set! Vector-4 (x) struct x)
         (ftype-set! Vector-4 (y) struct y)
         (ftype-set! Vector-4 (z) struct z)
         (ftype-set! Vector-4 (w) struct w)
         struct)]
      [(struct x y z w)
       (ftype-set! Vector-4 (x) struct x)
       (ftype-set! Vector-4 (y) struct y)
       (ftype-set! Vector-4 (z) struct z)
       (ftype-set! Vector-4 (w) struct w)
       struct]))
  (define copy-vector-4
    (case-lambda
      [(src dst)
       (make-vector-4 dst (ftype-ref Vector-4 (x) src)
         (ftype-ref Vector-4 (y) src) (ftype-ref Vector-4 (z) src)
         (ftype-ref Vector-4 (w) src))]
      [(src)
       (let ([dst (make-ftype-pointer
                    Vector-4
                    (foreign-alloc (ftype-sizeof Vector-4)))])
         (copy-vector-4 src dst))]))
  (define-ftype Matrix
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
  (define-syntax matrix-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Matrix (f ...) s v)]
      [(_ s f v) (ftype-set! Matrix (f) s v)]))
  (define-syntax matrix-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Matrix (f ...) s)]
      [(_ s f) (ftype-ref Matrix (f) s)]))
  (define-syntax matrix-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Matrix (f ...) s)]
      [(_ s f) (ftype-&ref Matrix (f) s)]))
  (define make-matrix
    (case-lambda
      [(m0 m4 m8 m12 m1 m5 m9 m13 m2 m6 m10 m14 m3 m7 m11 m15)
       (let ([struct (make-ftype-pointer
                       Matrix
                       (foreign-alloc (ftype-sizeof Matrix)))])
         (ftype-set! Matrix (m0) struct m0)
         (ftype-set! Matrix (m4) struct m4)
         (ftype-set! Matrix (m8) struct m8)
         (ftype-set! Matrix (m12) struct m12)
         (ftype-set! Matrix (m1) struct m1)
         (ftype-set! Matrix (m5) struct m5)
         (ftype-set! Matrix (m9) struct m9)
         (ftype-set! Matrix (m13) struct m13)
         (ftype-set! Matrix (m2) struct m2)
         (ftype-set! Matrix (m6) struct m6)
         (ftype-set! Matrix (m10) struct m10)
         (ftype-set! Matrix (m14) struct m14)
         (ftype-set! Matrix (m3) struct m3)
         (ftype-set! Matrix (m7) struct m7)
         (ftype-set! Matrix (m11) struct m11)
         (ftype-set! Matrix (m15) struct m15)
         struct)]
      [(struct m0 m4 m8 m12 m1 m5 m9 m13 m2 m6 m10 m14 m3 m7 m11
        m15)
       (ftype-set! Matrix (m0) struct m0)
       (ftype-set! Matrix (m4) struct m4)
       (ftype-set! Matrix (m8) struct m8)
       (ftype-set! Matrix (m12) struct m12)
       (ftype-set! Matrix (m1) struct m1)
       (ftype-set! Matrix (m5) struct m5)
       (ftype-set! Matrix (m9) struct m9)
       (ftype-set! Matrix (m13) struct m13)
       (ftype-set! Matrix (m2) struct m2)
       (ftype-set! Matrix (m6) struct m6)
       (ftype-set! Matrix (m10) struct m10)
       (ftype-set! Matrix (m14) struct m14)
       (ftype-set! Matrix (m3) struct m3)
       (ftype-set! Matrix (m7) struct m7)
       (ftype-set! Matrix (m11) struct m11)
       (ftype-set! Matrix (m15) struct m15)
       struct]))
  (define copy-matrix
    (case-lambda
      [(src dst)
       (make-matrix dst (ftype-ref Matrix (m0) src) (ftype-ref Matrix (m4) src)
         (ftype-ref Matrix (m8) src) (ftype-ref Matrix (m12) src)
         (ftype-ref Matrix (m1) src) (ftype-ref Matrix (m5) src)
         (ftype-ref Matrix (m9) src) (ftype-ref Matrix (m13) src)
         (ftype-ref Matrix (m2) src) (ftype-ref Matrix (m6) src)
         (ftype-ref Matrix (m10) src) (ftype-ref Matrix (m14) src)
         (ftype-ref Matrix (m3) src) (ftype-ref Matrix (m7) src)
         (ftype-ref Matrix (m11) src) (ftype-ref Matrix (m15) src))]
      [(src)
       (let ([dst (make-ftype-pointer
                    Matrix
                    (foreign-alloc (ftype-sizeof Matrix)))])
         (copy-matrix src dst))]))
  (define-ftype Color
    (struct
      [r unsigned-8]
      [g unsigned-8]
      [b unsigned-8]
      [a unsigned-8]))
  (define-syntax color-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Color (f ...) s v)]
      [(_ s f v) (ftype-set! Color (f) s v)]))
  (define-syntax color-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Color (f ...) s)]
      [(_ s f) (ftype-ref Color (f) s)]))
  (define-syntax color-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Color (f ...) s)]
      [(_ s f) (ftype-&ref Color (f) s)]))
  (define make-color
    (case-lambda
      [(r g b a)
       (let ([struct (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
         (ftype-set! Color (r) struct r)
         (ftype-set! Color (g) struct g)
         (ftype-set! Color (b) struct b)
         (ftype-set! Color (a) struct a)
         struct)]
      [(struct r g b a)
       (ftype-set! Color (r) struct r)
       (ftype-set! Color (g) struct g)
       (ftype-set! Color (b) struct b)
       (ftype-set! Color (a) struct a)
       struct]))
  (define copy-color
    (case-lambda
      [(src dst)
       (make-color dst (ftype-ref Color (r) src) (ftype-ref Color (g) src)
         (ftype-ref Color (b) src) (ftype-ref Color (a) src))]
      [(src)
       (let ([dst (make-ftype-pointer
                    Color
                    (foreign-alloc (ftype-sizeof Color)))])
         (copy-color src dst))]))
  (define-ftype Rectangle
    (struct [x float] [y float] [width float] [height float]))
  (define-syntax rectangle-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Rectangle (f ...) s v)]
      [(_ s f v) (ftype-set! Rectangle (f) s v)]))
  (define-syntax rectangle-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Rectangle (f ...) s)]
      [(_ s f) (ftype-ref Rectangle (f) s)]))
  (define-syntax rectangle-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Rectangle (f ...) s)]
      [(_ s f) (ftype-&ref Rectangle (f) s)]))
  (define make-rectangle
    (case-lambda
      [(x y width height)
       (let ([struct (make-ftype-pointer
                       Rectangle
                       (foreign-alloc (ftype-sizeof Rectangle)))])
         (ftype-set! Rectangle (x) struct x)
         (ftype-set! Rectangle (y) struct y)
         (ftype-set! Rectangle (width) struct width)
         (ftype-set! Rectangle (height) struct height)
         struct)]
      [(struct x y width height)
       (ftype-set! Rectangle (x) struct x)
       (ftype-set! Rectangle (y) struct y)
       (ftype-set! Rectangle (width) struct width)
       (ftype-set! Rectangle (height) struct height)
       struct]))
  (define copy-rectangle
    (case-lambda
      [(src dst)
       (make-rectangle dst (ftype-ref Rectangle (x) src)
         (ftype-ref Rectangle (y) src)
         (ftype-ref Rectangle (width) src)
         (ftype-ref Rectangle (height) src))]
      [(src)
       (let ([dst (make-ftype-pointer
                    Rectangle
                    (foreign-alloc (ftype-sizeof Rectangle)))])
         (copy-rectangle src dst))]))
  (define-ftype Image
    (struct
      [data void*]
      [width int]
      [height int]
      [mipmaps int]
      [format int]))
  (define-syntax image-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Image (f ...) s v)]
      [(_ s f v) (ftype-set! Image (f) s v)]))
  (define-syntax image-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Image (f ...) s)]
      [(_ s f) (ftype-ref Image (f) s)]))
  (define-syntax image-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Image (f ...) s)]
      [(_ s f) (ftype-&ref Image (f) s)]))
  (define make-image
    (lambda ()
      (make-ftype-pointer
        Image
        (foreign-alloc (ftype-sizeof Image)))))
  (define-ftype Texture
    (struct
      [id unsigned]
      [width int]
      [height int]
      [mipmaps int]
      [format int]))
  (define-syntax texture-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Texture (f ...) s v)]
      [(_ s f v) (ftype-set! Texture (f) s v)]))
  (define-syntax texture-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Texture (f ...) s)]
      [(_ s f) (ftype-ref Texture (f) s)]))
  (define-syntax texture-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Texture (f ...) s)]
      [(_ s f) (ftype-&ref Texture (f) s)]))
  (define make-texture
    (case-lambda
      [(id width height mipmaps format)
       (let ([struct (make-ftype-pointer
                       Texture
                       (foreign-alloc (ftype-sizeof Texture)))])
         (ftype-set! Texture (id) struct id)
         (ftype-set! Texture (width) struct width)
         (ftype-set! Texture (height) struct height)
         (ftype-set! Texture (mipmaps) struct mipmaps)
         (ftype-set! Texture (format) struct format)
         struct)]
      [(struct id width height mipmaps format)
       (ftype-set! Texture (id) struct id)
       (ftype-set! Texture (width) struct width)
       (ftype-set! Texture (height) struct height)
       (ftype-set! Texture (mipmaps) struct mipmaps)
       (ftype-set! Texture (format) struct format)
       struct]))
  (define copy-texture
    (case-lambda
      [(src dst)
       (make-texture dst (ftype-ref Texture (id) src)
         (ftype-ref Texture (width) src)
         (ftype-ref Texture (height) src)
         (ftype-ref Texture (mipmaps) src)
         (ftype-ref Texture (format) src))]
      [(src)
       (let ([dst (make-ftype-pointer
                    Texture
                    (foreign-alloc (ftype-sizeof Texture)))])
         (copy-texture src dst))]))
  (define-ftype Render-Texture
    (struct [id unsigned] [texture Texture] [depth Texture]))
  (define-syntax render-texture-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Render-Texture (f ...) s v)]
      [(_ s f v) (ftype-set! Render-Texture (f) s v)]))
  (define-syntax render-texture-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Render-Texture (f ...) s)]
      [(_ s f) (ftype-ref Render-Texture (f) s)]))
  (define-syntax render-texture-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Render-Texture (f ...) s)]
      [(_ s f) (ftype-&ref Render-Texture (f) s)]))
  (define make-render-texture
    (lambda ()
      (make-ftype-pointer
        Render-Texture
        (foreign-alloc (ftype-sizeof Render-Texture)))))
  (define-ftype Npatch-Info
    (struct
      [source Rectangle]
      [left int]
      [top int]
      [right int]
      [bottom int]
      [layout int]))
  (define-syntax npatch-info-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Npatch-Info (f ...) s v)]
      [(_ s f v) (ftype-set! Npatch-Info (f) s v)]))
  (define-syntax npatch-info-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Npatch-Info (f ...) s)]
      [(_ s f) (ftype-ref Npatch-Info (f) s)]))
  (define-syntax npatch-info-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Npatch-Info (f ...) s)]
      [(_ s f) (ftype-&ref Npatch-Info (f) s)]))
  (define make-npatch-info
    (lambda ()
      (make-ftype-pointer
        Npatch-Info
        (foreign-alloc (ftype-sizeof Npatch-Info)))))
  (define-ftype Glyph-Info
    (struct
      [value int]
      [offset-x int]
      [offset-y int]
      [advance-x int]
      [image Image]))
  (define-syntax glyph-info-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Glyph-Info (f ...) s v)]
      [(_ s f v) (ftype-set! Glyph-Info (f) s v)]))
  (define-syntax glyph-info-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Glyph-Info (f ...) s)]
      [(_ s f) (ftype-ref Glyph-Info (f) s)]))
  (define-syntax glyph-info-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Glyph-Info (f ...) s)]
      [(_ s f) (ftype-&ref Glyph-Info (f) s)]))
  (define make-glyph-info
    (lambda ()
      (make-ftype-pointer
        Glyph-Info
        (foreign-alloc (ftype-sizeof Glyph-Info)))))
  (define-ftype Font
    (struct
      [base-size int]
      [glyph-count int]
      [glyph-padding int]
      [texture Texture]
      [recs (* Rectangle)]
      [glyphs (* Glyph-Info)]))
  (define-syntax font-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Font (f ...) s v)]
      [(_ s f v) (ftype-set! Font (f) s v)]))
  (define-syntax font-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Font (f ...) s)]
      [(_ s f) (ftype-ref Font (f) s)]))
  (define-syntax font-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Font (f ...) s)]
      [(_ s f) (ftype-&ref Font (f) s)]))
  (define make-font
    (lambda ()
      (make-ftype-pointer
        Font
        (foreign-alloc (ftype-sizeof Font)))))
  (define-ftype Camera-3D
    (struct
      [position Vector-3]
      [target Vector-3]
      [up Vector-3]
      [fovy float]
      [projection int]))
  (define-syntax camera-3d-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Camera-3D (f ...) s v)]
      [(_ s f v) (ftype-set! Camera-3D (f) s v)]))
  (define-syntax camera-3d-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Camera-3D (f ...) s)]
      [(_ s f) (ftype-ref Camera-3D (f) s)]))
  (define-syntax camera-3d-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Camera-3D (f ...) s)]
      [(_ s f) (ftype-&ref Camera-3D (f) s)]))
  (define make-camera-3d
    (lambda ()
      (make-ftype-pointer
        Camera-3D
        (foreign-alloc (ftype-sizeof Camera-3D)))))
  (define-ftype Camera-2D
    (struct
      [offset Vector-2]
      [target Vector-2]
      [rotation float]
      [zoom float]))
  (define-syntax camera-2d-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Camera-2D (f ...) s v)]
      [(_ s f v) (ftype-set! Camera-2D (f) s v)]))
  (define-syntax camera-2d-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Camera-2D (f ...) s)]
      [(_ s f) (ftype-ref Camera-2D (f) s)]))
  (define-syntax camera-2d-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Camera-2D (f ...) s)]
      [(_ s f) (ftype-&ref Camera-2D (f) s)]))
  (define make-camera-2d
    (lambda ()
      (make-ftype-pointer
        Camera-2D
        (foreign-alloc (ftype-sizeof Camera-2D)))))
  (define-ftype Mesh
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
  (define-syntax mesh-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Mesh (f ...) s v)]
      [(_ s f v) (ftype-set! Mesh (f) s v)]))
  (define-syntax mesh-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Mesh (f ...) s)]
      [(_ s f) (ftype-ref Mesh (f) s)]))
  (define-syntax mesh-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Mesh (f ...) s)]
      [(_ s f) (ftype-&ref Mesh (f) s)]))
  (define make-mesh
    (lambda ()
      (make-ftype-pointer
        Mesh
        (foreign-alloc (ftype-sizeof Mesh)))))
  (define-ftype Shader (struct [id unsigned] [locs (* int)]))
  (define-syntax shader-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Shader (f ...) s v)]
      [(_ s f v) (ftype-set! Shader (f) s v)]))
  (define-syntax shader-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Shader (f ...) s)]
      [(_ s f) (ftype-ref Shader (f) s)]))
  (define-syntax shader-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Shader (f ...) s)]
      [(_ s f) (ftype-&ref Shader (f) s)]))
  (define make-shader
    (lambda ()
      (make-ftype-pointer
        Shader
        (foreign-alloc (ftype-sizeof Shader)))))
  (define-ftype Material-Map
    (struct [texture Texture] [color Color] [value float]))
  (define-syntax material-map-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Material-Map (f ...) s v)]
      [(_ s f v) (ftype-set! Material-Map (f) s v)]))
  (define-syntax material-map-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Material-Map (f ...) s)]
      [(_ s f) (ftype-ref Material-Map (f) s)]))
  (define-syntax material-map-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Material-Map (f ...) s)]
      [(_ s f) (ftype-&ref Material-Map (f) s)]))
  (define make-material-map
    (lambda ()
      (make-ftype-pointer
        Material-Map
        (foreign-alloc (ftype-sizeof Material-Map)))))
  (define-ftype Material
    (struct
      [shader Shader]
      [maps (* Material-Map)]
      [params (array 4 float)]))
  (define-syntax material-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Material (f ...) s v)]
      [(_ s f v) (ftype-set! Material (f) s v)]))
  (define-syntax material-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Material (f ...) s)]
      [(_ s f) (ftype-ref Material (f) s)]))
  (define-syntax material-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Material (f ...) s)]
      [(_ s f) (ftype-&ref Material (f) s)]))
  (define make-material
    (lambda ()
      (make-ftype-pointer
        Material
        (foreign-alloc (ftype-sizeof Material)))))
  (define-ftype Transform
    (struct
      [translation Vector-3]
      [rotation Vector-4]
      [scale Vector-3]))
  (define-syntax transform-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Transform (f ...) s v)]
      [(_ s f v) (ftype-set! Transform (f) s v)]))
  (define-syntax transform-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Transform (f ...) s)]
      [(_ s f) (ftype-ref Transform (f) s)]))
  (define-syntax transform-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Transform (f ...) s)]
      [(_ s f) (ftype-&ref Transform (f) s)]))
  (define make-transform
    (lambda ()
      (make-ftype-pointer
        Transform
        (foreign-alloc (ftype-sizeof Transform)))))
  (define-ftype Bone-Info
    (struct [name (array 32 char)] [parent int]))
  (define-syntax bone-info-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Bone-Info (f ...) s v)]
      [(_ s f v) (ftype-set! Bone-Info (f) s v)]))
  (define-syntax bone-info-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Bone-Info (f ...) s)]
      [(_ s f) (ftype-ref Bone-Info (f) s)]))
  (define-syntax bone-info-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Bone-Info (f ...) s)]
      [(_ s f) (ftype-&ref Bone-Info (f) s)]))
  (define make-bone-info
    (lambda ()
      (make-ftype-pointer
        Bone-Info
        (foreign-alloc (ftype-sizeof Bone-Info)))))
  (define-ftype Model
    (struct
      [transform Matrix]
      [mesh-count int]
      [material-count int]
      [meshes (* Mesh)]
      [materials (* Material)]
      [mesh-material (* int)]
      [bone-count int]
      [bones (* Bone-Info)]
      [bind-pose (* Transform)]))
  (define-syntax model-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Model (f ...) s v)]
      [(_ s f v) (ftype-set! Model (f) s v)]))
  (define-syntax model-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Model (f ...) s)]
      [(_ s f) (ftype-ref Model (f) s)]))
  (define-syntax model-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Model (f ...) s)]
      [(_ s f) (ftype-&ref Model (f) s)]))
  (define make-model
    (lambda ()
      (make-ftype-pointer
        Model
        (foreign-alloc (ftype-sizeof Model)))))
  (define-ftype Model-Animation
    (struct
      [bone-count int]
      [frame-count int]
      [bones (* Bone-Info)]
      [frame-poses (* (* Transform))]))
  (define-syntax model-animation-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Model-Animation (f ...) s v)]
      [(_ s f v) (ftype-set! Model-Animation (f) s v)]))
  (define-syntax model-animation-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Model-Animation (f ...) s)]
      [(_ s f) (ftype-ref Model-Animation (f) s)]))
  (define-syntax model-animation-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Model-Animation (f ...) s)]
      [(_ s f) (ftype-&ref Model-Animation (f) s)]))
  (define make-model-animation
    (lambda ()
      (make-ftype-pointer
        Model-Animation
        (foreign-alloc (ftype-sizeof Model-Animation)))))
  (define-ftype Ray
    (struct [position Vector-3] [direction Vector-3]))
  (define-syntax ray-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Ray (f ...) s v)]
      [(_ s f v) (ftype-set! Ray (f) s v)]))
  (define-syntax ray-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Ray (f ...) s)]
      [(_ s f) (ftype-ref Ray (f) s)]))
  (define-syntax ray-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Ray (f ...) s)]
      [(_ s f) (ftype-&ref Ray (f) s)]))
  (define make-ray
    (lambda ()
      (make-ftype-pointer
        Ray
        (foreign-alloc (ftype-sizeof Ray)))))
  (define-ftype Ray-Collision
    (struct
      [hit boolean]
      [distance float]
      [point Vector-3]
      [normal Vector-3]))
  (define-syntax ray-collision-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Ray-Collision (f ...) s v)]
      [(_ s f v) (ftype-set! Ray-Collision (f) s v)]))
  (define-syntax ray-collision-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Ray-Collision (f ...) s)]
      [(_ s f) (ftype-ref Ray-Collision (f) s)]))
  (define-syntax ray-collision-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Ray-Collision (f ...) s)]
      [(_ s f) (ftype-&ref Ray-Collision (f) s)]))
  (define make-ray-collision
    (lambda ()
      (make-ftype-pointer
        Ray-Collision
        (foreign-alloc (ftype-sizeof Ray-Collision)))))
  (define-ftype Bounding-Box
    (struct [min Vector-3] [max Vector-3]))
  (define-syntax bounding-box-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Bounding-Box (f ...) s v)]
      [(_ s f v) (ftype-set! Bounding-Box (f) s v)]))
  (define-syntax bounding-box-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Bounding-Box (f ...) s)]
      [(_ s f) (ftype-ref Bounding-Box (f) s)]))
  (define-syntax bounding-box-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Bounding-Box (f ...) s)]
      [(_ s f) (ftype-&ref Bounding-Box (f) s)]))
  (define make-bounding-box
    (lambda ()
      (make-ftype-pointer
        Bounding-Box
        (foreign-alloc (ftype-sizeof Bounding-Box)))))
  (define-ftype Wave
    (struct
      [frame-count unsigned]
      [sample-rate unsigned]
      [sample-size unsigned]
      [channels unsigned]
      [data void*]))
  (define-syntax wave-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Wave (f ...) s v)]
      [(_ s f v) (ftype-set! Wave (f) s v)]))
  (define-syntax wave-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Wave (f ...) s)]
      [(_ s f) (ftype-ref Wave (f) s)]))
  (define-syntax wave-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Wave (f ...) s)]
      [(_ s f) (ftype-&ref Wave (f) s)]))
  (define make-wave
    (lambda ()
      (make-ftype-pointer
        Wave
        (foreign-alloc (ftype-sizeof Wave)))))
  (define-ftype Audio-Stream
    (struct
      [buffer void*]
      [processor void*]
      [sample-rate unsigned]
      [sample-size unsigned]
      [channels unsigned]))
  (define-syntax audio-stream-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Audio-Stream (f ...) s v)]
      [(_ s f v) (ftype-set! Audio-Stream (f) s v)]))
  (define-syntax audio-stream-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Audio-Stream (f ...) s)]
      [(_ s f) (ftype-ref Audio-Stream (f) s)]))
  (define-syntax audio-stream-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Audio-Stream (f ...) s)]
      [(_ s f) (ftype-&ref Audio-Stream (f) s)]))
  (define make-audio-stream
    (lambda ()
      (make-ftype-pointer
        Audio-Stream
        (foreign-alloc (ftype-sizeof Audio-Stream)))))
  (define-ftype Sound
    (struct [stream Audio-Stream] [frame-count unsigned]))
  (define-syntax sound-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Sound (f ...) s v)]
      [(_ s f v) (ftype-set! Sound (f) s v)]))
  (define-syntax sound-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Sound (f ...) s)]
      [(_ s f) (ftype-ref Sound (f) s)]))
  (define-syntax sound-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Sound (f ...) s)]
      [(_ s f) (ftype-&ref Sound (f) s)]))
  (define make-sound
    (lambda ()
      (make-ftype-pointer
        Sound
        (foreign-alloc (ftype-sizeof Sound)))))
  (define-ftype Music
    (struct
      [stream Audio-Stream]
      [frame-count unsigned]
      [looping boolean]
      [ctx-type int]
      [ctx-data void*]))
  (define-syntax music-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Music (f ...) s v)]
      [(_ s f v) (ftype-set! Music (f) s v)]))
  (define-syntax music-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Music (f ...) s)]
      [(_ s f) (ftype-ref Music (f) s)]))
  (define-syntax music-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Music (f ...) s)]
      [(_ s f) (ftype-&ref Music (f) s)]))
  (define make-music
    (lambda ()
      (make-ftype-pointer
        Music
        (foreign-alloc (ftype-sizeof Music)))))
  (define-ftype Vr-Device-Info
    (struct
      [hresolution int]
      [vresolution int]
      [hscreen-size float]
      [vscreen-size float]
      [vscreen-center float]
      [eye-to-screen-distance float]
      [lens-separation-distance float]
      [interpupillary-distance float]
      [lens-distortion-values (array 4 float)]
      [chroma-ab-correction (array 4 float)]))
  (define-syntax vr-device-info-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Vr-Device-Info (f ...) s v)]
      [(_ s f v) (ftype-set! Vr-Device-Info (f) s v)]))
  (define-syntax vr-device-info-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Vr-Device-Info (f ...) s)]
      [(_ s f) (ftype-ref Vr-Device-Info (f) s)]))
  (define-syntax vr-device-info-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Vr-Device-Info (f ...) s)]
      [(_ s f) (ftype-&ref Vr-Device-Info (f) s)]))
  (define make-vr-device-info
    (lambda ()
      (make-ftype-pointer
        Vr-Device-Info
        (foreign-alloc (ftype-sizeof Vr-Device-Info)))))
  (define-ftype Vr-Stereo-Config
    (struct
      [projection (array 2 Matrix)]
      [view-offset (array 2 Matrix)]
      [left-lens-center (array 2 float)]
      [right-lens-center (array 2 float)]
      [left-screen-center (array 2 float)]
      [right-screen-center (array 2 float)]
      [scale (array 2 float)]
      [scale-in (array 2 float)]))
  (define-syntax vr-stereo-config-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref Vr-Stereo-Config (f ...) s v)]
      [(_ s f v) (ftype-set! Vr-Stereo-Config (f) s v)]))
  (define-syntax vr-stereo-config-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref Vr-Stereo-Config (f ...) s)]
      [(_ s f) (ftype-ref Vr-Stereo-Config (f) s)]))
  (define-syntax vr-stereo-config-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref Vr-Stereo-Config (f ...) s)]
      [(_ s f) (ftype-&ref Vr-Stereo-Config (f) s)]))
  (define make-vr-stereo-config
    (lambda ()
      (make-ftype-pointer
        Vr-Stereo-Config
        (foreign-alloc (ftype-sizeof Vr-Stereo-Config)))))
  (define-ftype File-Path-List
    (struct
      [capacity unsigned]
      [count unsigned]
      [paths (* (* char))]))
  (define-syntax file-path-list-set!
    (syntax-rules ()
      [(_ s (f ...) v) (ftype-ref File-Path-List (f ...) s v)]
      [(_ s f v) (ftype-set! File-Path-List (f) s v)]))
  (define-syntax file-path-list-get
    (syntax-rules ()
      [(_ s (f ...)) (ftype-ref File-Path-List (f ...) s)]
      [(_ s f) (ftype-ref File-Path-List (f) s)]))
  (define-syntax file-path-list-ref&
    (syntax-rules ()
      [(_ s (f ...)) (ftype-&ref File-Path-List (f ...) s)]
      [(_ s f) (ftype-&ref File-Path-List (f) s)]))
  (define make-file-path-list
    (lambda ()
      (make-ftype-pointer
        File-Path-List
        (foreign-alloc (ftype-sizeof File-Path-List)))))
  (define (make-trace-log-callback p)
    (let ([code (foreign-callable __collect_safe
                  p
                  (int string void*)
                  void)])
      (lock-object code)
      (foreign-callable-entry-point code)))
  (define (make-load-file-data-callback p)
    (let ([code (foreign-callable __collect_safe
                  p
                  (string (* unsigned))
                  (* unsigned-8))])
      (lock-object code)
      (foreign-callable-entry-point code)))
  (define (make-save-file-data-callback p)
    (let ([code (foreign-callable __collect_safe
                  p
                  (string void* unsigned)
                  boolean)])
      (lock-object code)
      (foreign-callable-entry-point code)))
  (define (make-load-file-text-callback p)
    (let ([code (foreign-callable __collect_safe
                  p
                  (string)
                  (* char))])
      (lock-object code)
      (foreign-callable-entry-point code)))
  (define (make-save-file-text-callback p)
    (let ([code (foreign-callable __collect_safe
                  p
                  (string (* char))
                  boolean)])
      (lock-object code)
      (foreign-callable-entry-point code)))
  (define (make-audio-callback p)
    (let ([code (foreign-callable __collect_safe
                  p
                  (void* unsigned)
                  void)])
      (lock-object code)
      (foreign-callable-entry-point code)))
  (define init-window
    (let ([f (foreign-procedure "InitWindow"
               (int int string)
               void)])
      (lambda (width height title) (f width height title))))
  (define window-should-close
    (let ([f (foreign-procedure "WindowShouldClose"
               ()
               boolean)])
      (lambda () (f))))
  (define close-window
    (let ([f (foreign-procedure "CloseWindow" () void)])
      (lambda () (f))))
  (define is-window-ready
    (let ([f (foreign-procedure "IsWindowReady" () boolean)])
      (lambda () (f))))
  (define is-window-fullscreen
    (let ([f (foreign-procedure "IsWindowFullscreen"
               ()
               boolean)])
      (lambda () (f))))
  (define is-window-hidden
    (let ([f (foreign-procedure "IsWindowHidden" () boolean)])
      (lambda () (f))))
  (define is-window-minimized
    (let ([f (foreign-procedure "IsWindowMinimized"
               ()
               boolean)])
      (lambda () (f))))
  (define is-window-maximized
    (let ([f (foreign-procedure "IsWindowMaximized"
               ()
               boolean)])
      (lambda () (f))))
  (define is-window-focused
    (let ([f (foreign-procedure "IsWindowFocused" () boolean)])
      (lambda () (f))))
  (define is-window-resized
    (let ([f (foreign-procedure "IsWindowResized" () boolean)])
      (lambda () (f))))
  (define is-window-state
    (let ([f (foreign-procedure "IsWindowState"
               (unsigned)
               boolean)])
      (lambda (flag) (f flag))))
  (define set-window-state
    (let ([f (foreign-procedure "SetWindowState"
               (unsigned)
               void)])
      (lambda (flags) (f flags))))
  (define clear-window-state
    (let ([f (foreign-procedure "ClearWindowState"
               (unsigned)
               void)])
      (lambda (flags) (f flags))))
  (define toggle-fullscreen
    (let ([f (foreign-procedure "ToggleFullscreen" () void)])
      (lambda () (f))))
  (define maximize-window
    (let ([f (foreign-procedure "MaximizeWindow" () void)])
      (lambda () (f))))
  (define minimize-window
    (let ([f (foreign-procedure "MinimizeWindow" () void)])
      (lambda () (f))))
  (define restore-window
    (let ([f (foreign-procedure "RestoreWindow" () void)])
      (lambda () (f))))
  (define set-window-icon
    (let ([f (foreign-procedure "SetWindowIcon"
               ((& Image))
               void)])
      (lambda (image) (f image))))
  (define set-window-title
    (let ([f (foreign-procedure "SetWindowTitle"
               (string)
               void)])
      (lambda (title) (f title))))
  (define set-window-position
    (let ([f (foreign-procedure "SetWindowPosition"
               (int int)
               void)])
      (lambda (x y) (f x y))))
  (define set-window-monitor
    (let ([f (foreign-procedure "SetWindowMonitor" (int) void)])
      (lambda (monitor) (f monitor))))
  (define set-window-min-size
    (let ([f (foreign-procedure "SetWindowMinSize"
               (int int)
               void)])
      (lambda (width height) (f width height))))
  (define set-window-size
    (let ([f (foreign-procedure "SetWindowSize"
               (int int)
               void)])
      (lambda (width height) (f width height))))
  (define set-window-opacity
    (let ([f (foreign-procedure "SetWindowOpacity"
               (float)
               void)])
      (lambda (opacity) (f opacity))))
  (define get-window-handle
    (let ([f (foreign-procedure "GetWindowHandle" () void*)])
      (lambda () (f))))
  (define get-screen-width
    (let ([f (foreign-procedure "GetScreenWidth" () int)])
      (lambda () (f))))
  (define get-screen-height
    (let ([f (foreign-procedure "GetScreenHeight" () int)])
      (lambda () (f))))
  (define get-render-width
    (let ([f (foreign-procedure "GetRenderWidth" () int)])
      (lambda () (f))))
  (define get-render-height
    (let ([f (foreign-procedure "GetRenderHeight" () int)])
      (lambda () (f))))
  (define get-monitor-count
    (let ([f (foreign-procedure "GetMonitorCount" () int)])
      (lambda () (f))))
  (define get-current-monitor
    (let ([f (foreign-procedure "GetCurrentMonitor" () int)])
      (lambda () (f))))
  (define get-monitor-position
    (let ([f (foreign-procedure "GetMonitorPosition"
               (int)
               (& Vector-2))])
      (case-lambda
        [(monitor)
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret monitor)
           ret)]
        [(struct monitor) (f struct monitor) struct])))
  (define get-monitor-width
    (let ([f (foreign-procedure "GetMonitorWidth" (int) int)])
      (lambda (monitor) (f monitor))))
  (define get-monitor-height
    (let ([f (foreign-procedure "GetMonitorHeight" (int) int)])
      (lambda (monitor) (f monitor))))
  (define get-monitor-physical-width
    (let ([f (foreign-procedure "GetMonitorPhysicalWidth"
               (int)
               int)])
      (lambda (monitor) (f monitor))))
  (define get-monitor-physical-height
    (let ([f (foreign-procedure "GetMonitorPhysicalHeight"
               (int)
               int)])
      (lambda (monitor) (f monitor))))
  (define get-monitor-refresh-rate
    (let ([f (foreign-procedure "GetMonitorRefreshRate"
               (int)
               int)])
      (lambda (monitor) (f monitor))))
  (define get-window-position
    (let ([f (foreign-procedure "GetWindowPosition"
               ()
               (& Vector-2))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define get-window-scale-dpi
    (let ([f (foreign-procedure "GetWindowScaleDPI"
               ()
               (& Vector-2))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define get-monitor-name
    (let ([f (foreign-procedure "GetMonitorName" (int) string)])
      (lambda (monitor) (f monitor))))
  (define set-clipboard-text
    (let ([f (foreign-procedure "SetClipboardText"
               (string)
               void)])
      (lambda (text) (f text))))
  (define get-clipboard-text
    (let ([f (foreign-procedure "GetClipboardText" () string)])
      (lambda () (f))))
  (define enable-event-waiting
    (let ([f (foreign-procedure "EnableEventWaiting" () void)])
      (lambda () (f))))
  (define disable-event-waiting
    (let ([f (foreign-procedure "DisableEventWaiting" () void)])
      (lambda () (f))))
  (define swap-screen-buffer
    (let ([f (foreign-procedure "SwapScreenBuffer" () void)])
      (lambda () (f))))
  (define poll-input-events
    (let ([f (foreign-procedure "PollInputEvents" () void)])
      (lambda () (f))))
  (define wait-time
    (let ([f (foreign-procedure "WaitTime" (double) void)])
      (lambda (seconds) (f seconds))))
  (define show-cursor
    (let ([f (foreign-procedure "ShowCursor" () void)])
      (lambda () (f))))
  (define hide-cursor
    (let ([f (foreign-procedure "HideCursor" () void)])
      (lambda () (f))))
  (define is-cursor-hidden
    (let ([f (foreign-procedure "IsCursorHidden" () boolean)])
      (lambda () (f))))
  (define enable-cursor
    (let ([f (foreign-procedure "EnableCursor" () void)])
      (lambda () (f))))
  (define disable-cursor
    (let ([f (foreign-procedure "DisableCursor" () void)])
      (lambda () (f))))
  (define is-cursor-on-screen
    (let ([f (foreign-procedure "IsCursorOnScreen" () boolean)])
      (lambda () (f))))
  (define clear-background
    (let ([f (foreign-procedure "ClearBackground"
               ((& Color))
               void)])
      (lambda (color) (f color))))
  (define begin-drawing
    (let ([f (foreign-procedure "BeginDrawing" () void)])
      (lambda () (f))))
  (define end-drawing
    (let ([f (foreign-procedure "EndDrawing" () void)])
      (lambda () (f))))
  (define begin-mode-2d
    (let ([f (foreign-procedure "BeginMode2D"
               ((& Camera-2D))
               void)])
      (lambda (camera) (f camera))))
  (define end-mode-2d
    (let ([f (foreign-procedure "EndMode2D" () void)])
      (lambda () (f))))
  (define begin-mode-3d
    (let ([f (foreign-procedure "BeginMode3D"
               ((& Camera-3D))
               void)])
      (lambda (camera) (f camera))))
  (define end-mode-3d
    (let ([f (foreign-procedure "EndMode3D" () void)])
      (lambda () (f))))
  (define begin-texture-mode
    (let ([f (foreign-procedure "BeginTextureMode"
               ((& Render-Texture))
               void)])
      (lambda (target) (f target))))
  (define end-texture-mode
    (let ([f (foreign-procedure "EndTextureMode" () void)])
      (lambda () (f))))
  (define begin-shader-mode
    (let ([f (foreign-procedure "BeginShaderMode"
               ((& Shader))
               void)])
      (lambda (shader) (f shader))))
  (define end-shader-mode
    (let ([f (foreign-procedure "EndShaderMode" () void)])
      (lambda () (f))))
  (define begin-blend-mode
    (let ([f (foreign-procedure "BeginBlendMode" (int) void)])
      (lambda (mode) (f mode))))
  (define end-blend-mode
    (let ([f (foreign-procedure "EndBlendMode" () void)])
      (lambda () (f))))
  (define begin-scissor-mode
    (let ([f (foreign-procedure "BeginScissorMode"
               (int int int int)
               void)])
      (lambda (x y width height) (f x y width height))))
  (define end-scissor-mode
    (let ([f (foreign-procedure "EndScissorMode" () void)])
      (lambda () (f))))
  (define begin-vr-stereo-mode
    (let ([f (foreign-procedure "BeginVrStereoMode"
               ((& Vr-Stereo-Config))
               void)])
      (lambda (config) (f config))))
  (define end-vr-stereo-mode
    (let ([f (foreign-procedure "EndVrStereoMode" () void)])
      (lambda () (f))))
  (define load-vr-stereo-config
    (let ([f (foreign-procedure "LoadVrStereoConfig"
               ((& Vr-Device-Info))
               (& Vr-Stereo-Config))])
      (case-lambda
        [(device)
         (let ([ret (make-ftype-pointer
                      Vr-Stereo-Config
                      (foreign-alloc (ftype-sizeof Vr-Stereo-Config)))])
           (f ret device)
           ret)]
        [(struct device) (f struct device) struct])))
  (define unload-vr-stereo-config
    (let ([f (foreign-procedure "UnloadVrStereoConfig"
               ((& Vr-Stereo-Config))
               void)])
      (lambda (config) (f config))))
  (define load-shader
    (let ([f (foreign-procedure "LoadShader"
               (string string)
               (& Shader))])
      (case-lambda
        [(vs-file-name fs-file-name)
         (let ([ret (make-ftype-pointer
                      Shader
                      (foreign-alloc (ftype-sizeof Shader)))])
           (f ret vs-file-name fs-file-name)
           ret)]
        [(struct vs-file-name fs-file-name)
         (f struct vs-file-name fs-file-name)
         struct])))
  (define load-shader-from-memory
    (let ([f (foreign-procedure "LoadShaderFromMemory"
               (string string)
               (& Shader))])
      (case-lambda
        [(vs-code fs-code)
         (let ([ret (make-ftype-pointer
                      Shader
                      (foreign-alloc (ftype-sizeof Shader)))])
           (f ret vs-code fs-code)
           ret)]
        [(struct vs-code fs-code)
         (f struct vs-code fs-code)
         struct])))
  (define get-shader-location
    (let ([f (foreign-procedure "GetShaderLocation"
               ((& Shader) string)
               int)])
      (lambda (shader uniform-name) (f shader uniform-name))))
  (define get-shader-location-attrib
    (let ([f (foreign-procedure "GetShaderLocationAttrib"
               ((& Shader) string)
               int)])
      (lambda (shader attrib-name) (f shader attrib-name))))
  (define set-shader-value
    (let ([f (foreign-procedure "SetShaderValue"
               ((& Shader) int void* int)
               void)])
      (lambda (shader loc-index value uniform-type)
        (f shader loc-index value uniform-type))))
  (define set-shader-value-v
    (let ([f (foreign-procedure "SetShaderValueV"
               ((& Shader) int void* int int)
               void)])
      (lambda (shader loc-index value uniform-type count)
        (f shader loc-index value uniform-type count))))
  (define set-shader-value-matrix
    (let ([f (foreign-procedure "SetShaderValueMatrix"
               ((& Shader) int (& Matrix))
               void)])
      (lambda (shader loc-index mat) (f shader loc-index mat))))
  (define set-shader-value-texture
    (let ([f (foreign-procedure "SetShaderValueTexture"
               ((& Shader) int (& Texture))
               void)])
      (lambda (shader loc-index texture)
        (f shader loc-index texture))))
  (define unload-shader
    (let ([f (foreign-procedure "UnloadShader"
               ((& Shader))
               void)])
      (lambda (shader) (f shader))))
  (define get-mouse-ray
    (let ([f (foreign-procedure "GetMouseRay"
               ((& Vector-2) (& Camera-3D))
               (& Ray))])
      (case-lambda
        [(mouse-position camera)
         (let ([ret (make-ftype-pointer
                      Ray
                      (foreign-alloc (ftype-sizeof Ray)))])
           (f ret mouse-position camera)
           ret)]
        [(struct mouse-position camera)
         (f struct mouse-position camera)
         struct])))
  (define get-camera-matrix
    (let ([f (foreign-procedure "GetCameraMatrix"
               ((& Camera-3D))
               (& Matrix))])
      (case-lambda
        [(camera)
         (let ([ret (make-ftype-pointer
                      Matrix
                      (foreign-alloc (ftype-sizeof Matrix)))])
           (f ret camera)
           ret)]
        [(struct camera) (f struct camera) struct])))
  (define get-camera-matrix-2d
    (let ([f (foreign-procedure "GetCameraMatrix2D"
               ((& Camera-2D))
               (& Matrix))])
      (case-lambda
        [(camera)
         (let ([ret (make-ftype-pointer
                      Matrix
                      (foreign-alloc (ftype-sizeof Matrix)))])
           (f ret camera)
           ret)]
        [(struct camera) (f struct camera) struct])))
  (define get-world-to-screen
    (let ([f (foreign-procedure "GetWorldToScreen"
               ((& Vector-3) (& Camera-3D))
               (& Vector-2))])
      (case-lambda
        [(position camera)
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret position camera)
           ret)]
        [(struct position camera)
         (f struct position camera)
         struct])))
  (define get-screen-to-world-2d
    (let ([f (foreign-procedure "GetScreenToWorld2D"
               ((& Vector-2) (& Camera-2D))
               (& Vector-2))])
      (case-lambda
        [(position camera)
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret position camera)
           ret)]
        [(struct position camera)
         (f struct position camera)
         struct])))
  (define get-world-to-screen-ex
    (let ([f (foreign-procedure "GetWorldToScreenEx"
               ((& Vector-3) (& Camera-3D) int int)
               (& Vector-2))])
      (case-lambda
        [(position camera width height)
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret position camera width height)
           ret)]
        [(struct position camera width height)
         (f struct position camera width height)
         struct])))
  (define get-world-to-screen-2d
    (let ([f (foreign-procedure "GetWorldToScreen2D"
               ((& Vector-2) (& Camera-2D))
               (& Vector-2))])
      (case-lambda
        [(position camera)
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret position camera)
           ret)]
        [(struct position camera)
         (f struct position camera)
         struct])))
  (define set-target-fps
    (let ([f (foreign-procedure "SetTargetFPS" (int) void)])
      (lambda (fps) (f fps))))
  (define get-fps
    (let ([f (foreign-procedure "GetFPS" () int)])
      (lambda () (f))))
  (define get-frame-time
    (let ([f (foreign-procedure "GetFrameTime" () float)])
      (lambda () (f))))
  (define get-time
    (let ([f (foreign-procedure "GetTime" () double)])
      (lambda () (f))))
  (define get-random-value
    (let ([f (foreign-procedure "GetRandomValue"
               (int int)
               int)])
      (lambda (min max) (f min max))))
  (define set-random-seed
    (let ([f (foreign-procedure "SetRandomSeed"
               (unsigned)
               void)])
      (lambda (seed) (f seed))))
  (define take-screenshot
    (let ([f (foreign-procedure "TakeScreenshot"
               (string)
               void)])
      (lambda (file-name) (f file-name))))
  (define set-config-flags
    (let ([f (foreign-procedure "SetConfigFlags"
               (unsigned)
               void)])
      (lambda (flags) (f flags))))
  (define set-trace-log-level
    (let ([f (foreign-procedure "SetTraceLogLevel" (int) void)])
      (lambda (log-level) (f log-level))))
  (define mem-alloc
    (let ([f (foreign-procedure "MemAlloc" (unsigned) void*)])
      (lambda (size) (f size))))
  (define mem-realloc
    (let ([f (foreign-procedure "MemRealloc"
               (void* unsigned)
               void*)])
      (lambda (ptr size) (f ptr size))))
  (define mem-free
    (let ([f (foreign-procedure "MemFree" (void*) void)])
      (lambda (ptr) (f ptr))))
  (define open-url
    (let ([f (foreign-procedure "OpenURL" (string) void)])
      (lambda (url) (f url))))
  (define set-trace-log-callback
    (let ([f (foreign-procedure "SetTraceLogCallback"
               (void*)
               void)])
      (lambda (callback) (f callback))))
  (define set-load-file-data-callback
    (let ([f (foreign-procedure "SetLoadFileDataCallback"
               (void*)
               void)])
      (lambda (callback) (f callback))))
  (define set-save-file-data-callback
    (let ([f (foreign-procedure "SetSaveFileDataCallback"
               (void*)
               void)])
      (lambda (callback) (f callback))))
  (define set-load-file-text-callback
    (let ([f (foreign-procedure "SetLoadFileTextCallback"
               (void*)
               void)])
      (lambda (callback) (f callback))))
  (define set-save-file-text-callback
    (let ([f (foreign-procedure "SetSaveFileTextCallback"
               (void*)
               void)])
      (lambda (callback) (f callback))))
  (define load-file-data
    (let ([f (foreign-procedure "LoadFileData"
               (string (* unsigned))
               (* unsigned-8))])
      (lambda (file-name bytes-read) (f file-name bytes-read))))
  (define unload-file-data
    (let ([f (foreign-procedure "UnloadFileData"
               ((* unsigned-8))
               void)])
      (lambda (data) (f data))))
  (define save-file-data
    (let ([f (foreign-procedure "SaveFileData"
               (string void* unsigned)
               boolean)])
      (lambda (file-name data bytes-to-write)
        (f file-name data bytes-to-write))))
  (define export-data-as-code
    (let ([f (foreign-procedure "ExportDataAsCode"
               (string unsigned string)
               boolean)])
      (lambda (data size file-name) (f data size file-name))))
  (define load-file-text
    (let ([f (foreign-procedure "LoadFileText"
               (string)
               string)])
      (lambda (file-name) (f file-name))))
  (define unload-file-text
    (let ([f (foreign-procedure "UnloadFileText"
               (string)
               void)])
      (lambda (text) (f text))))
  (define save-file-text
    (let ([f (foreign-procedure "SaveFileText"
               (string string)
               boolean)])
      (lambda (file-name text) (f file-name text))))
  (define file-exists
    (let ([f (foreign-procedure "FileExists" (string) boolean)])
      (lambda (file-name) (f file-name))))
  (define directory-exists
    (let ([f (foreign-procedure "DirectoryExists"
               (string)
               boolean)])
      (lambda (dir-path) (f dir-path))))
  (define is-file-extension
    (let ([f (foreign-procedure "IsFileExtension"
               (string string)
               boolean)])
      (lambda (file-name ext) (f file-name ext))))
  (define get-file-length
    (let ([f (foreign-procedure "GetFileLength" (string) int)])
      (lambda (file-name) (f file-name))))
  (define get-file-extension
    (let ([f (foreign-procedure "GetFileExtension"
               (string)
               string)])
      (lambda (file-name) (f file-name))))
  (define get-file-name
    (let ([f (foreign-procedure "GetFileName" (string) string)])
      (lambda (file-path) (f file-path))))
  (define get-file-name-without-ext
    (let ([f (foreign-procedure "GetFileNameWithoutExt"
               (string)
               string)])
      (lambda (file-path) (f file-path))))
  (define get-directory-path
    (let ([f (foreign-procedure "GetDirectoryPath"
               (string)
               string)])
      (lambda (file-path) (f file-path))))
  (define get-prev-directory-path
    (let ([f (foreign-procedure "GetPrevDirectoryPath"
               (string)
               string)])
      (lambda (dir-path) (f dir-path))))
  (define get-working-directory
    (let ([f (foreign-procedure "GetWorkingDirectory"
               ()
               string)])
      (lambda () (f))))
  (define get-application-directory
    (let ([f (foreign-procedure "GetApplicationDirectory"
               ()
               string)])
      (lambda () (f))))
  (define change-directory
    (let ([f (foreign-procedure "ChangeDirectory"
               (string)
               boolean)])
      (lambda (dir) (f dir))))
  (define is-path-file
    (let ([f (foreign-procedure "IsPathFile" (string) boolean)])
      (lambda (path) (f path))))
  (define load-directory-files
    (let ([f (foreign-procedure "LoadDirectoryFiles"
               (string)
               (& File-Path-List))])
      (case-lambda
        [(dir-path)
         (let ([ret (make-ftype-pointer
                      File-Path-List
                      (foreign-alloc (ftype-sizeof File-Path-List)))])
           (f ret dir-path)
           ret)]
        [(struct dir-path) (f struct dir-path) struct])))
  (define load-directory-files-ex
    (let ([f (foreign-procedure "LoadDirectoryFilesEx"
               (string string boolean)
               (& File-Path-List))])
      (case-lambda
        [(base-path filter scan-subdirs)
         (let ([ret (make-ftype-pointer
                      File-Path-List
                      (foreign-alloc (ftype-sizeof File-Path-List)))])
           (f ret base-path filter scan-subdirs)
           ret)]
        [(struct base-path filter scan-subdirs)
         (f struct base-path filter scan-subdirs)
         struct])))
  (define unload-directory-files
    (let ([f (foreign-procedure "UnloadDirectoryFiles"
               ((& File-Path-List))
               void)])
      (lambda (files) (f files))))
  (define is-file-dropped
    (let ([f (foreign-procedure "IsFileDropped" () boolean)])
      (lambda () (f))))
  (define load-dropped-files
    (let ([f (foreign-procedure "LoadDroppedFiles"
               ()
               (& File-Path-List))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      File-Path-List
                      (foreign-alloc (ftype-sizeof File-Path-List)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define unload-dropped-files
    (let ([f (foreign-procedure "UnloadDroppedFiles"
               ((& File-Path-List))
               void)])
      (lambda (files) (f files))))
  (define get-file-mod-time
    (let ([f (foreign-procedure "GetFileModTime"
               (string)
               long)])
      (lambda (file-name) (f file-name))))
  (define compress-data
    (let ([f (foreign-procedure "CompressData"
               ((* unsigned-8) int u8*)
               (* unsigned-8))])
      (lambda (data data-size comp-data-size)
        (f data data-size comp-data-size))))
  (define decompress-data
    (let ([f (foreign-procedure "DecompressData"
               ((* unsigned-8) int u8*)
               (* unsigned-8))])
      (lambda (comp-data comp-data-size data-size)
        (f comp-data comp-data-size data-size))))
  (define encode-data-base-64
    (let ([f (foreign-procedure "EncodeDataBase64"
               ((* unsigned-8) int u8*)
               string)])
      (lambda (data data-size output-size)
        (f data data-size output-size))))
  (define decode-data-base-64
    (let ([f (foreign-procedure "DecodeDataBase64"
               ((* unsigned-8) u8*)
               (* unsigned-8))])
      (lambda (data output-size) (f data output-size))))
  (define is-key-pressed
    (let ([f (foreign-procedure "IsKeyPressed" (int) boolean)])
      (lambda (key) (f key))))
  (define is-key-down
    (let ([f (foreign-procedure "IsKeyDown" (int) boolean)])
      (lambda (key) (f key))))
  (define is-key-released
    (let ([f (foreign-procedure "IsKeyReleased" (int) boolean)])
      (lambda (key) (f key))))
  (define is-key-up
    (let ([f (foreign-procedure "IsKeyUp" (int) boolean)])
      (lambda (key) (f key))))
  (define set-exit-key
    (let ([f (foreign-procedure "SetExitKey" (int) void)])
      (lambda (key) (f key))))
  (define get-key-pressed
    (let ([f (foreign-procedure "GetKeyPressed" () int)])
      (lambda () (f))))
  (define get-char-pressed
    (let ([f (foreign-procedure "GetCharPressed" () int)])
      (lambda () (f))))
  (define is-gamepad-available
    (let ([f (foreign-procedure "IsGamepadAvailable"
               (int)
               boolean)])
      (lambda (gamepad) (f gamepad))))
  (define get-gamepad-name
    (let ([f (foreign-procedure "GetGamepadName" (int) string)])
      (lambda (gamepad) (f gamepad))))
  (define is-gamepad-button-pressed
    (let ([f (foreign-procedure "IsGamepadButtonPressed"
               (int int)
               boolean)])
      (lambda (gamepad button) (f gamepad button))))
  (define is-gamepad-button-down
    (let ([f (foreign-procedure "IsGamepadButtonDown"
               (int int)
               boolean)])
      (lambda (gamepad button) (f gamepad button))))
  (define is-gamepad-button-released
    (let ([f (foreign-procedure "IsGamepadButtonReleased"
               (int int)
               boolean)])
      (lambda (gamepad button) (f gamepad button))))
  (define is-gamepad-button-up
    (let ([f (foreign-procedure "IsGamepadButtonUp"
               (int int)
               boolean)])
      (lambda (gamepad button) (f gamepad button))))
  (define get-gamepad-button-pressed
    (let ([f (foreign-procedure "GetGamepadButtonPressed"
               ()
               int)])
      (lambda () (f))))
  (define get-gamepad-axis-count
    (let ([f (foreign-procedure "GetGamepadAxisCount"
               (int)
               int)])
      (lambda (gamepad) (f gamepad))))
  (define get-gamepad-axis-movement
    (let ([f (foreign-procedure "GetGamepadAxisMovement"
               (int int)
               float)])
      (lambda (gamepad axis) (f gamepad axis))))
  (define set-gamepad-mappings
    (let ([f (foreign-procedure "SetGamepadMappings"
               (string)
               int)])
      (lambda (mappings) (f mappings))))
  (define is-mouse-button-pressed
    (let ([f (foreign-procedure "IsMouseButtonPressed"
               (int)
               boolean)])
      (lambda (button) (f button))))
  (define is-mouse-button-down
    (let ([f (foreign-procedure "IsMouseButtonDown"
               (int)
               boolean)])
      (lambda (button) (f button))))
  (define is-mouse-button-released
    (let ([f (foreign-procedure "IsMouseButtonReleased"
               (int)
               boolean)])
      (lambda (button) (f button))))
  (define is-mouse-button-up
    (let ([f (foreign-procedure "IsMouseButtonUp"
               (int)
               boolean)])
      (lambda (button) (f button))))
  (define get-mouse-x
    (let ([f (foreign-procedure "GetMouseX" () int)])
      (lambda () (f))))
  (define get-mouse-y
    (let ([f (foreign-procedure "GetMouseY" () int)])
      (lambda () (f))))
  (define get-mouse-position
    (let ([f (foreign-procedure "GetMousePosition"
               ()
               (& Vector-2))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define get-mouse-delta
    (let ([f (foreign-procedure "GetMouseDelta"
               ()
               (& Vector-2))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define set-mouse-position
    (let ([f (foreign-procedure "SetMousePosition"
               (int int)
               void)])
      (lambda (x y) (f x y))))
  (define set-mouse-offset
    (let ([f (foreign-procedure "SetMouseOffset"
               (int int)
               void)])
      (lambda (offset-x offset-y) (f offset-x offset-y))))
  (define set-mouse-scale
    (let ([f (foreign-procedure "SetMouseScale"
               (float float)
               void)])
      (lambda (scale-x scale-y) (f scale-x scale-y))))
  (define get-mouse-wheel-move
    (let ([f (foreign-procedure "GetMouseWheelMove" () float)])
      (lambda () (f))))
  (define get-mouse-wheel-move-v
    (let ([f (foreign-procedure "GetMouseWheelMoveV"
               ()
               (& Vector-2))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define set-mouse-cursor
    (let ([f (foreign-procedure "SetMouseCursor" (int) void)])
      (lambda (cursor) (f cursor))))
  (define get-touch-x
    (let ([f (foreign-procedure "GetTouchX" () int)])
      (lambda () (f))))
  (define get-touch-y
    (let ([f (foreign-procedure "GetTouchY" () int)])
      (lambda () (f))))
  (define get-touch-position
    (let ([f (foreign-procedure "GetTouchPosition"
               (int)
               (& Vector-2))])
      (case-lambda
        [(index)
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret index)
           ret)]
        [(struct index) (f struct index) struct])))
  (define get-touch-point-id
    (let ([f (foreign-procedure "GetTouchPointId" (int) int)])
      (lambda (index) (f index))))
  (define get-touch-point-count
    (let ([f (foreign-procedure "GetTouchPointCount" () int)])
      (lambda () (f))))
  (define set-gestures-enabled
    (let ([f (foreign-procedure "SetGesturesEnabled"
               (unsigned)
               void)])
      (lambda (flags) (f flags))))
  (define is-gesture-detected
    (let ([f (foreign-procedure "IsGestureDetected"
               (int)
               boolean)])
      (lambda (gesture) (f gesture))))
  (define get-gesture-detected
    (let ([f (foreign-procedure "GetGestureDetected" () int)])
      (lambda () (f))))
  (define get-gesture-hold-duration
    (let ([f (foreign-procedure "GetGestureHoldDuration"
               ()
               float)])
      (lambda () (f))))
  (define get-gesture-drag-vector
    (let ([f (foreign-procedure "GetGestureDragVector"
               ()
               (& Vector-2))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define get-gesture-drag-angle
    (let ([f (foreign-procedure "GetGestureDragAngle"
               ()
               float)])
      (lambda () (f))))
  (define get-gesture-pinch-vector
    (let ([f (foreign-procedure "GetGesturePinchVector"
               ()
               (& Vector-2))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define get-gesture-pinch-angle
    (let ([f (foreign-procedure "GetGesturePinchAngle"
               ()
               float)])
      (lambda () (f))))
  (define set-camera-mode
    (let ([f (foreign-procedure "SetCameraMode"
               ((& Camera-3D) int)
               void)])
      (lambda (camera mode) (f camera mode))))
  (define update-camera
    (let ([f (foreign-procedure "UpdateCamera"
               ((* Camera-3D))
               void)])
      (lambda (camera) (f camera))))
  (define set-camera-pan-control
    (let ([f (foreign-procedure "SetCameraPanControl"
               (int)
               void)])
      (lambda (key-pan) (f key-pan))))
  (define set-camera-alt-control
    (let ([f (foreign-procedure "SetCameraAltControl"
               (int)
               void)])
      (lambda (key-alt) (f key-alt))))
  (define set-camera-smooth-zoom-control
    (let ([f (foreign-procedure "SetCameraSmoothZoomControl"
               (int)
               void)])
      (lambda (key-smooth-zoom) (f key-smooth-zoom))))
  (define set-camera-move-controls
    (let ([f (foreign-procedure "SetCameraMoveControls"
               (int int int int int int)
               void)])
      (lambda (key-front key-back key-right key-left key-up
               key-down)
        (f key-front key-back key-right key-left key-up key-down))))
  (define set-shapes-texture
    (let ([f (foreign-procedure "SetShapesTexture"
               ((& Texture) (& Rectangle))
               void)])
      (lambda (texture source) (f texture source))))
  (define draw-pixel
    (let ([f (foreign-procedure "DrawPixel"
               (int int (& Color))
               void)])
      (lambda (pos-x pos-y color) (f pos-x pos-y color))))
  (define draw-pixel-v
    (let ([f (foreign-procedure "DrawPixelV"
               ((& Vector-2) (& Color))
               void)])
      (lambda (position color) (f position color))))
  (define draw-line
    (let ([f (foreign-procedure "DrawLine"
               (int int int int (& Color))
               void)])
      (lambda (start-pos-x start-pos-y end-pos-x end-pos-y color)
        (f start-pos-x start-pos-y end-pos-x end-pos-y color))))
  (define draw-line-v
    (let ([f (foreign-procedure "DrawLineV"
               ((& Vector-2) (& Vector-2) (& Color))
               void)])
      (lambda (start-pos end-pos color)
        (f start-pos end-pos color))))
  (define draw-line-ex
    (let ([f (foreign-procedure "DrawLineEx"
               ((& Vector-2) (& Vector-2) float (& Color))
               void)])
      (lambda (start-pos end-pos thick color)
        (f start-pos end-pos thick color))))
  (define draw-line-bezier
    (let ([f (foreign-procedure "DrawLineBezier"
               ((& Vector-2) (& Vector-2) float (& Color))
               void)])
      (lambda (start-pos end-pos thick color)
        (f start-pos end-pos thick color))))
  (define draw-line-bezier-quad
    (let ([f (foreign-procedure "DrawLineBezierQuad"
               ((& Vector-2) (& Vector-2) (& Vector-2) float (& Color))
               void)])
      (lambda (start-pos end-pos control-pos thick color)
        (f start-pos end-pos control-pos thick color))))
  (define draw-line-bezier-cubic
    (let ([f (foreign-procedure "DrawLineBezierCubic"
               ((& Vector-2)
                (& Vector-2)
                (& Vector-2)
                (& Vector-2)
                float
                (& Color))
               void)])
      (lambda (start-pos end-pos start-control-pos end-control-pos
               thick color)
        (f start-pos end-pos start-control-pos end-control-pos thick
           color))))
  (define draw-line-strip
    (let ([f (foreign-procedure "DrawLineStrip"
               ((* Vector-2) int (& Color))
               void)])
      (lambda (points point-count color)
        (f points point-count color))))
  (define draw-circle
    (let ([f (foreign-procedure "DrawCircle"
               (int int float (& Color))
               void)])
      (lambda (center-x center-y radius color)
        (f center-x center-y radius color))))
  (define draw-circle-sector
    (let ([f (foreign-procedure "DrawCircleSector"
               ((& Vector-2) float float float int (& Color))
               void)])
      (lambda (center radius start-angle end-angle segments color)
        (f center radius start-angle end-angle segments color))))
  (define draw-circle-sector-lines
    (let ([f (foreign-procedure "DrawCircleSectorLines"
               ((& Vector-2) float float float int (& Color))
               void)])
      (lambda (center radius start-angle end-angle segments color)
        (f center radius start-angle end-angle segments color))))
  (define draw-circle-gradient
    (let ([f (foreign-procedure "DrawCircleGradient"
               (int int float (& Color) (& Color))
               void)])
      (lambda (center-x center-y radius color-1 color-2)
        (f center-x center-y radius color-1 color-2))))
  (define draw-circle-v
    (let ([f (foreign-procedure "DrawCircleV"
               ((& Vector-2) float (& Color))
               void)])
      (lambda (center radius color) (f center radius color))))
  (define draw-circle-lines
    (let ([f (foreign-procedure "DrawCircleLines"
               (int int float (& Color))
               void)])
      (lambda (center-x center-y radius color)
        (f center-x center-y radius color))))
  (define draw-ellipse
    (let ([f (foreign-procedure "DrawEllipse"
               (int int float float (& Color))
               void)])
      (lambda (center-x center-y radius-h radius-v color)
        (f center-x center-y radius-h radius-v color))))
  (define draw-ellipse-lines
    (let ([f (foreign-procedure "DrawEllipseLines"
               (int int float float (& Color))
               void)])
      (lambda (center-x center-y radius-h radius-v color)
        (f center-x center-y radius-h radius-v color))))
  (define draw-ring
    (let ([f (foreign-procedure "DrawRing"
               ((& Vector-2) float float float float int (& Color))
               void)])
      (lambda (center inner-radius outer-radius start-angle
               end-angle segments color)
        (f center inner-radius outer-radius start-angle end-angle
           segments color))))
  (define draw-ring-lines
    (let ([f (foreign-procedure "DrawRingLines"
               ((& Vector-2) float float float float int (& Color))
               void)])
      (lambda (center inner-radius outer-radius start-angle
               end-angle segments color)
        (f center inner-radius outer-radius start-angle end-angle
           segments color))))
  (define draw-rectangle
    (let ([f (foreign-procedure "DrawRectangle"
               (int int int int (& Color))
               void)])
      (lambda (pos-x pos-y width height color)
        (f pos-x pos-y width height color))))
  (define draw-rectangle-v
    (let ([f (foreign-procedure "DrawRectangleV"
               ((& Vector-2) (& Vector-2) (& Color))
               void)])
      (lambda (position size color) (f position size color))))
  (define draw-rectangle-rec
    (let ([f (foreign-procedure "DrawRectangleRec"
               ((& Rectangle) (& Color))
               void)])
      (lambda (rec color) (f rec color))))
  (define draw-rectangle-pro
    (let ([f (foreign-procedure "DrawRectanglePro"
               ((& Rectangle) (& Vector-2) float (& Color))
               void)])
      (lambda (rec origin rotation color)
        (f rec origin rotation color))))
  (define draw-rectangle-gradient-v
    (let ([f (foreign-procedure "DrawRectangleGradientV"
               (int int int int (& Color) (& Color))
               void)])
      (lambda (pos-x pos-y width height color-1 color-2)
        (f pos-x pos-y width height color-1 color-2))))
  (define draw-rectangle-gradient-h
    (let ([f (foreign-procedure "DrawRectangleGradientH"
               (int int int int (& Color) (& Color))
               void)])
      (lambda (pos-x pos-y width height color-1 color-2)
        (f pos-x pos-y width height color-1 color-2))))
  (define draw-rectangle-gradient-ex
    (let ([f (foreign-procedure "DrawRectangleGradientEx"
               ((& Rectangle) (& Color) (& Color) (& Color) (& Color))
               void)])
      (lambda (rec col-1 col-2 col-3 col-4)
        (f rec col-1 col-2 col-3 col-4))))
  (define draw-rectangle-lines
    (let ([f (foreign-procedure "DrawRectangleLines"
               (int int int int (& Color))
               void)])
      (lambda (pos-x pos-y width height color)
        (f pos-x pos-y width height color))))
  (define draw-rectangle-lines-ex
    (let ([f (foreign-procedure "DrawRectangleLinesEx"
               ((& Rectangle) float (& Color))
               void)])
      (lambda (rec line-thick color) (f rec line-thick color))))
  (define draw-rectangle-rounded
    (let ([f (foreign-procedure "DrawRectangleRounded"
               ((& Rectangle) float int (& Color))
               void)])
      (lambda (rec roundness segments color)
        (f rec roundness segments color))))
  (define draw-rectangle-rounded-lines
    (let ([f (foreign-procedure "DrawRectangleRoundedLines"
               ((& Rectangle) float int float (& Color))
               void)])
      (lambda (rec roundness segments line-thick color)
        (f rec roundness segments line-thick color))))
  (define draw-triangle
    (let ([f (foreign-procedure "DrawTriangle"
               ((& Vector-2) (& Vector-2) (& Vector-2) (& Color))
               void)])
      (lambda (v1 v2 v3 color) (f v1 v2 v3 color))))
  (define draw-triangle-lines
    (let ([f (foreign-procedure "DrawTriangleLines"
               ((& Vector-2) (& Vector-2) (& Vector-2) (& Color))
               void)])
      (lambda (v1 v2 v3 color) (f v1 v2 v3 color))))
  (define draw-triangle-fan
    (let ([f (foreign-procedure "DrawTriangleFan"
               ((* Vector-2) int (& Color))
               void)])
      (lambda (points point-count color)
        (f points point-count color))))
  (define draw-triangle-strip
    (let ([f (foreign-procedure "DrawTriangleStrip"
               ((* Vector-2) int (& Color))
               void)])
      (lambda (points point-count color)
        (f points point-count color))))
  (define draw-poly
    (let ([f (foreign-procedure "DrawPoly"
               ((& Vector-2) int float float (& Color))
               void)])
      (lambda (center sides radius rotation color)
        (f center sides radius rotation color))))
  (define draw-poly-lines
    (let ([f (foreign-procedure "DrawPolyLines"
               ((& Vector-2) int float float (& Color))
               void)])
      (lambda (center sides radius rotation color)
        (f center sides radius rotation color))))
  (define draw-poly-lines-ex
    (let ([f (foreign-procedure "DrawPolyLinesEx"
               ((& Vector-2) int float float float (& Color))
               void)])
      (lambda (center sides radius rotation line-thick color)
        (f center sides radius rotation line-thick color))))
  (define check-collision-recs
    (let ([f (foreign-procedure "CheckCollisionRecs"
               ((& Rectangle) (& Rectangle))
               boolean)])
      (lambda (rec-1 rec-2) (f rec-1 rec-2))))
  (define check-collision-circles
    (let ([f (foreign-procedure "CheckCollisionCircles"
               ((& Vector-2) float (& Vector-2) float)
               boolean)])
      (lambda (center-1 radius-1 center-2 radius-2)
        (f center-1 radius-1 center-2 radius-2))))
  (define check-collision-circle-rec
    (let ([f (foreign-procedure "CheckCollisionCircleRec"
               ((& Vector-2) float (& Rectangle))
               boolean)])
      (lambda (center radius rec) (f center radius rec))))
  (define check-collision-point-rec
    (let ([f (foreign-procedure "CheckCollisionPointRec"
               ((& Vector-2) (& Rectangle))
               boolean)])
      (lambda (point rec) (f point rec))))
  (define check-collision-point-circle
    (let ([f (foreign-procedure "CheckCollisionPointCircle"
               ((& Vector-2) (& Vector-2) float)
               boolean)])
      (lambda (point center radius) (f point center radius))))
  (define check-collision-point-triangle
    (let ([f (foreign-procedure "CheckCollisionPointTriangle"
               ((& Vector-2) (& Vector-2) (& Vector-2) (& Vector-2))
               boolean)])
      (lambda (point p1 p2 p3) (f point p1 p2 p3))))
  (define check-collision-lines
    (let ([f (foreign-procedure "CheckCollisionLines"
               ((& Vector-2)
                (& Vector-2)
                (& Vector-2)
                (& Vector-2)
                (* Vector-2))
               boolean)])
      (lambda (start-pos-1 end-pos-1 start-pos-2 end-pos-2
               collision-point)
        (f start-pos-1 end-pos-1 start-pos-2 end-pos-2
           collision-point))))
  (define check-collision-point-line
    (let ([f (foreign-procedure "CheckCollisionPointLine"
               ((& Vector-2) (& Vector-2) (& Vector-2) int)
               boolean)])
      (lambda (point p1 p2 threshold) (f point p1 p2 threshold))))
  (define get-collision-rec
    (let ([f (foreign-procedure "GetCollisionRec"
               ((& Rectangle) (& Rectangle))
               (& Rectangle))])
      (case-lambda
        [(rec-1 rec-2)
         (let ([ret (make-ftype-pointer
                      Rectangle
                      (foreign-alloc (ftype-sizeof Rectangle)))])
           (f ret rec-1 rec-2)
           ret)]
        [(struct rec-1 rec-2) (f struct rec-1 rec-2) struct])))
  (define load-image
    (let ([f (foreign-procedure "LoadImage"
               (string)
               (& Image))])
      (case-lambda
        [(file-name)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret file-name)
           ret)]
        [(struct file-name) (f struct file-name) struct])))
  (define load-image-raw
    (let ([f (foreign-procedure "LoadImageRaw"
               (string int int int int)
               (& Image))])
      (case-lambda
        [(file-name width height format header-size)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret file-name width height format header-size)
           ret)]
        [(struct file-name width height format header-size)
         (f struct file-name width height format header-size)
         struct])))
  (define load-image-anim
    (let ([f (foreign-procedure "LoadImageAnim"
               (string u8*)
               (& Image))])
      (case-lambda
        [(file-name frames)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret file-name frames)
           ret)]
        [(struct file-name frames)
         (f struct file-name frames)
         struct])))
  (define load-image-from-memory
    (let ([f (foreign-procedure "LoadImageFromMemory"
               (string (* unsigned-8) int)
               (& Image))])
      (case-lambda
        [(file-type file-data data-size)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret file-type file-data data-size)
           ret)]
        [(struct file-type file-data data-size)
         (f struct file-type file-data data-size)
         struct])))
  (define load-image-from-texture
    (let ([f (foreign-procedure "LoadImageFromTexture"
               ((& Texture))
               (& Image))])
      (case-lambda
        [(texture)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret texture)
           ret)]
        [(struct texture) (f struct texture) struct])))
  (define load-image-from-screen
    (let ([f (foreign-procedure "LoadImageFromScreen"
               ()
               (& Image))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define unload-image
    (let ([f (foreign-procedure "UnloadImage"
               ((& Image))
               void)])
      (lambda (image) (f image))))
  (define export-image
    (let ([f (foreign-procedure "ExportImage"
               ((& Image) string)
               boolean)])
      (lambda (image file-name) (f image file-name))))
  (define export-image-as-code
    (let ([f (foreign-procedure "ExportImageAsCode"
               ((& Image) string)
               boolean)])
      (lambda (image file-name) (f image file-name))))
  (define gen-image-color
    (let ([f (foreign-procedure "GenImageColor"
               (int int (& Color))
               (& Image))])
      (case-lambda
        [(width height color)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret width height color)
           ret)]
        [(struct width height color)
         (f struct width height color)
         struct])))
  (define gen-image-gradient-v
    (let ([f (foreign-procedure "GenImageGradientV"
               (int int (& Color) (& Color))
               (& Image))])
      (case-lambda
        [(width height top bottom)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret width height top bottom)
           ret)]
        [(struct width height top bottom)
         (f struct width height top bottom)
         struct])))
  (define gen-image-gradient-h
    (let ([f (foreign-procedure "GenImageGradientH"
               (int int (& Color) (& Color))
               (& Image))])
      (case-lambda
        [(width height left right)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret width height left right)
           ret)]
        [(struct width height left right)
         (f struct width height left right)
         struct])))
  (define gen-image-gradient-radial
    (let ([f (foreign-procedure "GenImageGradientRadial"
               (int int float (& Color) (& Color))
               (& Image))])
      (case-lambda
        [(width height density inner outer)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret width height density inner outer)
           ret)]
        [(struct width height density inner outer)
         (f struct width height density inner outer)
         struct])))
  (define gen-image-checked
    (let ([f (foreign-procedure "GenImageChecked"
               (int int int int (& Color) (& Color))
               (& Image))])
      (case-lambda
        [(width height checks-x checks-y col-1 col-2)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret width height checks-x checks-y col-1 col-2)
           ret)]
        [(struct width height checks-x checks-y col-1 col-2)
         (f struct width height checks-x checks-y col-1 col-2)
         struct])))
  (define gen-image-white-noise
    (let ([f (foreign-procedure "GenImageWhiteNoise"
               (int int float)
               (& Image))])
      (case-lambda
        [(width height factor)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret width height factor)
           ret)]
        [(struct width height factor)
         (f struct width height factor)
         struct])))
  (define gen-image-cellular
    (let ([f (foreign-procedure "GenImageCellular"
               (int int int)
               (& Image))])
      (case-lambda
        [(width height tile-size)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret width height tile-size)
           ret)]
        [(struct width height tile-size)
         (f struct width height tile-size)
         struct])))
  (define image-copy
    (let ([f (foreign-procedure "ImageCopy"
               ((& Image))
               (& Image))])
      (case-lambda
        [(image)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret image)
           ret)]
        [(struct image) (f struct image) struct])))
  (define image-from-image
    (let ([f (foreign-procedure "ImageFromImage"
               ((& Image) (& Rectangle))
               (& Image))])
      (case-lambda
        [(image rec)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret image rec)
           ret)]
        [(struct image rec) (f struct image rec) struct])))
  (define image-text
    (let ([f (foreign-procedure "ImageText"
               (string int (& Color))
               (& Image))])
      (case-lambda
        [(text font-size color)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret text font-size color)
           ret)]
        [(struct text font-size color)
         (f struct text font-size color)
         struct])))
  (define image-text-ex
    (let ([f (foreign-procedure "ImageTextEx"
               ((& Font) string float float (& Color))
               (& Image))])
      (case-lambda
        [(font text font-size spacing tint)
         (let ([ret (make-ftype-pointer
                      Image
                      (foreign-alloc (ftype-sizeof Image)))])
           (f ret font text font-size spacing tint)
           ret)]
        [(struct font text font-size spacing tint)
         (f struct font text font-size spacing tint)
         struct])))
  (define image-format
    (let ([f (foreign-procedure "ImageFormat"
               ((* Image) int)
               void)])
      (lambda (image new-format) (f image new-format))))
  (define image-to-pot
    (let ([f (foreign-procedure "ImageToPOT"
               ((* Image) (& Color))
               void)])
      (lambda (image fill) (f image fill))))
  (define image-crop
    (let ([f (foreign-procedure "ImageCrop"
               ((* Image) (& Rectangle))
               void)])
      (lambda (image crop) (f image crop))))
  (define image-alpha-crop
    (let ([f (foreign-procedure "ImageAlphaCrop"
               ((* Image) float)
               void)])
      (lambda (image threshold) (f image threshold))))
  (define image-alpha-clear
    (let ([f (foreign-procedure "ImageAlphaClear"
               ((* Image) (& Color) float)
               void)])
      (lambda (image color threshold) (f image color threshold))))
  (define image-alpha-mask
    (let ([f (foreign-procedure "ImageAlphaMask"
               ((* Image) (& Image))
               void)])
      (lambda (image alpha-mask) (f image alpha-mask))))
  (define image-alpha-premultiply
    (let ([f (foreign-procedure "ImageAlphaPremultiply"
               ((* Image))
               void)])
      (lambda (image) (f image))))
  (define image-resize
    (let ([f (foreign-procedure "ImageResize"
               ((* Image) int int)
               void)])
      (lambda (image new-width new-height)
        (f image new-width new-height))))
  (define image-resize-nn
    (let ([f (foreign-procedure "ImageResizeNN"
               ((* Image) int int)
               void)])
      (lambda (image new-width new-height)
        (f image new-width new-height))))
  (define image-resize-canvas
    (let ([f (foreign-procedure "ImageResizeCanvas"
               ((* Image) int int int int (& Color))
               void)])
      (lambda (image new-width new-height offset-x offset-y fill)
        (f image new-width new-height offset-x offset-y fill))))
  (define image-mipmaps
    (let ([f (foreign-procedure "ImageMipmaps"
               ((* Image))
               void)])
      (lambda (image) (f image))))
  (define image-dither
    (let ([f (foreign-procedure "ImageDither"
               ((* Image) int int int int)
               void)])
      (lambda (image rbpp gbpp bbpp abpp)
        (f image rbpp gbpp bbpp abpp))))
  (define image-flip-vertical
    (let ([f (foreign-procedure "ImageFlipVertical"
               ((* Image))
               void)])
      (lambda (image) (f image))))
  (define image-flip-horizontal
    (let ([f (foreign-procedure "ImageFlipHorizontal"
               ((* Image))
               void)])
      (lambda (image) (f image))))
  (define image-rotate-cw
    (let ([f (foreign-procedure "ImageRotateCW"
               ((* Image))
               void)])
      (lambda (image) (f image))))
  (define image-rotate-ccw
    (let ([f (foreign-procedure "ImageRotateCCW"
               ((* Image))
               void)])
      (lambda (image) (f image))))
  (define image-color-tint
    (let ([f (foreign-procedure "ImageColorTint"
               ((* Image) (& Color))
               void)])
      (lambda (image color) (f image color))))
  (define image-color-invert
    (let ([f (foreign-procedure "ImageColorInvert"
               ((* Image))
               void)])
      (lambda (image) (f image))))
  (define image-color-grayscale
    (let ([f (foreign-procedure "ImageColorGrayscale"
               ((* Image))
               void)])
      (lambda (image) (f image))))
  (define image-color-contrast
    (let ([f (foreign-procedure "ImageColorContrast"
               ((* Image) float)
               void)])
      (lambda (image contrast) (f image contrast))))
  (define image-color-brightness
    (let ([f (foreign-procedure "ImageColorBrightness"
               ((* Image) int)
               void)])
      (lambda (image brightness) (f image brightness))))
  (define image-color-replace
    (let ([f (foreign-procedure "ImageColorReplace"
               ((* Image) (& Color) (& Color))
               void)])
      (lambda (image color replace) (f image color replace))))
  (define load-image-colors
    (let ([f (foreign-procedure "LoadImageColors"
               ((& Image))
               (* Color))])
      (lambda (image) (f image))))
  (define load-image-palette
    (let ([f (foreign-procedure "LoadImagePalette"
               ((& Image) int u8*)
               (* Color))])
      (lambda (image max-palette-size color-count)
        (f image max-palette-size color-count))))
  (define unload-image-colors
    (let ([f (foreign-procedure "UnloadImageColors"
               ((* Color))
               void)])
      (lambda (colors) (f colors))))
  (define unload-image-palette
    (let ([f (foreign-procedure "UnloadImagePalette"
               ((* Color))
               void)])
      (lambda (colors) (f colors))))
  (define get-image-alpha-border
    (let ([f (foreign-procedure "GetImageAlphaBorder"
               ((& Image) float)
               (& Rectangle))])
      (case-lambda
        [(image threshold)
         (let ([ret (make-ftype-pointer
                      Rectangle
                      (foreign-alloc (ftype-sizeof Rectangle)))])
           (f ret image threshold)
           ret)]
        [(struct image threshold)
         (f struct image threshold)
         struct])))
  (define get-image-color
    (let ([f (foreign-procedure "GetImageColor"
               ((& Image) int int)
               (& Color))])
      (case-lambda
        [(image x y)
         (let ([ret (make-ftype-pointer
                      Color
                      (foreign-alloc (ftype-sizeof Color)))])
           (f ret image x y)
           ret)]
        [(struct image x y) (f struct image x y) struct])))
  (define image-clear-background
    (let ([f (foreign-procedure "ImageClearBackground"
               ((* Image) (& Color))
               void)])
      (lambda (dst color) (f dst color))))
  (define image-draw-pixel
    (let ([f (foreign-procedure "ImageDrawPixel"
               ((* Image) int int (& Color))
               void)])
      (lambda (dst pos-x pos-y color) (f dst pos-x pos-y color))))
  (define image-draw-pixel-v
    (let ([f (foreign-procedure "ImageDrawPixelV"
               ((* Image) (& Vector-2) (& Color))
               void)])
      (lambda (dst position color) (f dst position color))))
  (define image-draw-line
    (let ([f (foreign-procedure "ImageDrawLine"
               ((* Image) int int int int (& Color))
               void)])
      (lambda (dst start-pos-x start-pos-y end-pos-x end-pos-y
               color)
        (f dst start-pos-x start-pos-y end-pos-x end-pos-y color))))
  (define image-draw-line-v
    (let ([f (foreign-procedure "ImageDrawLineV"
               ((* Image) (& Vector-2) (& Vector-2) (& Color))
               void)])
      (lambda (dst start end color) (f dst start end color))))
  (define image-draw-circle
    (let ([f (foreign-procedure "ImageDrawCircle"
               ((* Image) int int int (& Color))
               void)])
      (lambda (dst center-x center-y radius color)
        (f dst center-x center-y radius color))))
  (define image-draw-circle-v
    (let ([f (foreign-procedure "ImageDrawCircleV"
               ((* Image) (& Vector-2) int (& Color))
               void)])
      (lambda (dst center radius color)
        (f dst center radius color))))
  (define image-draw-rectangle
    (let ([f (foreign-procedure "ImageDrawRectangle"
               ((* Image) int int int int (& Color))
               void)])
      (lambda (dst pos-x pos-y width height color)
        (f dst pos-x pos-y width height color))))
  (define image-draw-rectangle-v
    (let ([f (foreign-procedure "ImageDrawRectangleV"
               ((* Image) (& Vector-2) (& Vector-2) (& Color))
               void)])
      (lambda (dst position size color)
        (f dst position size color))))
  (define image-draw-rectangle-rec
    (let ([f (foreign-procedure "ImageDrawRectangleRec"
               ((* Image) (& Rectangle) (& Color))
               void)])
      (lambda (dst rec color) (f dst rec color))))
  (define image-draw-rectangle-lines
    (let ([f (foreign-procedure "ImageDrawRectangleLines"
               ((* Image) (& Rectangle) int (& Color))
               void)])
      (lambda (dst rec thick color) (f dst rec thick color))))
  (define image-draw
    (let ([f (foreign-procedure "ImageDraw"
               ((* Image) (& Image) (& Rectangle) (& Rectangle) (& Color))
               void)])
      (lambda (dst src src-rec dst-rec tint)
        (f dst src src-rec dst-rec tint))))
  (define image-draw-text
    (let ([f (foreign-procedure "ImageDrawText"
               ((* Image) string int int int (& Color))
               void)])
      (lambda (dst text pos-x pos-y font-size color)
        (f dst text pos-x pos-y font-size color))))
  (define image-draw-text-ex
    (let ([f (foreign-procedure "ImageDrawTextEx"
               ((* Image)
                (& Font)
                string
                (& Vector-2)
                float
                float
                (& Color))
               void)])
      (lambda (dst font text position font-size spacing tint)
        (f dst font text position font-size spacing tint))))
  (define load-texture
    (let ([f (foreign-procedure "LoadTexture"
               (string)
               (& Texture))])
      (case-lambda
        [(file-name)
         (let ([ret (make-ftype-pointer
                      Texture
                      (foreign-alloc (ftype-sizeof Texture)))])
           (f ret file-name)
           ret)]
        [(struct file-name) (f struct file-name) struct])))
  (define load-texture-from-image
    (let ([f (foreign-procedure "LoadTextureFromImage"
               ((& Image))
               (& Texture))])
      (case-lambda
        [(image)
         (let ([ret (make-ftype-pointer
                      Texture
                      (foreign-alloc (ftype-sizeof Texture)))])
           (f ret image)
           ret)]
        [(struct image) (f struct image) struct])))
  (define load-texture-cubemap
    (let ([f (foreign-procedure "LoadTextureCubemap"
               ((& Image) int)
               (& Texture))])
      (case-lambda
        [(image layout)
         (let ([ret (make-ftype-pointer
                      Texture
                      (foreign-alloc (ftype-sizeof Texture)))])
           (f ret image layout)
           ret)]
        [(struct image layout) (f struct image layout) struct])))
  (define load-render-texture
    (let ([f (foreign-procedure "LoadRenderTexture"
               (int int)
               (& Render-Texture))])
      (case-lambda
        [(width height)
         (let ([ret (make-ftype-pointer
                      Render-Texture
                      (foreign-alloc (ftype-sizeof Render-Texture)))])
           (f ret width height)
           ret)]
        [(struct width height) (f struct width height) struct])))
  (define unload-texture
    (let ([f (foreign-procedure "UnloadTexture"
               ((& Texture))
               void)])
      (lambda (texture) (f texture))))
  (define unload-render-texture
    (let ([f (foreign-procedure "UnloadRenderTexture"
               ((& Render-Texture))
               void)])
      (lambda (target) (f target))))
  (define update-texture
    (let ([f (foreign-procedure "UpdateTexture"
               ((& Texture) void*)
               void)])
      (lambda (texture pixels) (f texture pixels))))
  (define update-texture-rec
    (let ([f (foreign-procedure "UpdateTextureRec"
               ((& Texture) (& Rectangle) void*)
               void)])
      (lambda (texture rec pixels) (f texture rec pixels))))
  (define gen-texture-mipmaps
    (let ([f (foreign-procedure "GenTextureMipmaps"
               ((* Texture))
               void)])
      (lambda (texture) (f texture))))
  (define set-texture-filter
    (let ([f (foreign-procedure "SetTextureFilter"
               ((& Texture) int)
               void)])
      (lambda (texture filter) (f texture filter))))
  (define set-texture-wrap
    (let ([f (foreign-procedure "SetTextureWrap"
               ((& Texture) int)
               void)])
      (lambda (texture wrap) (f texture wrap))))
  (define draw-texture
    (let ([f (foreign-procedure "DrawTexture"
               ((& Texture) int int (& Color))
               void)])
      (lambda (texture pos-x pos-y tint)
        (f texture pos-x pos-y tint))))
  (define draw-texture-v
    (let ([f (foreign-procedure "DrawTextureV"
               ((& Texture) (& Vector-2) (& Color))
               void)])
      (lambda (texture position tint) (f texture position tint))))
  (define draw-texture-ex
    (let ([f (foreign-procedure "DrawTextureEx"
               ((& Texture) (& Vector-2) float float (& Color))
               void)])
      (lambda (texture position rotation scale tint)
        (f texture position rotation scale tint))))
  (define draw-texture-rec
    (let ([f (foreign-procedure "DrawTextureRec"
               ((& Texture) (& Rectangle) (& Vector-2) (& Color))
               void)])
      (lambda (texture source position tint)
        (f texture source position tint))))
  (define draw-texture-quad
    (let ([f (foreign-procedure "DrawTextureQuad"
               ((& Texture)
                (& Vector-2)
                (& Vector-2)
                (& Rectangle)
                (& Color))
               void)])
      (lambda (texture tiling offset quad tint)
        (f texture tiling offset quad tint))))
  (define draw-texture-tiled
    (let ([f (foreign-procedure "DrawTextureTiled"
               ((& Texture)
                (& Rectangle)
                (& Rectangle)
                (& Vector-2)
                float
                float
                (& Color))
               void)])
      (lambda (texture source dest origin rotation scale tint)
        (f texture source dest origin rotation scale tint))))
  (define draw-texture-pro
    (let ([f (foreign-procedure "DrawTexturePro"
               ((& Texture)
                (& Rectangle)
                (& Rectangle)
                (& Vector-2)
                float
                (& Color))
               void)])
      (lambda (texture source dest origin rotation tint)
        (f texture source dest origin rotation tint))))
  (define draw-texture-npatch
    (let ([f (foreign-procedure "DrawTextureNPatch"
               ((& Texture)
                (& Npatch-Info)
                (& Rectangle)
                (& Vector-2)
                float
                (& Color))
               void)])
      (lambda (texture npatch-info dest origin rotation tint)
        (f texture npatch-info dest origin rotation tint))))
  (define draw-texture-poly
    (let ([f (foreign-procedure "DrawTexturePoly"
               ((& Texture)
                (& Vector-2)
                (* Vector-2)
                (* Vector-2)
                int
                (& Color))
               void)])
      (lambda (texture center points texcoords point-count tint)
        (f texture center points texcoords point-count tint))))
  (define fade
    (let ([f (foreign-procedure "Fade"
               ((& Color) float)
               (& Color))])
      (case-lambda
        [(color alpha)
         (let ([ret (make-ftype-pointer
                      Color
                      (foreign-alloc (ftype-sizeof Color)))])
           (f ret color alpha)
           ret)]
        [(struct color alpha) (f struct color alpha) struct])))
  (define color-to-int
    (let ([f (foreign-procedure "ColorToInt" ((& Color)) int)])
      (lambda (color) (f color))))
  (define color-normalize
    (let ([f (foreign-procedure "ColorNormalize"
               ((& Color))
               (& Vector-4))])
      (case-lambda
        [(color)
         (let ([ret (make-ftype-pointer
                      Vector-4
                      (foreign-alloc (ftype-sizeof Vector-4)))])
           (f ret color)
           ret)]
        [(struct color) (f struct color) struct])))
  (define color-from-normalized
    (let ([f (foreign-procedure "ColorFromNormalized"
               ((& Vector-4))
               (& Color))])
      (case-lambda
        [(normalized)
         (let ([ret (make-ftype-pointer
                      Color
                      (foreign-alloc (ftype-sizeof Color)))])
           (f ret normalized)
           ret)]
        [(struct normalized) (f struct normalized) struct])))
  (define color-to-hsv
    (let ([f (foreign-procedure "ColorToHSV"
               ((& Color))
               (& Vector-3))])
      (case-lambda
        [(color)
         (let ([ret (make-ftype-pointer
                      Vector-3
                      (foreign-alloc (ftype-sizeof Vector-3)))])
           (f ret color)
           ret)]
        [(struct color) (f struct color) struct])))
  (define color-from-hsv
    (let ([f (foreign-procedure "ColorFromHSV"
               (float float float)
               (& Color))])
      (case-lambda
        [(hue saturation value)
         (let ([ret (make-ftype-pointer
                      Color
                      (foreign-alloc (ftype-sizeof Color)))])
           (f ret hue saturation value)
           ret)]
        [(struct hue saturation value)
         (f struct hue saturation value)
         struct])))
  (define color-alpha
    (let ([f (foreign-procedure "ColorAlpha"
               ((& Color) float)
               (& Color))])
      (case-lambda
        [(color alpha)
         (let ([ret (make-ftype-pointer
                      Color
                      (foreign-alloc (ftype-sizeof Color)))])
           (f ret color alpha)
           ret)]
        [(struct color alpha) (f struct color alpha) struct])))
  (define color-alpha-blend
    (let ([f (foreign-procedure "ColorAlphaBlend"
               ((& Color) (& Color) (& Color))
               (& Color))])
      (case-lambda
        [(dst src tint)
         (let ([ret (make-ftype-pointer
                      Color
                      (foreign-alloc (ftype-sizeof Color)))])
           (f ret dst src tint)
           ret)]
        [(struct dst src tint) (f struct dst src tint) struct])))
  (define get-color
    (let ([f (foreign-procedure "GetColor"
               (unsigned)
               (& Color))])
      (case-lambda
        [(hex-value)
         (let ([ret (make-ftype-pointer
                      Color
                      (foreign-alloc (ftype-sizeof Color)))])
           (f ret hex-value)
           ret)]
        [(struct hex-value) (f struct hex-value) struct])))
  (define get-pixel-color
    (let ([f (foreign-procedure "GetPixelColor"
               (void* int)
               (& Color))])
      (case-lambda
        [(src-ptr format)
         (let ([ret (make-ftype-pointer
                      Color
                      (foreign-alloc (ftype-sizeof Color)))])
           (f ret src-ptr format)
           ret)]
        [(struct src-ptr format)
         (f struct src-ptr format)
         struct])))
  (define set-pixel-color
    (let ([f (foreign-procedure "SetPixelColor"
               (void* (& Color) int)
               void)])
      (lambda (dst-ptr color format) (f dst-ptr color format))))
  (define get-pixel-data-size
    (let ([f (foreign-procedure "GetPixelDataSize"
               (int int int)
               int)])
      (lambda (width height format) (f width height format))))
  (define get-font-default
    (let ([f (foreign-procedure "GetFontDefault" () (& Font))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      Font
                      (foreign-alloc (ftype-sizeof Font)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define load-font
    (let ([f (foreign-procedure "LoadFont" (string) (& Font))])
      (case-lambda
        [(file-name)
         (let ([ret (make-ftype-pointer
                      Font
                      (foreign-alloc (ftype-sizeof Font)))])
           (f ret file-name)
           ret)]
        [(struct file-name) (f struct file-name) struct])))
  (define load-font-ex
    (let ([f (foreign-procedure "LoadFontEx"
               (string int u8* int)
               (& Font))])
      (case-lambda
        [(file-name font-size font-chars glyph-count)
         (let ([ret (make-ftype-pointer
                      Font
                      (foreign-alloc (ftype-sizeof Font)))])
           (f ret file-name font-size font-chars glyph-count)
           ret)]
        [(struct file-name font-size font-chars glyph-count)
         (f struct file-name font-size font-chars glyph-count)
         struct])))
  (define load-font-from-image
    (let ([f (foreign-procedure "LoadFontFromImage"
               ((& Image) (& Color) int)
               (& Font))])
      (case-lambda
        [(image key first-char)
         (let ([ret (make-ftype-pointer
                      Font
                      (foreign-alloc (ftype-sizeof Font)))])
           (f ret image key first-char)
           ret)]
        [(struct image key first-char)
         (f struct image key first-char)
         struct])))
  (define load-font-from-memory
    (let ([f (foreign-procedure "LoadFontFromMemory"
               (string (* unsigned-8) int int u8* int)
               (& Font))])
      (case-lambda
        [(file-type file-data data-size font-size font-chars
          glyph-count)
         (let ([ret (make-ftype-pointer
                      Font
                      (foreign-alloc (ftype-sizeof Font)))])
           (f ret file-type file-data data-size font-size font-chars
              glyph-count)
           ret)]
        [(struct file-type file-data data-size font-size font-chars
          glyph-count)
         (f struct file-type file-data data-size font-size font-chars
            glyph-count)
         struct])))
  (define load-font-data
    (let ([f (foreign-procedure "LoadFontData"
               ((* unsigned-8) int int u8* int int)
               (* Glyph-Info))])
      (lambda (file-data data-size font-size font-chars
               glyph-count type)
        (f file-data data-size font-size font-chars glyph-count
           type))))
  (define unload-font-data
    (let ([f (foreign-procedure "UnloadFontData"
               ((* Glyph-Info) int)
               void)])
      (lambda (chars glyph-count) (f chars glyph-count))))
  (define unload-font
    (let ([f (foreign-procedure "UnloadFont" ((& Font)) void)])
      (lambda (font) (f font))))
  (define export-font-as-code
    (let ([f (foreign-procedure "ExportFontAsCode"
               ((& Font) string)
               boolean)])
      (lambda (font file-name) (f font file-name))))
  (define draw-fps
    (let ([f (foreign-procedure "DrawFPS" (int int) void)])
      (lambda (pos-x pos-y) (f pos-x pos-y))))
  (define draw-text
    (let ([f (foreign-procedure "DrawText"
               (string int int int (& Color))
               void)])
      (lambda (text pos-x pos-y font-size color)
        (f text pos-x pos-y font-size color))))
  (define draw-text-ex
    (let ([f (foreign-procedure "DrawTextEx"
               ((& Font) string (& Vector-2) float float (& Color))
               void)])
      (lambda (font text position font-size spacing tint)
        (f font text position font-size spacing tint))))
  (define draw-text-pro
    (let ([f (foreign-procedure "DrawTextPro"
               ((& Font)
                string
                (& Vector-2)
                (& Vector-2)
                float
                float
                float
                (& Color))
               void)])
      (lambda (font text position origin rotation font-size
               spacing tint)
        (f font text position origin rotation font-size spacing
           tint))))
  (define draw-text-codepoint
    (let ([f (foreign-procedure "DrawTextCodepoint"
               ((& Font) int (& Vector-2) float (& Color))
               void)])
      (lambda (font codepoint position font-size tint)
        (f font codepoint position font-size tint))))
  (define draw-text-codepoints
    (let ([f (foreign-procedure "DrawTextCodepoints"
               ((& Font) u8* int (& Vector-2) float float (& Color))
               void)])
      (lambda (font codepoints count position font-size spacing
               tint)
        (f font codepoints count position font-size spacing tint))))
  (define measure-text
    (let ([f (foreign-procedure "MeasureText"
               (string int)
               int)])
      (lambda (text font-size) (f text font-size))))
  (define measure-text-ex
    (let ([f (foreign-procedure "MeasureTextEx"
               ((& Font) string float float)
               (& Vector-2))])
      (case-lambda
        [(font text font-size spacing)
         (let ([ret (make-ftype-pointer
                      Vector-2
                      (foreign-alloc (ftype-sizeof Vector-2)))])
           (f ret font text font-size spacing)
           ret)]
        [(struct font text font-size spacing)
         (f struct font text font-size spacing)
         struct])))
  (define get-glyph-index
    (let ([f (foreign-procedure "GetGlyphIndex"
               ((& Font) int)
               int)])
      (lambda (font codepoint) (f font codepoint))))
  (define get-glyph-info
    (let ([f (foreign-procedure "GetGlyphInfo"
               ((& Font) int)
               (& Glyph-Info))])
      (case-lambda
        [(font codepoint)
         (let ([ret (make-ftype-pointer
                      Glyph-Info
                      (foreign-alloc (ftype-sizeof Glyph-Info)))])
           (f ret font codepoint)
           ret)]
        [(struct font codepoint)
         (f struct font codepoint)
         struct])))
  (define get-glyph-atlas-rec
    (let ([f (foreign-procedure "GetGlyphAtlasRec"
               ((& Font) int)
               (& Rectangle))])
      (case-lambda
        [(font codepoint)
         (let ([ret (make-ftype-pointer
                      Rectangle
                      (foreign-alloc (ftype-sizeof Rectangle)))])
           (f ret font codepoint)
           ret)]
        [(struct font codepoint)
         (f struct font codepoint)
         struct])))
  (define load-codepoints
    (let ([f (foreign-procedure "LoadCodepoints"
               (string u8*)
               u8*)])
      (lambda (text count) (f text count))))
  (define unload-codepoints
    (let ([f (foreign-procedure "UnloadCodepoints" (u8*) void)])
      (lambda (codepoints) (f codepoints))))
  (define get-codepoint-count
    (let ([f (foreign-procedure "GetCodepointCount"
               (string)
               int)])
      (lambda (text) (f text))))
  (define get-codepoint
    (let ([f (foreign-procedure "GetCodepoint"
               (string u8*)
               int)])
      (lambda (text codepoint-size) (f text codepoint-size))))
  (define codepoint-to-utf8
    (let ([f (foreign-procedure "CodepointToUTF8"
               (int u8*)
               string)])
      (lambda (codepoint utf-8size) (f codepoint utf-8size))))
  (define text-copy
    (let ([f (foreign-procedure "TextCopy"
               (string string)
               int)])
      (lambda (dst src) (f dst src))))
  (define text-is-equal
    (let ([f (foreign-procedure "TextIsEqual"
               (string string)
               boolean)])
      (lambda (text-1 text-2) (f text-1 text-2))))
  (define text-length
    (let ([f (foreign-procedure "TextLength"
               (string)
               unsigned)])
      (lambda (text) (f text))))
  (define text-subtext
    (let ([f (foreign-procedure "TextSubtext"
               (string int int)
               string)])
      (lambda (text position length) (f text position length))))
  (define text-replace
    (let ([f (foreign-procedure "TextReplace"
               (string string string)
               string)])
      (lambda (text replace by) (f text replace by))))
  (define text-insert
    (let ([f (foreign-procedure "TextInsert"
               (string string int)
               string)])
      (lambda (text insert position) (f text insert position))))
  (define text-append
    (let ([f (foreign-procedure "TextAppend"
               (string string u8*)
               void)])
      (lambda (text append position) (f text append position))))
  (define text-find-index
    (let ([f (foreign-procedure "TextFindIndex"
               (string string)
               int)])
      (lambda (text find) (f text find))))
  (define text-to-upper
    (let ([f (foreign-procedure "TextToUpper" (string) string)])
      (lambda (text) (f text))))
  (define text-to-lower
    (let ([f (foreign-procedure "TextToLower" (string) string)])
      (lambda (text) (f text))))
  (define text-to-pascal
    (let ([f (foreign-procedure "TextToPascal"
               (string)
               string)])
      (lambda (text) (f text))))
  (define text-to-integer
    (let ([f (foreign-procedure "TextToInteger" (string) int)])
      (lambda (text) (f text))))
  (define draw-line-3d
    (let ([f (foreign-procedure "DrawLine3D"
               ((& Vector-3) (& Vector-3) (& Color))
               void)])
      (lambda (start-pos end-pos color)
        (f start-pos end-pos color))))
  (define draw-point-3d
    (let ([f (foreign-procedure "DrawPoint3D"
               ((& Vector-3) (& Color))
               void)])
      (lambda (position color) (f position color))))
  (define draw-circle-3d
    (let ([f (foreign-procedure "DrawCircle3D"
               ((& Vector-3) float (& Vector-3) float (& Color))
               void)])
      (lambda (center radius rotation-axis rotation-angle color)
        (f center radius rotation-axis rotation-angle color))))
  (define draw-triangle-3d
    (let ([f (foreign-procedure "DrawTriangle3D"
               ((& Vector-3) (& Vector-3) (& Vector-3) (& Color))
               void)])
      (lambda (v1 v2 v3 color) (f v1 v2 v3 color))))
  (define draw-triangle-strip-3d
    (let ([f (foreign-procedure "DrawTriangleStrip3D"
               ((* Vector-3) int (& Color))
               void)])
      (lambda (points point-count color)
        (f points point-count color))))
  (define draw-cube
    (let ([f (foreign-procedure "DrawCube"
               ((& Vector-3) float float float (& Color))
               void)])
      (lambda (position width height length color)
        (f position width height length color))))
  (define draw-cube-v
    (let ([f (foreign-procedure "DrawCubeV"
               ((& Vector-3) (& Vector-3) (& Color))
               void)])
      (lambda (position size color) (f position size color))))
  (define draw-cube-wires
    (let ([f (foreign-procedure "DrawCubeWires"
               ((& Vector-3) float float float (& Color))
               void)])
      (lambda (position width height length color)
        (f position width height length color))))
  (define draw-cube-wires-v
    (let ([f (foreign-procedure "DrawCubeWiresV"
               ((& Vector-3) (& Vector-3) (& Color))
               void)])
      (lambda (position size color) (f position size color))))
  (define draw-cube-texture
    (let ([f (foreign-procedure "DrawCubeTexture"
               ((& Texture) (& Vector-3) float float float (& Color))
               void)])
      (lambda (texture position width height length color)
        (f texture position width height length color))))
  (define draw-cube-texture-rec
    (let ([f (foreign-procedure "DrawCubeTextureRec"
               ((& Texture)
                (& Rectangle)
                (& Vector-3)
                float
                float
                float
                (& Color))
               void)])
      (lambda (texture source position width height length color)
        (f texture source position width height length color))))
  (define draw-sphere
    (let ([f (foreign-procedure "DrawSphere"
               ((& Vector-3) float (& Color))
               void)])
      (lambda (center-pos radius color)
        (f center-pos radius color))))
  (define draw-sphere-ex
    (let ([f (foreign-procedure "DrawSphereEx"
               ((& Vector-3) float int int (& Color))
               void)])
      (lambda (center-pos radius rings slices color)
        (f center-pos radius rings slices color))))
  (define draw-sphere-wires
    (let ([f (foreign-procedure "DrawSphereWires"
               ((& Vector-3) float int int (& Color))
               void)])
      (lambda (center-pos radius rings slices color)
        (f center-pos radius rings slices color))))
  (define draw-cylinder
    (let ([f (foreign-procedure "DrawCylinder"
               ((& Vector-3) float float float int (& Color))
               void)])
      (lambda (position radius-top radius-bottom height slices
               color)
        (f position radius-top radius-bottom height slices color))))
  (define draw-cylinder-ex
    (let ([f (foreign-procedure "DrawCylinderEx"
               ((& Vector-3) (& Vector-3) float float int (& Color))
               void)])
      (lambda (start-pos end-pos start-radius end-radius sides
               color)
        (f start-pos end-pos start-radius end-radius sides color))))
  (define draw-cylinder-wires
    (let ([f (foreign-procedure "DrawCylinderWires"
               ((& Vector-3) float float float int (& Color))
               void)])
      (lambda (position radius-top radius-bottom height slices
               color)
        (f position radius-top radius-bottom height slices color))))
  (define draw-cylinder-wires-ex
    (let ([f (foreign-procedure "DrawCylinderWiresEx"
               ((& Vector-3) (& Vector-3) float float int (& Color))
               void)])
      (lambda (start-pos end-pos start-radius end-radius sides
               color)
        (f start-pos end-pos start-radius end-radius sides color))))
  (define draw-plane
    (let ([f (foreign-procedure "DrawPlane"
               ((& Vector-3) (& Vector-2) (& Color))
               void)])
      (lambda (center-pos size color) (f center-pos size color))))
  (define draw-ray
    (let ([f (foreign-procedure "DrawRay"
               ((& Ray) (& Color))
               void)])
      (lambda (ray color) (f ray color))))
  (define draw-grid
    (let ([f (foreign-procedure "DrawGrid" (int float) void)])
      (lambda (slices spacing) (f slices spacing))))
  (define load-model
    (let ([f (foreign-procedure "LoadModel"
               (string)
               (& Model))])
      (case-lambda
        [(file-name)
         (let ([ret (make-ftype-pointer
                      Model
                      (foreign-alloc (ftype-sizeof Model)))])
           (f ret file-name)
           ret)]
        [(struct file-name) (f struct file-name) struct])))
  (define load-model-from-mesh
    (let ([f (foreign-procedure "LoadModelFromMesh"
               ((& Mesh))
               (& Model))])
      (case-lambda
        [(mesh)
         (let ([ret (make-ftype-pointer
                      Model
                      (foreign-alloc (ftype-sizeof Model)))])
           (f ret mesh)
           ret)]
        [(struct mesh) (f struct mesh) struct])))
  (define unload-model
    (let ([f (foreign-procedure "UnloadModel"
               ((& Model))
               void)])
      (lambda (model) (f model))))
  (define unload-model-keep-meshes
    (let ([f (foreign-procedure "UnloadModelKeepMeshes"
               ((& Model))
               void)])
      (lambda (model) (f model))))
  (define get-model-bounding-box
    (let ([f (foreign-procedure "GetModelBoundingBox"
               ((& Model))
               (& Bounding-Box))])
      (case-lambda
        [(model)
         (let ([ret (make-ftype-pointer
                      Bounding-Box
                      (foreign-alloc (ftype-sizeof Bounding-Box)))])
           (f ret model)
           ret)]
        [(struct model) (f struct model) struct])))
  (define draw-model
    (let ([f (foreign-procedure "DrawModel"
               ((& Model) (& Vector-3) float (& Color))
               void)])
      (lambda (model position scale tint)
        (f model position scale tint))))
  (define draw-model-ex
    (let ([f (foreign-procedure "DrawModelEx"
               ((& Model)
                (& Vector-3)
                (& Vector-3)
                float
                (& Vector-3)
                (& Color))
               void)])
      (lambda (model position rotation-axis rotation-angle scale
               tint)
        (f model position rotation-axis rotation-angle scale
           tint))))
  (define draw-model-wires
    (let ([f (foreign-procedure "DrawModelWires"
               ((& Model) (& Vector-3) float (& Color))
               void)])
      (lambda (model position scale tint)
        (f model position scale tint))))
  (define draw-model-wires-ex
    (let ([f (foreign-procedure "DrawModelWiresEx"
               ((& Model)
                (& Vector-3)
                (& Vector-3)
                float
                (& Vector-3)
                (& Color))
               void)])
      (lambda (model position rotation-axis rotation-angle scale
               tint)
        (f model position rotation-axis rotation-angle scale
           tint))))
  (define draw-bounding-box
    (let ([f (foreign-procedure "DrawBoundingBox"
               ((& Bounding-Box) (& Color))
               void)])
      (lambda (box color) (f box color))))
  (define draw-billboard
    (let ([f (foreign-procedure "DrawBillboard"
               ((& Camera-3D) (& Texture) (& Vector-3) float (& Color))
               void)])
      (lambda (camera texture position size tint)
        (f camera texture position size tint))))
  (define draw-billboard-rec
    (let ([f (foreign-procedure "DrawBillboardRec"
               ((& Camera-3D)
                (& Texture)
                (& Rectangle)
                (& Vector-3)
                (& Vector-2)
                (& Color))
               void)])
      (lambda (camera texture source position size tint)
        (f camera texture source position size tint))))
  (define draw-billboard-pro
    (let ([f (foreign-procedure "DrawBillboardPro"
               ((& Camera-3D)
                (& Texture)
                (& Rectangle)
                (& Vector-3)
                (& Vector-3)
                (& Vector-2)
                (& Vector-2)
                float
                (& Color))
               void)])
      (lambda (camera texture source position up size origin
               rotation tint)
        (f camera texture source position up size origin rotation
           tint))))
  (define upload-mesh
    (let ([f (foreign-procedure "UploadMesh"
               ((* Mesh) boolean)
               void)])
      (lambda (mesh dynamic) (f mesh dynamic))))
  (define update-mesh-buffer
    (let ([f (foreign-procedure "UpdateMeshBuffer"
               ((& Mesh) int void* int int)
               void)])
      (lambda (mesh index data data-size offset)
        (f mesh index data data-size offset))))
  (define unload-mesh
    (let ([f (foreign-procedure "UnloadMesh" ((& Mesh)) void)])
      (lambda (mesh) (f mesh))))
  (define draw-mesh
    (let ([f (foreign-procedure "DrawMesh"
               ((& Mesh) (& Material) (& Matrix))
               void)])
      (lambda (mesh material transform)
        (f mesh material transform))))
  (define draw-mesh-instanced
    (let ([f (foreign-procedure "DrawMeshInstanced"
               ((& Mesh) (& Material) (* Matrix) int)
               void)])
      (lambda (mesh material transforms instances)
        (f mesh material transforms instances))))
  (define export-mesh
    (let ([f (foreign-procedure "ExportMesh"
               ((& Mesh) string)
               boolean)])
      (lambda (mesh file-name) (f mesh file-name))))
  (define get-mesh-bounding-box
    (let ([f (foreign-procedure "GetMeshBoundingBox"
               ((& Mesh))
               (& Bounding-Box))])
      (case-lambda
        [(mesh)
         (let ([ret (make-ftype-pointer
                      Bounding-Box
                      (foreign-alloc (ftype-sizeof Bounding-Box)))])
           (f ret mesh)
           ret)]
        [(struct mesh) (f struct mesh) struct])))
  (define gen-mesh-tangents
    (let ([f (foreign-procedure "GenMeshTangents"
               ((* Mesh))
               void)])
      (lambda (mesh) (f mesh))))
  (define gen-mesh-poly
    (let ([f (foreign-procedure "GenMeshPoly"
               (int float)
               (& Mesh))])
      (case-lambda
        [(sides radius)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret sides radius)
           ret)]
        [(struct sides radius) (f struct sides radius) struct])))
  (define gen-mesh-plane
    (let ([f (foreign-procedure "GenMeshPlane"
               (float float int int)
               (& Mesh))])
      (case-lambda
        [(width length res-x res-z)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret width length res-x res-z)
           ret)]
        [(struct width length res-x res-z)
         (f struct width length res-x res-z)
         struct])))
  (define gen-mesh-cube
    (let ([f (foreign-procedure "GenMeshCube"
               (float float float)
               (& Mesh))])
      (case-lambda
        [(width height length)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret width height length)
           ret)]
        [(struct width height length)
         (f struct width height length)
         struct])))
  (define gen-mesh-sphere
    (let ([f (foreign-procedure "GenMeshSphere"
               (float int int)
               (& Mesh))])
      (case-lambda
        [(radius rings slices)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret radius rings slices)
           ret)]
        [(struct radius rings slices)
         (f struct radius rings slices)
         struct])))
  (define gen-mesh-hemi-sphere
    (let ([f (foreign-procedure "GenMeshHemiSphere"
               (float int int)
               (& Mesh))])
      (case-lambda
        [(radius rings slices)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret radius rings slices)
           ret)]
        [(struct radius rings slices)
         (f struct radius rings slices)
         struct])))
  (define gen-mesh-cylinder
    (let ([f (foreign-procedure "GenMeshCylinder"
               (float float int)
               (& Mesh))])
      (case-lambda
        [(radius height slices)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret radius height slices)
           ret)]
        [(struct radius height slices)
         (f struct radius height slices)
         struct])))
  (define gen-mesh-cone
    (let ([f (foreign-procedure "GenMeshCone"
               (float float int)
               (& Mesh))])
      (case-lambda
        [(radius height slices)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret radius height slices)
           ret)]
        [(struct radius height slices)
         (f struct radius height slices)
         struct])))
  (define gen-mesh-torus
    (let ([f (foreign-procedure "GenMeshTorus"
               (float float int int)
               (& Mesh))])
      (case-lambda
        [(radius size rad-seg sides)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret radius size rad-seg sides)
           ret)]
        [(struct radius size rad-seg sides)
         (f struct radius size rad-seg sides)
         struct])))
  (define gen-mesh-knot
    (let ([f (foreign-procedure "GenMeshKnot"
               (float float int int)
               (& Mesh))])
      (case-lambda
        [(radius size rad-seg sides)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret radius size rad-seg sides)
           ret)]
        [(struct radius size rad-seg sides)
         (f struct radius size rad-seg sides)
         struct])))
  (define gen-mesh-heightmap
    (let ([f (foreign-procedure "GenMeshHeightmap"
               ((& Image) (& Vector-3))
               (& Mesh))])
      (case-lambda
        [(heightmap size)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret heightmap size)
           ret)]
        [(struct heightmap size)
         (f struct heightmap size)
         struct])))
  (define gen-mesh-cubicmap
    (let ([f (foreign-procedure "GenMeshCubicmap"
               ((& Image) (& Vector-3))
               (& Mesh))])
      (case-lambda
        [(cubicmap cube-size)
         (let ([ret (make-ftype-pointer
                      Mesh
                      (foreign-alloc (ftype-sizeof Mesh)))])
           (f ret cubicmap cube-size)
           ret)]
        [(struct cubicmap cube-size)
         (f struct cubicmap cube-size)
         struct])))
  (define load-materials
    (let ([f (foreign-procedure "LoadMaterials"
               (string u8*)
               (* Material))])
      (lambda (file-name material-count)
        (f file-name material-count))))
  (define load-material-default
    (let ([f (foreign-procedure "LoadMaterialDefault"
               ()
               (& Material))])
      (case-lambda
        [()
         (let ([ret (make-ftype-pointer
                      Material
                      (foreign-alloc (ftype-sizeof Material)))])
           (f ret)
           ret)]
        [(struct) (f struct) struct])))
  (define unload-material
    (let ([f (foreign-procedure "UnloadMaterial"
               ((& Material))
               void)])
      (lambda (material) (f material))))
  (define set-material-texture
    (let ([f (foreign-procedure "SetMaterialTexture"
               ((* Material) int (& Texture))
               void)])
      (lambda (material map-type texture)
        (f material map-type texture))))
  (define set-model-mesh-material
    (let ([f (foreign-procedure "SetModelMeshMaterial"
               ((* Model) int int)
               void)])
      (lambda (model mesh-id material-id)
        (f model mesh-id material-id))))
  (define load-model-animations
    (let ([f (foreign-procedure "LoadModelAnimations"
               (string (* unsigned))
               (* Model-Animation))])
      (lambda (file-name anim-count) (f file-name anim-count))))
  (define update-model-animation
    (let ([f (foreign-procedure "UpdateModelAnimation"
               ((& Model) (& Model-Animation) int)
               void)])
      (lambda (model anim frame) (f model anim frame))))
  (define unload-model-animation
    (let ([f (foreign-procedure "UnloadModelAnimation"
               ((& Model-Animation))
               void)])
      (lambda (anim) (f anim))))
  (define unload-model-animations
    (let ([f (foreign-procedure "UnloadModelAnimations"
               ((* Model-Animation) unsigned)
               void)])
      (lambda (animations count) (f animations count))))
  (define is-model-animation-valid
    (let ([f (foreign-procedure "IsModelAnimationValid"
               ((& Model) (& Model-Animation))
               boolean)])
      (lambda (model anim) (f model anim))))
  (define check-collision-spheres
    (let ([f (foreign-procedure "CheckCollisionSpheres"
               ((& Vector-3) float (& Vector-3) float)
               boolean)])
      (lambda (center-1 radius-1 center-2 radius-2)
        (f center-1 radius-1 center-2 radius-2))))
  (define check-collision-boxes
    (let ([f (foreign-procedure "CheckCollisionBoxes"
               ((& Bounding-Box) (& Bounding-Box))
               boolean)])
      (lambda (box-1 box-2) (f box-1 box-2))))
  (define check-collision-box-sphere
    (let ([f (foreign-procedure "CheckCollisionBoxSphere"
               ((& Bounding-Box) (& Vector-3) float)
               boolean)])
      (lambda (box center radius) (f box center radius))))
  (define get-ray-collision-sphere
    (let ([f (foreign-procedure "GetRayCollisionSphere"
               ((& Ray) (& Vector-3) float)
               (& Ray-Collision))])
      (case-lambda
        [(ray center radius)
         (let ([ret (make-ftype-pointer
                      Ray-Collision
                      (foreign-alloc (ftype-sizeof Ray-Collision)))])
           (f ret ray center radius)
           ret)]
        [(struct ray center radius)
         (f struct ray center radius)
         struct])))
  (define get-ray-collision-box
    (let ([f (foreign-procedure "GetRayCollisionBox"
               ((& Ray) (& Bounding-Box))
               (& Ray-Collision))])
      (case-lambda
        [(ray box)
         (let ([ret (make-ftype-pointer
                      Ray-Collision
                      (foreign-alloc (ftype-sizeof Ray-Collision)))])
           (f ret ray box)
           ret)]
        [(struct ray box) (f struct ray box) struct])))
  (define get-ray-collision-mesh
    (let ([f (foreign-procedure "GetRayCollisionMesh"
               ((& Ray) (& Mesh) (& Matrix))
               (& Ray-Collision))])
      (case-lambda
        [(ray mesh transform)
         (let ([ret (make-ftype-pointer
                      Ray-Collision
                      (foreign-alloc (ftype-sizeof Ray-Collision)))])
           (f ret ray mesh transform)
           ret)]
        [(struct ray mesh transform)
         (f struct ray mesh transform)
         struct])))
  (define get-ray-collision-triangle
    (let ([f (foreign-procedure "GetRayCollisionTriangle"
               ((& Ray) (& Vector-3) (& Vector-3) (& Vector-3))
               (& Ray-Collision))])
      (case-lambda
        [(ray p1 p2 p3)
         (let ([ret (make-ftype-pointer
                      Ray-Collision
                      (foreign-alloc (ftype-sizeof Ray-Collision)))])
           (f ret ray p1 p2 p3)
           ret)]
        [(struct ray p1 p2 p3) (f struct ray p1 p2 p3) struct])))
  (define get-ray-collision-quad
    (let ([f (foreign-procedure "GetRayCollisionQuad"
               ((& Ray)
                (& Vector-3)
                (& Vector-3)
                (& Vector-3)
                (& Vector-3))
               (& Ray-Collision))])
      (case-lambda
        [(ray p1 p2 p3 p4)
         (let ([ret (make-ftype-pointer
                      Ray-Collision
                      (foreign-alloc (ftype-sizeof Ray-Collision)))])
           (f ret ray p1 p2 p3 p4)
           ret)]
        [(struct ray p1 p2 p3 p4)
         (f struct ray p1 p2 p3 p4)
         struct])))
  (define init-audio-device
    (let ([f (foreign-procedure "InitAudioDevice" () void)])
      (lambda () (f))))
  (define close-audio-device
    (let ([f (foreign-procedure "CloseAudioDevice" () void)])
      (lambda () (f))))
  (define is-audio-device-ready
    (let ([f (foreign-procedure "IsAudioDeviceReady"
               ()
               boolean)])
      (lambda () (f))))
  (define set-master-volume
    (let ([f (foreign-procedure "SetMasterVolume"
               (float)
               void)])
      (lambda (volume) (f volume))))
  (define load-wave
    (let ([f (foreign-procedure "LoadWave" (string) (& Wave))])
      (case-lambda
        [(file-name)
         (let ([ret (make-ftype-pointer
                      Wave
                      (foreign-alloc (ftype-sizeof Wave)))])
           (f ret file-name)
           ret)]
        [(struct file-name) (f struct file-name) struct])))
  (define load-wave-from-memory
    (let ([f (foreign-procedure "LoadWaveFromMemory"
               (string (* unsigned-8) int)
               (& Wave))])
      (case-lambda
        [(file-type file-data data-size)
         (let ([ret (make-ftype-pointer
                      Wave
                      (foreign-alloc (ftype-sizeof Wave)))])
           (f ret file-type file-data data-size)
           ret)]
        [(struct file-type file-data data-size)
         (f struct file-type file-data data-size)
         struct])))
  (define load-sound
    (let ([f (foreign-procedure "LoadSound"
               (string)
               (& Sound))])
      (case-lambda
        [(file-name)
         (let ([ret (make-ftype-pointer
                      Sound
                      (foreign-alloc (ftype-sizeof Sound)))])
           (f ret file-name)
           ret)]
        [(struct file-name) (f struct file-name) struct])))
  (define load-sound-from-wave
    (let ([f (foreign-procedure "LoadSoundFromWave"
               ((& Wave))
               (& Sound))])
      (case-lambda
        [(wave)
         (let ([ret (make-ftype-pointer
                      Sound
                      (foreign-alloc (ftype-sizeof Sound)))])
           (f ret wave)
           ret)]
        [(struct wave) (f struct wave) struct])))
  (define update-sound
    (let ([f (foreign-procedure "UpdateSound"
               ((& Sound) void* int)
               void)])
      (lambda (sound data sample-count)
        (f sound data sample-count))))
  (define unload-wave
    (let ([f (foreign-procedure "UnloadWave" ((& Wave)) void)])
      (lambda (wave) (f wave))))
  (define unload-sound
    (let ([f (foreign-procedure "UnloadSound"
               ((& Sound))
               void)])
      (lambda (sound) (f sound))))
  (define export-wave
    (let ([f (foreign-procedure "ExportWave"
               ((& Wave) string)
               boolean)])
      (lambda (wave file-name) (f wave file-name))))
  (define export-wave-as-code
    (let ([f (foreign-procedure "ExportWaveAsCode"
               ((& Wave) string)
               boolean)])
      (lambda (wave file-name) (f wave file-name))))
  (define play-sound
    (let ([f (foreign-procedure "PlaySound" ((& Sound)) void)])
      (lambda (sound) (f sound))))
  (define stop-sound
    (let ([f (foreign-procedure "StopSound" ((& Sound)) void)])
      (lambda (sound) (f sound))))
  (define pause-sound
    (let ([f (foreign-procedure "PauseSound" ((& Sound)) void)])
      (lambda (sound) (f sound))))
  (define resume-sound
    (let ([f (foreign-procedure "ResumeSound"
               ((& Sound))
               void)])
      (lambda (sound) (f sound))))
  (define play-sound-multi
    (let ([f (foreign-procedure "PlaySoundMulti"
               ((& Sound))
               void)])
      (lambda (sound) (f sound))))
  (define stop-sound-multi
    (let ([f (foreign-procedure "StopSoundMulti" () void)])
      (lambda () (f))))
  (define get-sounds-playing
    (let ([f (foreign-procedure "GetSoundsPlaying" () int)])
      (lambda () (f))))
  (define is-sound-playing
    (let ([f (foreign-procedure "IsSoundPlaying"
               ((& Sound))
               boolean)])
      (lambda (sound) (f sound))))
  (define set-sound-volume
    (let ([f (foreign-procedure "SetSoundVolume"
               ((& Sound) float)
               void)])
      (lambda (sound volume) (f sound volume))))
  (define set-sound-pitch
    (let ([f (foreign-procedure "SetSoundPitch"
               ((& Sound) float)
               void)])
      (lambda (sound pitch) (f sound pitch))))
  (define set-sound-pan
    (let ([f (foreign-procedure "SetSoundPan"
               ((& Sound) float)
               void)])
      (lambda (sound pan) (f sound pan))))
  (define wave-copy
    (let ([f (foreign-procedure "WaveCopy"
               ((& Wave))
               (& Wave))])
      (case-lambda
        [(wave)
         (let ([ret (make-ftype-pointer
                      Wave
                      (foreign-alloc (ftype-sizeof Wave)))])
           (f ret wave)
           ret)]
        [(struct wave) (f struct wave) struct])))
  (define wave-crop
    (let ([f (foreign-procedure "WaveCrop"
               ((* Wave) int int)
               void)])
      (lambda (wave init-sample final-sample)
        (f wave init-sample final-sample))))
  (define wave-format
    (let ([f (foreign-procedure "WaveFormat"
               ((* Wave) int int int)
               void)])
      (lambda (wave sample-rate sample-size channels)
        (f wave sample-rate sample-size channels))))
  (define load-wave-samples
    (let ([f (foreign-procedure "LoadWaveSamples"
               ((& Wave))
               (* float))])
      (lambda (wave) (f wave))))
  (define unload-wave-samples
    (let ([f (foreign-procedure "UnloadWaveSamples"
               ((* float))
               void)])
      (lambda (samples) (f samples))))
  (define load-music-stream
    (let ([f (foreign-procedure "LoadMusicStream"
               (string)
               (& Music))])
      (case-lambda
        [(file-name)
         (let ([ret (make-ftype-pointer
                      Music
                      (foreign-alloc (ftype-sizeof Music)))])
           (f ret file-name)
           ret)]
        [(struct file-name) (f struct file-name) struct])))
  (define load-music-stream-from-memory
    (let ([f (foreign-procedure "LoadMusicStreamFromMemory"
               (string (* unsigned-8) int)
               (& Music))])
      (case-lambda
        [(file-type data data-size)
         (let ([ret (make-ftype-pointer
                      Music
                      (foreign-alloc (ftype-sizeof Music)))])
           (f ret file-type data data-size)
           ret)]
        [(struct file-type data data-size)
         (f struct file-type data data-size)
         struct])))
  (define unload-music-stream
    (let ([f (foreign-procedure "UnloadMusicStream"
               ((& Music))
               void)])
      (lambda (music) (f music))))
  (define play-music-stream
    (let ([f (foreign-procedure "PlayMusicStream"
               ((& Music))
               void)])
      (lambda (music) (f music))))
  (define is-music-stream-playing
    (let ([f (foreign-procedure "IsMusicStreamPlaying"
               ((& Music))
               boolean)])
      (lambda (music) (f music))))
  (define update-music-stream
    (let ([f (foreign-procedure "UpdateMusicStream"
               ((& Music))
               void)])
      (lambda (music) (f music))))
  (define stop-music-stream
    (let ([f (foreign-procedure "StopMusicStream"
               ((& Music))
               void)])
      (lambda (music) (f music))))
  (define pause-music-stream
    (let ([f (foreign-procedure "PauseMusicStream"
               ((& Music))
               void)])
      (lambda (music) (f music))))
  (define resume-music-stream
    (let ([f (foreign-procedure "ResumeMusicStream"
               ((& Music))
               void)])
      (lambda (music) (f music))))
  (define seek-music-stream
    (let ([f (foreign-procedure "SeekMusicStream"
               ((& Music) float)
               void)])
      (lambda (music position) (f music position))))
  (define set-music-volume
    (let ([f (foreign-procedure "SetMusicVolume"
               ((& Music) float)
               void)])
      (lambda (music volume) (f music volume))))
  (define set-music-pitch
    (let ([f (foreign-procedure "SetMusicPitch"
               ((& Music) float)
               void)])
      (lambda (music pitch) (f music pitch))))
  (define set-music-pan
    (let ([f (foreign-procedure "SetMusicPan"
               ((& Music) float)
               void)])
      (lambda (music pan) (f music pan))))
  (define get-music-time-length
    (let ([f (foreign-procedure "GetMusicTimeLength"
               ((& Music))
               float)])
      (lambda (music) (f music))))
  (define get-music-time-played
    (let ([f (foreign-procedure "GetMusicTimePlayed"
               ((& Music))
               float)])
      (lambda (music) (f music))))
  (define load-audio-stream
    (let ([f (foreign-procedure "LoadAudioStream"
               (unsigned unsigned unsigned)
               (& Audio-Stream))])
      (case-lambda
        [(sample-rate sample-size channels)
         (let ([ret (make-ftype-pointer
                      Audio-Stream
                      (foreign-alloc (ftype-sizeof Audio-Stream)))])
           (f ret sample-rate sample-size channels)
           ret)]
        [(struct sample-rate sample-size channels)
         (f struct sample-rate sample-size channels)
         struct])))
  (define unload-audio-stream
    (let ([f (foreign-procedure "UnloadAudioStream"
               ((& Audio-Stream))
               void)])
      (lambda (stream) (f stream))))
  (define update-audio-stream
    (let ([f (foreign-procedure "UpdateAudioStream"
               ((& Audio-Stream) void* int)
               void)])
      (lambda (stream data frame-count)
        (f stream data frame-count))))
  (define is-audio-stream-processed
    (let ([f (foreign-procedure "IsAudioStreamProcessed"
               ((& Audio-Stream))
               boolean)])
      (lambda (stream) (f stream))))
  (define play-audio-stream
    (let ([f (foreign-procedure "PlayAudioStream"
               ((& Audio-Stream))
               void)])
      (lambda (stream) (f stream))))
  (define pause-audio-stream
    (let ([f (foreign-procedure "PauseAudioStream"
               ((& Audio-Stream))
               void)])
      (lambda (stream) (f stream))))
  (define resume-audio-stream
    (let ([f (foreign-procedure "ResumeAudioStream"
               ((& Audio-Stream))
               void)])
      (lambda (stream) (f stream))))
  (define is-audio-stream-playing
    (let ([f (foreign-procedure "IsAudioStreamPlaying"
               ((& Audio-Stream))
               boolean)])
      (lambda (stream) (f stream))))
  (define stop-audio-stream
    (let ([f (foreign-procedure "StopAudioStream"
               ((& Audio-Stream))
               void)])
      (lambda (stream) (f stream))))
  (define set-audio-stream-volume
    (let ([f (foreign-procedure "SetAudioStreamVolume"
               ((& Audio-Stream) float)
               void)])
      (lambda (stream volume) (f stream volume))))
  (define set-audio-stream-pitch
    (let ([f (foreign-procedure "SetAudioStreamPitch"
               ((& Audio-Stream) float)
               void)])
      (lambda (stream pitch) (f stream pitch))))
  (define set-audio-stream-pan
    (let ([f (foreign-procedure "SetAudioStreamPan"
               ((& Audio-Stream) float)
               void)])
      (lambda (stream pan) (f stream pan))))
  (define set-audio-stream-buffer-size-default
    (let ([f (foreign-procedure "SetAudioStreamBufferSizeDefault"
               (int)
               void)])
      (lambda (size) (f size))))
  (define set-audio-stream-callback
    (let ([f (foreign-procedure "SetAudioStreamCallback"
               ((& Audio-Stream) void*)
               void)])
      (lambda (stream callback) (f stream callback))))
  (define attach-audio-stream-processor
    (let ([f (foreign-procedure "AttachAudioStreamProcessor"
               ((& Audio-Stream) void*)
               void)])
      (lambda (stream processor) (f stream processor))))
  (define detach-audio-stream-processor
    (let ([f (foreign-procedure "DetachAudioStreamProcessor"
               ((& Audio-Stream) void*)
               void)])
      (lambda (stream processor) (f stream processor))))
  (define LIGHTGRAY (make-color 200 200 200 255))
  (define GRAY (make-color 130 130 130 255))
  (define DARKGRAY (make-color 80 80 80 255))
  (define YELLOW (make-color 253 249 0 255))
  (define GOLD (make-color 255 203 0 255))
  (define ORANGE (make-color 255 161 0 255))
  (define PINK (make-color 255 109 194 255))
  (define RED (make-color 230 41 55 255))
  (define MAROON (make-color 190 33 55 255))
  (define GREEN (make-color 0 228 48 255))
  (define LIME (make-color 0 158 47 255))
  (define DARKGREEN (make-color 0 117 44 255))
  (define SKYBLUE (make-color 102 191 255 255))
  (define BLUE (make-color 0 121 241 255))
  (define DARKBLUE (make-color 0 82 172 255))
  (define PURPLE (make-color 200 122 255 255))
  (define VIOLET (make-color 135 60 190 255))
  (define DARKPURPLE (make-color 112 31 126 255))
  (define BEIGE (make-color 211 176 131 255))
  (define BROWN (make-color 127 106 79 255))
  (define DARKBROWN (make-color 76 63 47 255))
  (define WHITE (make-color 255 255 255 255))
  (define BLACK (make-color 0 0 0 255))
  (define BLANK (make-color 0 0 0 0))
  (define MAGENTA (make-color 255 0 255 255))
  (define RAYWHITE (make-color 245 245 245 255)))
