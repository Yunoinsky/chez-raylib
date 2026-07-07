(library (raylib raylib (0 3))
  (export rad->deg deg->rad PI make-color drawing-begin
   mode-2d-begin mode-3d-begin blend-mode-begin
   scissor-mode-begin float int bool arr* arr& arr-ind
   make-array RAYWHITE MAGENTA BLANK BLACK WHITE DARKBROWN
   BROWN BEIGE DARKPURPLE VIOLET PURPLE DARKBLUE BLUE SKYBLUE
   DARKGREEN LIME GREEN MAROON RED PINK ORANGE GOLD YELLOW
   DARKGRAY GRAY LIGHTGRAY RAYLIB_VERSION_PATCH
   RAYLIB_VERSION_MINOR RAYLIB_VERSION_MAJOR
   Automation-Event-List make-automation-event-list
   copy-automation-event-list automation-event-list-set!
   automation-event-list-get automation-event-list-ref&
   Automation-Event make-automation-event copy-automation-event
   automation-event-set! automation-event-get
   automation-event-ref& File-Path-List make-file-path-list
   copy-file-path-list file-path-list-set! file-path-list-get
   file-path-list-ref& Vr-Stereo-Config make-vr-stereo-config
   copy-vr-stereo-config vr-stereo-config-set!
   vr-stereo-config-get vr-stereo-config-ref& Vr-Device-Info
   make-vr-device-info copy-vr-device-info vr-device-info-set!
   vr-device-info-get vr-device-info-ref& Music make-music
   copy-music music-set! music-get music-ref& Sound make-sound
   copy-sound sound-set! sound-get sound-ref& Audio-Stream
   make-audio-stream copy-audio-stream audio-stream-set!
   audio-stream-get audio-stream-ref& Wave make-wave copy-wave
   wave-set! wave-get wave-ref& Bounding-Box make-bounding-box
   copy-bounding-box bounding-box-set! bounding-box-get
   bounding-box-ref& Ray-Collision make-ray-collision
   copy-ray-collision ray-collision-set! ray-collision-get
   ray-collision-ref& Ray make-ray copy-ray ray-set! ray-get
   ray-ref& Model-Animation make-model-animation
   copy-model-animation model-animation-set!
   model-animation-get model-animation-ref& Model make-model
   copy-model model-set! model-get model-ref& Model-Skeleton
   make-model-skeleton copy-model-skeleton model-skeleton-set!
   model-skeleton-get model-skeleton-ref& Bone-Info
   make-bone-info copy-bone-info bone-info-set! bone-info-get
   bone-info-ref& Transform make-transform copy-transform
   transform-set! transform-get transform-ref& Material
   make-material copy-material material-set! material-get
   material-ref& Material-Map make-material-map
   copy-material-map material-map-set! material-map-get
   material-map-ref& Shader make-shader copy-shader shader-set!
   shader-get shader-ref& Mesh make-mesh copy-mesh mesh-set!
   mesh-get mesh-ref& Camera-2D make-camera-2d copy-camera-2d
   camera-2d-set! camera-2d-get camera-2d-ref& Camera-3D
   make-camera-3d copy-camera-3d camera-3d-set! camera-3d-get
   camera-3d-ref& Font make-font copy-font font-set! font-get
   font-ref& Glyph-Info make-glyph-info copy-glyph-info
   glyph-info-set! glyph-info-get glyph-info-ref& N-Patch-Info
   make-npatch-info copy-npatch-info npatch-info-set!
   npatch-info-get npatch-info-ref& Render-Texture
   make-render-texture copy-render-texture render-texture-set!
   render-texture-get render-texture-ref& Texture make-texture
   copy-texture texture-set! texture-get texture-ref& Image
   make-image copy-image image-set! image-get image-ref&
   Rectangle make-rectangle copy-rectangle rectangle-set!
   rectangle-get rectangle-ref& Color color-set! color-get
   color-ref& Matrix make-matrix copy-matrix matrix-set!
   matrix-get matrix-ref& Vector-4 make-vector-4 copy-vector-4
   vector-4-set! vector-4-get vector-4-ref& Vector-3
   make-vector-3 copy-vector-3 vector-3-set! vector-3-get
   vector-3-ref& Vector-2 make-vector-2 copy-vector-2
   vector-2-set! vector-2-get vector-2-ref& NPATCH_NINE_PATCH
   NPATCH_THREE_PATCH_VERTICAL NPATCH_THREE_PATCH_HORIZONTAL
   CAMERA_PERSPECTIVE CAMERA_ORTHOGRAPHIC CAMERA_CUSTOM
   CAMERA_FREE CAMERA_ORBITAL CAMERA_FIRST_PERSON
   CAMERA_THIRD_PERSON GESTURE_NONE GESTURE_TAP
   GESTURE_DOUBLETAP GESTURE_HOLD GESTURE_DRAG
   GESTURE_SWIPE_RIGHT GESTURE_SWIPE_LEFT GESTURE_SWIPE_UP
   GESTURE_SWIPE_DOWN GESTURE_PINCH_IN GESTURE_PINCH_OUT
   BLEND_ALPHA BLEND_ADDITIVE BLEND_MULTIPLIED BLEND_ADD_COLORS
   BLEND_SUBTRACT_COLORS BLEND_ALPHA_PREMULTIPLY BLEND_CUSTOM
   BLEND_CUSTOM_SEPARATE FONT_DEFAULT FONT_BITMAP FONT_SDF
   CUBEMAP_LAYOUT_AUTO_DETECT CUBEMAP_LAYOUT_LINE_VERTICAL
   CUBEMAP_LAYOUT_LINE_HORIZONTAL
   CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR
   CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE TEXTURE_WRAP_REPEAT
   TEXTURE_WRAP_CLAMP TEXTURE_WRAP_MIRROR_REPEAT
   TEXTURE_WRAP_MIRROR_CLAMP TEXTURE_FILTER_POINT
   TEXTURE_FILTER_BILINEAR TEXTURE_FILTER_TRILINEAR
   TEXTURE_FILTER_ANISOTROPIC_4X TEXTURE_FILTER_ANISOTROPIC_8X
   TEXTURE_FILTER_ANISOTROPIC_16X
   PIXELFORMAT_UNCOMPRESSED_GRAYSCALE
   PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA
   PIXELFORMAT_UNCOMPRESSED_R5G6B5
   PIXELFORMAT_UNCOMPRESSED_R8G8B8
   PIXELFORMAT_UNCOMPRESSED_R5G5B5A1
   PIXELFORMAT_UNCOMPRESSED_R4G4B4A4
   PIXELFORMAT_UNCOMPRESSED_R8G8B8A8
   PIXELFORMAT_UNCOMPRESSED_R32
   PIXELFORMAT_UNCOMPRESSED_R32G32B32
   PIXELFORMAT_UNCOMPRESSED_R32G32B32A32
   PIXELFORMAT_UNCOMPRESSED_R16
   PIXELFORMAT_UNCOMPRESSED_R16G16B16
   PIXELFORMAT_UNCOMPRESSED_R16G16B16A16
   PIXELFORMAT_COMPRESSED_DXT1_RGB
   PIXELFORMAT_COMPRESSED_DXT1_RGBA
   PIXELFORMAT_COMPRESSED_DXT3_RGBA
   PIXELFORMAT_COMPRESSED_DXT5_RGBA
   PIXELFORMAT_COMPRESSED_ETC1_RGB
   PIXELFORMAT_COMPRESSED_ETC2_RGB
   PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA
   PIXELFORMAT_COMPRESSED_PVRT_RGB
   PIXELFORMAT_COMPRESSED_PVRT_RGBA
   PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA
   PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA SHADER_ATTRIB_FLOAT
   SHADER_ATTRIB_VEC2 SHADER_ATTRIB_VEC3 SHADER_ATTRIB_VEC4
   SHADER_UNIFORM_FLOAT SHADER_UNIFORM_VEC2 SHADER_UNIFORM_VEC3
   SHADER_UNIFORM_VEC4 SHADER_UNIFORM_INT SHADER_UNIFORM_IVEC2
   SHADER_UNIFORM_IVEC3 SHADER_UNIFORM_IVEC4
   SHADER_UNIFORM_UINT SHADER_UNIFORM_UIVEC2
   SHADER_UNIFORM_UIVEC3 SHADER_UNIFORM_UIVEC4
   SHADER_UNIFORM_SAMPLER2D SHADER_LOC_VERTEX_POSITION
   SHADER_LOC_VERTEX_TEXCOORD01 SHADER_LOC_VERTEX_TEXCOORD02
   SHADER_LOC_VERTEX_NORMAL SHADER_LOC_VERTEX_TANGENT
   SHADER_LOC_VERTEX_COLOR SHADER_LOC_MATRIX_MVP
   SHADER_LOC_MATRIX_VIEW SHADER_LOC_MATRIX_PROJECTION
   SHADER_LOC_MATRIX_MODEL SHADER_LOC_MATRIX_NORMAL
   SHADER_LOC_VECTOR_VIEW SHADER_LOC_COLOR_DIFFUSE
   SHADER_LOC_COLOR_SPECULAR SHADER_LOC_COLOR_AMBIENT
   SHADER_LOC_MAP_ALBEDO SHADER_LOC_MAP_METALNESS
   SHADER_LOC_MAP_NORMAL SHADER_LOC_MAP_ROUGHNESS
   SHADER_LOC_MAP_OCCLUSION SHADER_LOC_MAP_EMISSION
   SHADER_LOC_MAP_HEIGHT SHADER_LOC_MAP_CUBEMAP
   SHADER_LOC_MAP_IRRADIANCE SHADER_LOC_MAP_PREFILTER
   SHADER_LOC_MAP_BRDF SHADER_LOC_VERTEX_BONEIDS
   SHADER_LOC_VERTEX_BONEWEIGHTS
   SHADER_LOC_MATRIX_BONETRANSFORMS
   SHADER_LOC_VERTEX_INSTANCETRANSFORM MATERIAL_MAP_ALBEDO
   MATERIAL_MAP_METALNESS MATERIAL_MAP_NORMAL
   MATERIAL_MAP_ROUGHNESS MATERIAL_MAP_OCCLUSION
   MATERIAL_MAP_EMISSION MATERIAL_MAP_HEIGHT
   MATERIAL_MAP_CUBEMAP MATERIAL_MAP_IRRADIANCE
   MATERIAL_MAP_PREFILTER MATERIAL_MAP_BRDF GAMEPAD_AXIS_LEFT_X
   GAMEPAD_AXIS_LEFT_Y GAMEPAD_AXIS_RIGHT_X
   GAMEPAD_AXIS_RIGHT_Y GAMEPAD_AXIS_LEFT_TRIGGER
   GAMEPAD_AXIS_RIGHT_TRIGGER GAMEPAD_BUTTON_UNKNOWN
   GAMEPAD_BUTTON_LEFT_FACE_UP GAMEPAD_BUTTON_LEFT_FACE_RIGHT
   GAMEPAD_BUTTON_LEFT_FACE_DOWN GAMEPAD_BUTTON_LEFT_FACE_LEFT
   GAMEPAD_BUTTON_RIGHT_FACE_UP GAMEPAD_BUTTON_RIGHT_FACE_RIGHT
   GAMEPAD_BUTTON_RIGHT_FACE_DOWN
   GAMEPAD_BUTTON_RIGHT_FACE_LEFT GAMEPAD_BUTTON_LEFT_TRIGGER_1
   GAMEPAD_BUTTON_LEFT_TRIGGER_2 GAMEPAD_BUTTON_RIGHT_TRIGGER_1
   GAMEPAD_BUTTON_RIGHT_TRIGGER_2 GAMEPAD_BUTTON_MIDDLE_LEFT
   GAMEPAD_BUTTON_MIDDLE GAMEPAD_BUTTON_MIDDLE_RIGHT
   GAMEPAD_BUTTON_LEFT_THUMB GAMEPAD_BUTTON_RIGHT_THUMB
   MOUSE_CURSOR_DEFAULT MOUSE_CURSOR_ARROW MOUSE_CURSOR_IBEAM
   MOUSE_CURSOR_CROSSHAIR MOUSE_CURSOR_POINTING_HAND
   MOUSE_CURSOR_RESIZE_EW MOUSE_CURSOR_RESIZE_NS
   MOUSE_CURSOR_RESIZE_NWSE MOUSE_CURSOR_RESIZE_NESW
   MOUSE_CURSOR_RESIZE_ALL MOUSE_CURSOR_NOT_ALLOWED
   MOUSE_BUTTON_LEFT MOUSE_BUTTON_RIGHT MOUSE_BUTTON_MIDDLE
   MOUSE_BUTTON_SIDE MOUSE_BUTTON_EXTRA MOUSE_BUTTON_FORWARD
   MOUSE_BUTTON_BACK KEY_NULL KEY_APOSTROPHE KEY_COMMA
   KEY_MINUS KEY_PERIOD KEY_SLASH KEY_ZERO KEY_ONE KEY_TWO
   KEY_THREE KEY_FOUR KEY_FIVE KEY_SIX KEY_SEVEN KEY_EIGHT
   KEY_NINE KEY_SEMICOLON KEY_EQUAL KEY_A KEY_B KEY_C KEY_D
   KEY_E KEY_F KEY_G KEY_H KEY_I KEY_J KEY_K KEY_L KEY_M KEY_N
   KEY_O KEY_P KEY_Q KEY_R KEY_S KEY_T KEY_U KEY_V KEY_W KEY_X
   KEY_Y KEY_Z KEY_LEFT_BRACKET KEY_BACKSLASH KEY_RIGHT_BRACKET
   KEY_GRAVE KEY_SPACE KEY_ESCAPE KEY_ENTER KEY_TAB
   KEY_BACKSPACE KEY_INSERT KEY_DELETE KEY_RIGHT KEY_LEFT
   KEY_DOWN KEY_UP KEY_PAGE_UP KEY_PAGE_DOWN KEY_HOME KEY_END
   KEY_CAPS_LOCK KEY_SCROLL_LOCK KEY_NUM_LOCK KEY_PRINT_SCREEN
   KEY_PAUSE KEY_F1 KEY_F2 KEY_F3 KEY_F4 KEY_F5 KEY_F6 KEY_F7
   KEY_F8 KEY_F9 KEY_F10 KEY_F11 KEY_F12 KEY_LEFT_SHIFT
   KEY_LEFT_CONTROL KEY_LEFT_ALT KEY_LEFT_SUPER KEY_RIGHT_SHIFT
   KEY_RIGHT_CONTROL KEY_RIGHT_ALT KEY_RIGHT_SUPER KEY_KB_MENU
   KEY_KP_0 KEY_KP_1 KEY_KP_2 KEY_KP_3 KEY_KP_4 KEY_KP_5
   KEY_KP_6 KEY_KP_7 KEY_KP_8 KEY_KP_9 KEY_KP_DECIMAL
   KEY_KP_DIVIDE KEY_KP_MULTIPLY KEY_KP_SUBTRACT KEY_KP_ADD
   KEY_KP_ENTER KEY_KP_EQUAL KEY_BACK KEY_MENU KEY_VOLUME_UP
   KEY_VOLUME_DOWN LOG_ALL LOG_TRACE LOG_DEBUG LOG_INFO
   LOG_WARNING LOG_ERROR LOG_FATAL LOG_NONE FLAG_VSYNC_HINT
   FLAG_FULLSCREEN_MODE FLAG_WINDOW_RESIZABLE
   FLAG_WINDOW_UNDECORATED FLAG_WINDOW_HIDDEN
   FLAG_WINDOW_MINIMIZED FLAG_WINDOW_MAXIMIZED
   FLAG_WINDOW_UNFOCUSED FLAG_WINDOW_TOPMOST
   FLAG_WINDOW_ALWAYS_RUN FLAG_WINDOW_TRANSPARENT
   FLAG_WINDOW_HIGHDPI FLAG_WINDOW_MOUSE_PASSTHROUGH
   FLAG_BORDERLESS_WINDOWED_MODE FLAG_MSAA_4X_HINT
   FLAG_INTERLACED_HINT MakeAudio-Callback
   MakeSave-File-Text-Callback MakeLoad-File-Text-Callback
   MakeSave-File-Data-Callback MakeLoad-File-Data-Callback
   MakeTrace-Log-Callback detach-audio-mixed-processor
   attach-audio-mixed-processor detach-audio-stream-processor
   attach-audio-stream-processor set-audio-stream-callback
   set-audio-stream-buffer-size-default set-audio-stream-pan
   set-audio-stream-pitch set-audio-stream-volume
   stop-audio-stream is-audio-stream-playing
   resume-audio-stream pause-audio-stream play-audio-stream
   is-audio-stream-processed update-audio-stream
   unload-audio-stream is-audio-stream-valid load-audio-stream
   get-music-time-played get-music-time-length set-music-pan
   set-music-pitch set-music-volume seek-music-stream
   resume-music-stream pause-music-stream stop-music-stream
   update-music-stream is-music-stream-playing
   play-music-stream unload-music-stream is-music-valid
   load-music-stream-from-memory load-music-stream
   unload-wave-samples load-wave-samples wave-format wave-crop
   wave-copy set-sound-pan set-sound-pitch set-sound-volume
   is-sound-playing resume-sound pause-sound stop-sound
   play-sound export-wave-as-code export-wave
   unload-sound-alias unload-sound unload-wave update-sound
   is-sound-valid load-sound-alias load-sound-from-wave
   load-sound is-wave-valid load-wave-from-memory load-wave
   get-master-volume set-master-volume is-audio-device-ready
   close-audio-device init-audio-device get-ray-collision-quad
   get-ray-collision-triangle get-ray-collision-mesh
   get-ray-collision-box get-ray-collision-sphere
   check-collision-box-sphere check-collision-boxes
   check-collision-spheres is-model-animation-valid
   unload-model-animations update-model-animation-ex
   update-model-animation load-model-animations
   set-model-mesh-material set-material-texture unload-material
   is-material-valid load-material-default load-materials
   gen-mesh-cubicmap gen-mesh-heightmap gen-mesh-knot
   gen-mesh-torus gen-mesh-cone gen-mesh-cylinder
   gen-mesh-hemi-sphere gen-mesh-sphere gen-mesh-cube
   gen-mesh-plane gen-mesh-poly export-mesh-as-code export-mesh
   gen-mesh-tangents get-mesh-bounding-box draw-mesh-instanced
   draw-mesh unload-mesh update-mesh-buffer upload-mesh
   draw-billboard-pro draw-billboard-rec draw-billboard
   draw-bounding-box draw-model-wires-ex draw-model-wires
   draw-model-ex draw-model get-model-bounding-box unload-model
   is-model-valid load-model-from-mesh load-model draw-grid
   draw-ray draw-plane draw-capsule-wires draw-capsule
   draw-cylinder-wires-ex draw-cylinder-wires draw-cylinder-ex
   draw-cylinder draw-sphere-wires draw-sphere-ex draw-sphere
   draw-cube-wires-v draw-cube-wires draw-cube-v draw-cube
   draw-triangle-strip-3d draw-triangle-3d draw-circle-3d
   draw-point-3d draw-line-3d text-to-float text-to-integer
   text-to-camel text-to-snake text-to-pascal text-to-lower
   text-to-upper text-find-index text-append text-split
   text-join text-insert-alloc text-insert
   text-replace-between-alloc text-replace-between
   text-replace-alloc text-replace get-text-between
   text-remove-spaces text-subtext text-length text-is-equal
   text-copy unload-text-lines load-text-lines
   codepoint-to-utf-8 get-codepoint-previous get-codepoint-next
   get-codepoint get-codepoint-count unload-codepoints
   load-codepoints unload-utf-8 load-utf-8 get-glyph-atlas-rec
   get-glyph-info get-glyph-index measure-text-codepoints
   measure-text-ex measure-text set-text-line-spacing
   draw-text-codepoints draw-text-codepoint draw-text-pro
   draw-text-ex draw-text draw-fps export-font-as-code
   unload-font unload-font-data gen-image-font-atlas
   load-font-data is-font-valid load-font-from-memory
   load-font-from-image load-font-ex load-font get-font-default
   get-pixel-data-size set-pixel-color get-pixel-color
   get-color color-lerp color-alpha-blend color-alpha
   color-contrast color-brightness color-tint color-from-hsv
   color-to-hsv color-from-normalized color-normalize
   color-to-int fade color-is-equal draw-texture-npatch
   draw-texture-pro draw-texture-rec draw-texture-ex
   draw-texture-v draw-texture set-texture-wrap
   set-texture-filter gen-texture-mipmaps update-texture-rec
   update-texture unload-render-texture is-render-texture-valid
   unload-texture is-texture-valid load-render-texture
   load-texture-cubemap load-texture-from-image load-texture
   image-draw-text-pro image-draw-text-ex image-draw-text
   image-draw-image-pro image-draw-image-rec
   image-draw-image-ex image-draw-image
   image-draw-circle-gradient image-draw-circle-lines-v
   image-draw-circle-lines image-draw-circle-v
   image-draw-circle image-draw-rectangle-gradient-ex
   image-draw-rectangle-lines-ex image-draw-rectangle-lines
   image-draw-rectangle-pro image-draw-rectangle-rec
   image-draw-rectangle-v image-draw-rectangle
   image-draw-triangle-strip image-draw-triangle-fan
   image-draw-triangle-lines image-draw-triangle-gradient
   image-draw-triangle image-draw-line-strip image-draw-line-ex
   image-draw-line-v image-draw-line image-draw-pixel-v
   image-draw-pixel image-clear-background get-image-color
   get-image-alpha-border unload-image-palette
   unload-image-colors load-image-palette load-image-colors
   image-color-replace image-color-brightness
   image-color-contrast image-color-grayscale
   image-color-invert image-color-tint image-rotate-ccw
   image-rotate-cw image-rotate image-flip-horizontal
   image-flip-vertical image-dither image-mipmaps
   image-resize-canvas image-resize-nn image-resize
   image-kernel-convolution image-blur-gaussian
   image-alpha-premultiply image-alpha-mask image-alpha-clear
   image-alpha-crop image-crop image-to-pot image-format
   image-text-ex image-text image-from-channel image-from-image
   image-copy gen-image-text gen-image-cellular
   gen-image-perlin-noise gen-image-white-noise
   gen-image-checked gen-image-gradient-square
   gen-image-gradient-radial gen-image-gradient-linear
   gen-image-color export-image-as-code export-image-to-memory
   export-image unload-image is-image-valid
   load-image-from-screen load-image-from-texture
   load-image-from-memory load-image-anim-from-memory
   load-image-anim load-image-raw load-image get-collision-rec
   check-collision-lines check-collision-point-poly
   check-collision-point-line check-collision-point-triangle
   check-collision-point-circle check-collision-point-rec
   check-collision-circle-line check-collision-circle-rec
   check-collision-circles check-collision-recs
   get-spline-point-bezier-cubic
   get-spline-point-bezier-quadratic
   get-spline-point-catmull-rom get-spline-point-basis
   get-spline-point-linear draw-spline-segment-bezier-cubic
   draw-spline-segment-bezier-quadratic
   draw-spline-segment-catmull-rom draw-spline-segment-basis
   draw-spline-segment-linear draw-spline-bezier-cubic
   draw-spline-bezier-quadratic draw-spline-catmull-rom
   draw-spline-basis draw-spline-linear draw-ring-lines
   draw-ring draw-ellipse-lines-v draw-ellipse-lines
   draw-ellipse-v draw-ellipse draw-circle-lines-ex
   draw-circle-lines-v draw-circle-lines
   draw-circle-sector-lines draw-circle-sector
   draw-circle-gradient draw-circle-v draw-circle
   draw-poly-lines-ex draw-poly-lines draw-poly
   draw-rectangle-rounded-lines-ex draw-rectangle-rounded-lines
   draw-rectangle-rounded draw-rectangle-lines-ex
   draw-rectangle-lines draw-rectangle-gradient-ex
   draw-rectangle-gradient-h draw-rectangle-gradient-v
   draw-rectangle-pro draw-rectangle-rec draw-rectangle-v
   draw-rectangle draw-triangle-strip draw-triangle-fan
   draw-triangle-lines draw-triangle-gradient draw-triangle
   draw-line-dashed draw-line-bezier draw-line-strip
   draw-line-ex draw-line-v draw-line draw-pixel-v draw-pixel
   get-shapes-texture-rectangle get-shapes-texture
   set-shapes-texture update-camera-pro update-camera
   get-gesture-pinch-angle get-gesture-pinch-vector
   get-gesture-drag-angle get-gesture-drag-vector
   get-gesture-hold-duration get-gesture-detected
   is-gesture-detected set-gestures-enabled
   get-touch-point-count get-touch-point-id get-touch-position
   get-touch-y get-touch-x set-mouse-cursor
   get-mouse-wheel-move-v get-mouse-wheel-move set-mouse-scale
   set-mouse-offset set-mouse-position get-mouse-delta
   get-mouse-position get-mouse-y get-mouse-x
   is-mouse-button-up is-mouse-button-released
   is-mouse-button-down is-mouse-button-pressed
   set-gamepad-vibration set-gamepad-mappings
   get-gamepad-axis-movement get-gamepad-axis-count
   get-gamepad-button-pressed is-gamepad-button-up
   is-gamepad-button-released is-gamepad-button-down
   is-gamepad-button-pressed get-gamepad-name
   is-gamepad-available set-exit-key get-key-name
   get-char-pressed get-key-pressed is-key-up is-key-released
   is-key-down is-key-pressed-repeat is-key-pressed
   play-automation-event stop-automation-event-recording
   start-automation-event-recording
   set-automation-event-base-frame set-automation-event-list
   export-automation-event-list unload-automation-event-list
   load-automation-event-list compute-sha-256 compute-sha-1
   compute-md-5 compute-crc-32 decode-data-base-64
   encode-data-base-64 decompress-data compress-data
   get-directory-file-count-ex get-directory-file-count
   unload-dropped-files load-dropped-files is-file-dropped
   unload-directory-files load-directory-files-ex
   load-directory-files is-file-name-valid is-path-directory
   is-path-file change-directory make-directory
   get-application-directory get-working-directory
   get-prev-directory-path get-directory-path
   get-file-name-without-ext get-file-name get-file-extension
   get-file-mod-time get-file-length is-file-extension
   directory-exists file-exists file-text-find-index
   file-text-replace file-move file-copy file-remove
   file-rename set-save-file-text-callback
   set-load-file-text-callback set-save-file-data-callback
   set-load-file-data-callback save-file-text unload-file-text
   load-file-text export-data-as-code save-file-data
   unload-file-data load-file-data mem-free mem-realloc
   mem-alloc set-trace-log-callback set-trace-log-level
   open-url set-config-flags take-screenshot
   unload-random-sequence load-random-sequence get-random-value
   set-random-seed wait-time poll-input-events
   swap-screen-buffer get-fps get-time get-frame-time
   set-target-fps get-camera-matrix-2d get-camera-matrix
   get-screen-to-world-2d get-world-to-screen-2d
   get-world-to-screen-ex get-world-to-screen
   get-screen-to-world-ray-ex get-screen-to-world-ray
   unload-shader set-shader-value-texture
   set-shader-value-matrix set-shader-value-v set-shader-value
   get-shader-location-attrib get-shader-location
   is-shader-valid load-shader-from-memory load-shader
   unload-vr-stereo-config load-vr-stereo-config
   end-vr-stereo-mode begin-vr-stereo-mode end-scissor-mode
   begin-scissor-mode end-blend-mode begin-blend-mode
   end-shader-mode begin-shader-mode end-texture-mode
   begin-texture-mode end-mode-3d begin-mode-3d end-mode-2d
   begin-mode-2d end-drawing begin-drawing clear-background
   is-cursor-on-screen disable-cursor enable-cursor
   is-cursor-hidden hide-cursor show-cursor
   disable-event-waiting enable-event-waiting
   get-clipboard-image get-clipboard-text set-clipboard-text
   get-monitor-name get-window-scale-dpi get-window-position
   get-monitor-refresh-rate get-monitor-physical-height
   get-monitor-physical-width get-monitor-height
   get-monitor-width get-monitor-position get-current-monitor
   get-monitor-count get-render-height get-render-width
   get-screen-height get-screen-width get-window-handle
   set-window-focused set-window-opacity set-window-size
   set-window-max-size set-window-min-size set-window-monitor
   set-window-position set-window-title set-window-icons
   set-window-icon restore-window minimize-window
   maximize-window toggle-borderless-windowed toggle-fullscreen
   clear-window-state set-window-state is-window-state
   is-window-resized is-window-focused is-window-maximized
   is-window-minimized is-window-hidden is-window-fullscreen
   is-window-ready window-should-close close-window
   init-window)
  (import (chezscheme))
  (begin
    (define rad->deg (lambda (rad) (/ (* rad 180) PI)))
    (define deg->rad (lambda (deg) (/ (* deg PI) 180)))
    (define PI 3.141592653589793)
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
        [(c r g b a)
         (ftype-set! Color (r) c r)
         (ftype-set! Color (g) c g)
         (ftype-set! Color (b) c b)
         (ftype-set! Color (a) c a)
         c]))
    (define-syntax drawing-begin
      (syntax-rules ()
        [(_ e0 e1 ...)
         (begin (begin-drawing) e0 e1 ... (end-drawing))]))
    (define-syntax mode-2d-begin
      (syntax-rules ()
        [(_ camera e0 e1 ...)
         (begin (begin-mode-2d camera) e0 e1 ... (end-mode-2d))]))
    (define-syntax mode-3d-begin
      (syntax-rules ()
        [(_ camera e0 e1 ...)
         (begin (begin-mode-3d camera) e0 e1 ... (end-mode-3d))]))
    (define-syntax blend-mode-begin
      (syntax-rules ()
        [(_ bm e0 e1 ...)
         (begin (begin-blend-mode bm) e0 e1 ... (end-blend-mode))]))
    (define-syntax scissor-mode-begin
      (syntax-rules ()
        [(_ rect-l e0 e1 ...)
         (begin
           (apply begin-scissor-mode rect-l)
           e0
           e1
           ...
           (end-scissor-mode))]))
    (define-syntax float
      (syntax-rules ()
        [(_ f) (if (fixnum? f) (fixnum->flonum f) f)]))
    (define-syntax int
      (syntax-rules ()
        [(_ f) (if (flonum? f) (flonum->fixnum (round f)) f)]))
    (define-syntax bool (syntax-rules () [(_ f) (not (= f 0))]))
    (define-syntax arr*
      (syntax-rules () [(_ arr) (vector-ref arr 0)]))
    (define-syntax arr&
      (syntax-rules ()
        [(_ num ftype-name arr-0)
         (let ([arr (make-vector num)]
               [size (ftype-sizeof ftype-name)])
           (do ([i 0 (fx+ i 1)]
                [addr (ftype-pointer-address arr-0) (+ addr size)])
               ((= i num) arr)
             (vector-set!
               arr
               i
               (make-ftype-pointer ftype-name addr))))]))
    (define-syntax arr-ind
      (syntax-rules (*)
        [(_ arr (* ftype-name) ind)
         (make-ftype-pointer
           ftype-name
           (ftype-ref void* () (arr-ind arr void* ind)))]
        [(_ arr ftype-name ind)
         (make-ftype-pointer
           ftype-name
           (+ (ftype-pointer-address arr)
              (* ind (ftype-sizeof ftype-name))))]))
    (define-syntax make-array
      (syntax-rules ()
        [(_ num ftype-name)
         (let ([size (ftype-sizeof ftype-name)]
               [arr (make-vector num)])
           (do ([i 0 (fx+ i 1)]
                [addr (foreign-alloc (* num size)) (+ addr size)])
               ((= i num) arr)
             (vector-set! arr i (make-ftype-pointer ftype-name addr))))]
        [(_ data-list ftype-name maker-fn)
         (let* ([size (ftype-sizeof ftype-name)]
                [num (length data-list)]
                [arr (make-vector num)])
           (do ([i 0 (fx+ i 1)]
                [addr (foreign-alloc (* num size)) (+ addr size)]
                [dl data-list (cdr dl)])
               ((= i num) arr)
             (vector-set!
               arr
               i
               (apply
                 maker-fn
                 (cons
                   (make-ftype-pointer ftype-name addr)
                   (car dl))))))]))
    (define RAYLIB_VERSION_MAJOR 6)
    (define RAYLIB_VERSION_MINOR 1)
    (define RAYLIB_VERSION_PATCH 0)
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
    (define RAYWHITE (make-color 245 245 245 255))
    (define-ftype Vector-2 (struct [x float] [y float]))
    (define make-vector-2
      (case-lambda
        [(x y)
         (let ([s (make-ftype-pointer
                    Vector-2
                    (foreign-alloc (ftype-sizeof Vector-2)))])
           (ftype-set! Vector-2 (x) s x)
           (ftype-set! Vector-2 (y) s y)
           s)]
        [(struct x y)
         (ftype-set! Vector-2 (x) struct x)
         (ftype-set! Vector-2 (y) struct y)
         struct]))
    (define copy-vector-2
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Vector-2
                     (foreign-alloc (ftype-sizeof Vector-2)))])
          (ftype-set! Vector-2 (x) dst (ftype-ref Vector-2 (x) src))
          (ftype-set! Vector-2 (y) dst (ftype-ref Vector-2 (y) src))
          dst)))
    (define-syntax vector-2-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Vector-2 (f ...) s v)]
        [(_ s f v) (ftype-set! Vector-2 (f) s v)]))
    (define-syntax vector-2-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Vector-2 (f ...) s)]
        [(_ s f) (ftype-ref Vector-2 (f) s)]))
    (define-syntax vector-2-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Vector-2 (f ...) s)]
        [(_ s f) (ftype-&ref Vector-2 (f) s)]))
    (define-ftype Vector-3
      (struct [x float] [y float] [z float]))
    (define make-vector-3
      (case-lambda
        [(x y z)
         (let ([s (make-ftype-pointer
                    Vector-3
                    (foreign-alloc (ftype-sizeof Vector-3)))])
           (ftype-set! Vector-3 (x) s x)
           (ftype-set! Vector-3 (y) s y)
           (ftype-set! Vector-3 (z) s z)
           s)]
        [(struct x y z)
         (ftype-set! Vector-3 (x) struct x)
         (ftype-set! Vector-3 (y) struct y)
         (ftype-set! Vector-3 (z) struct z)
         struct]))
    (define copy-vector-3
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Vector-3
                     (foreign-alloc (ftype-sizeof Vector-3)))])
          (ftype-set! Vector-3 (x) dst (ftype-ref Vector-3 (x) src))
          (ftype-set! Vector-3 (y) dst (ftype-ref Vector-3 (y) src))
          (ftype-set! Vector-3 (z) dst (ftype-ref Vector-3 (z) src))
          dst)))
    (define-syntax vector-3-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Vector-3 (f ...) s v)]
        [(_ s f v) (ftype-set! Vector-3 (f) s v)]))
    (define-syntax vector-3-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Vector-3 (f ...) s)]
        [(_ s f) (ftype-ref Vector-3 (f) s)]))
    (define-syntax vector-3-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Vector-3 (f ...) s)]
        [(_ s f) (ftype-&ref Vector-3 (f) s)]))
    (define-ftype Vector-4
      (struct [x float] [y float] [z float] [w float]))
    (define make-vector-4
      (case-lambda
        [(x y z w)
         (let ([s (make-ftype-pointer
                    Vector-4
                    (foreign-alloc (ftype-sizeof Vector-4)))])
           (ftype-set! Vector-4 (x) s x)
           (ftype-set! Vector-4 (y) s y)
           (ftype-set! Vector-4 (z) s z)
           (ftype-set! Vector-4 (w) s w)
           s)]
        [(struct x y z w)
         (ftype-set! Vector-4 (x) struct x)
         (ftype-set! Vector-4 (y) struct y)
         (ftype-set! Vector-4 (z) struct z)
         (ftype-set! Vector-4 (w) struct w)
         struct]))
    (define copy-vector-4
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Vector-4
                     (foreign-alloc (ftype-sizeof Vector-4)))])
          (ftype-set! Vector-4 (x) dst (ftype-ref Vector-4 (x) src))
          (ftype-set! Vector-4 (y) dst (ftype-ref Vector-4 (y) src))
          (ftype-set! Vector-4 (z) dst (ftype-ref Vector-4 (z) src))
          (ftype-set! Vector-4 (w) dst (ftype-ref Vector-4 (w) src))
          dst)))
    (define-syntax vector-4-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Vector-4 (f ...) s v)]
        [(_ s f v) (ftype-set! Vector-4 (f) s v)]))
    (define-syntax vector-4-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Vector-4 (f ...) s)]
        [(_ s f) (ftype-ref Vector-4 (f) s)]))
    (define-syntax vector-4-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Vector-4 (f ...) s)]
        [(_ s f) (ftype-&ref Vector-4 (f) s)]))
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
    (define-ftype Color
      (struct
        [r unsigned-8]
        [g unsigned-8]
        [b unsigned-8]
        [a unsigned-8]))
    (define-syntax color-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Color (f ...) s v)]
        [(_ s f v) (ftype-set! Color (f) s v)]))
    (define-syntax color-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Color (f ...) s)]
        [(_ s f) (ftype-ref Color (f) s)]))
    (define-syntax color-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Color (f ...) s)]
        [(_ s f) (ftype-&ref Color (f) s)]))
    (define-ftype Rectangle
      (struct [x float] [y float] [width float] [height float]))
    (define make-rectangle
      (case-lambda
        [(x y width height)
         (let ([s (make-ftype-pointer
                    Rectangle
                    (foreign-alloc (ftype-sizeof Rectangle)))])
           (ftype-set! Rectangle (x) s x)
           (ftype-set! Rectangle (y) s y)
           (ftype-set! Rectangle (width) s width)
           (ftype-set! Rectangle (height) s height)
           s)]
        [(struct x y width height)
         (ftype-set! Rectangle (x) struct x)
         (ftype-set! Rectangle (y) struct y)
         (ftype-set! Rectangle (width) struct width)
         (ftype-set! Rectangle (height) struct height)
         struct]))
    (define copy-rectangle
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Rectangle
                     (foreign-alloc (ftype-sizeof Rectangle)))])
          (ftype-set! Rectangle (x) dst (ftype-ref Rectangle (x) src))
          (ftype-set! Rectangle (y) dst (ftype-ref Rectangle (y) src))
          (ftype-set!
            Rectangle
            (width)
            dst
            (ftype-ref Rectangle (width) src))
          (ftype-set!
            Rectangle
            (height)
            dst
            (ftype-ref Rectangle (height) src))
          dst)))
    (define-syntax rectangle-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Rectangle (f ...) s v)]
        [(_ s f v) (ftype-set! Rectangle (f) s v)]))
    (define-syntax rectangle-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Rectangle (f ...) s)]
        [(_ s f) (ftype-ref Rectangle (f) s)]))
    (define-syntax rectangle-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Rectangle (f ...) s)]
        [(_ s f) (ftype-&ref Rectangle (f) s)]))
    (define-ftype Image
      (struct
        [data void*]
        [width int]
        [height int]
        [mipmaps int]
        [format int]))
    (define make-image
      (case-lambda
        [(data width height mipmaps format)
         (let ([s (make-ftype-pointer
                    Image
                    (foreign-alloc (ftype-sizeof Image)))])
           (ftype-set! Image (data) s data)
           (ftype-set! Image (width) s width)
           (ftype-set! Image (height) s height)
           (ftype-set! Image (mipmaps) s mipmaps)
           (ftype-set! Image (format) s format)
           s)]
        [(struct data width height mipmaps format)
         (ftype-set! Image (data) struct data)
         (ftype-set! Image (width) struct width)
         (ftype-set! Image (height) struct height)
         (ftype-set! Image (mipmaps) struct mipmaps)
         (ftype-set! Image (format) struct format)
         struct]))
    (define copy-image
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Image
                     (foreign-alloc (ftype-sizeof Image)))])
          (ftype-set! Image (data) dst (ftype-ref Image (data) src))
          (ftype-set! Image (width) dst (ftype-ref Image (width) src))
          (ftype-set!
            Image
            (height)
            dst
            (ftype-ref Image (height) src))
          (ftype-set!
            Image
            (mipmaps)
            dst
            (ftype-ref Image (mipmaps) src))
          (ftype-set!
            Image
            (format)
            dst
            (ftype-ref Image (format) src))
          dst)))
    (define-syntax image-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Image (f ...) s v)]
        [(_ s f v) (ftype-set! Image (f) s v)]))
    (define-syntax image-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Image (f ...) s)]
        [(_ s f) (ftype-ref Image (f) s)]))
    (define-syntax image-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Image (f ...) s)]
        [(_ s f) (ftype-&ref Image (f) s)]))
    (define-ftype Texture
      (struct
        [id unsigned]
        [width int]
        [height int]
        [mipmaps int]
        [format int]))
    (define make-texture
      (case-lambda
        [(id width height mipmaps format)
         (let ([s (make-ftype-pointer
                    Texture
                    (foreign-alloc (ftype-sizeof Texture)))])
           (ftype-set! Texture (id) s id)
           (ftype-set! Texture (width) s width)
           (ftype-set! Texture (height) s height)
           (ftype-set! Texture (mipmaps) s mipmaps)
           (ftype-set! Texture (format) s format)
           s)]
        [(struct id width height mipmaps format)
         (ftype-set! Texture (id) struct id)
         (ftype-set! Texture (width) struct width)
         (ftype-set! Texture (height) struct height)
         (ftype-set! Texture (mipmaps) struct mipmaps)
         (ftype-set! Texture (format) struct format)
         struct]))
    (define copy-texture
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Texture
                     (foreign-alloc (ftype-sizeof Texture)))])
          (ftype-set! Texture (id) dst (ftype-ref Texture (id) src))
          (ftype-set!
            Texture
            (width)
            dst
            (ftype-ref Texture (width) src))
          (ftype-set!
            Texture
            (height)
            dst
            (ftype-ref Texture (height) src))
          (ftype-set!
            Texture
            (mipmaps)
            dst
            (ftype-ref Texture (mipmaps) src))
          (ftype-set!
            Texture
            (format)
            dst
            (ftype-ref Texture (format) src))
          dst)))
    (define-syntax texture-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Texture (f ...) s v)]
        [(_ s f v) (ftype-set! Texture (f) s v)]))
    (define-syntax texture-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Texture (f ...) s)]
        [(_ s f) (ftype-ref Texture (f) s)]))
    (define-syntax texture-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Texture (f ...) s)]
        [(_ s f) (ftype-&ref Texture (f) s)]))
    (define-ftype Render-Texture
      (struct [id unsigned] [texture Texture] [depth Texture]))
    (define make-render-texture
      (case-lambda
        [(id texture depth)
         (let ([s (make-ftype-pointer
                    Render-Texture
                    (foreign-alloc (ftype-sizeof Render-Texture)))])
           (ftype-set! Render-Texture (id) s id)
           (void)
           (void)
           s)]
        [(struct id texture depth)
         (ftype-set! Render-Texture (id) struct id)
         (void)
         (void)
         struct]))
    (define copy-render-texture
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Render-Texture
                     (foreign-alloc (ftype-sizeof Render-Texture)))])
          (ftype-set!
            Render-Texture
            (id)
            dst
            (ftype-ref Render-Texture (id) src))
          (void)
          (void)
          dst)))
    (define-syntax render-texture-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Render-Texture (f ...) s v)]
        [(_ s f v) (ftype-set! Render-Texture (f) s v)]))
    (define-syntax render-texture-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Render-Texture (f ...) s)]
        [(_ s f) (ftype-ref Render-Texture (f) s)]))
    (define-syntax render-texture-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Render-Texture (f ...) s)]
        [(_ s f) (ftype-&ref Render-Texture (f) s)]))
    (define-ftype N-Patch-Info
      (struct
        [source Rectangle]
        [left int]
        [top int]
        [right int]
        [bottom int]
        [layout int]))
    (define make-npatch-info
      (case-lambda
        [(source left top right bottom layout)
         (let ([s (make-ftype-pointer
                    N-Patch-Info
                    (foreign-alloc (ftype-sizeof N-Patch-Info)))])
           (void)
           (ftype-set! N-Patch-Info (left) s left)
           (ftype-set! N-Patch-Info (top) s top)
           (ftype-set! N-Patch-Info (right) s right)
           (ftype-set! N-Patch-Info (bottom) s bottom)
           (ftype-set! N-Patch-Info (layout) s layout)
           s)]
        [(struct source left top right bottom layout)
         (void)
         (ftype-set! N-Patch-Info (left) struct left)
         (ftype-set! N-Patch-Info (top) struct top)
         (ftype-set! N-Patch-Info (right) struct right)
         (ftype-set! N-Patch-Info (bottom) struct bottom)
         (ftype-set! N-Patch-Info (layout) struct layout)
         struct]))
    (define copy-npatch-info
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     N-Patch-Info
                     (foreign-alloc (ftype-sizeof N-Patch-Info)))])
          (void)
          (ftype-set!
            N-Patch-Info
            (left)
            dst
            (ftype-ref N-Patch-Info (left) src))
          (ftype-set!
            N-Patch-Info
            (top)
            dst
            (ftype-ref N-Patch-Info (top) src))
          (ftype-set!
            N-Patch-Info
            (right)
            dst
            (ftype-ref N-Patch-Info (right) src))
          (ftype-set!
            N-Patch-Info
            (bottom)
            dst
            (ftype-ref N-Patch-Info (bottom) src))
          (ftype-set!
            N-Patch-Info
            (layout)
            dst
            (ftype-ref N-Patch-Info (layout) src))
          dst)))
    (define-syntax npatch-info-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! N-Patch-Info (f ...) s v)]
        [(_ s f v) (ftype-set! N-Patch-Info (f) s v)]))
    (define-syntax npatch-info-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref N-Patch-Info (f ...) s)]
        [(_ s f) (ftype-ref N-Patch-Info (f) s)]))
    (define-syntax npatch-info-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref N-Patch-Info (f ...) s)]
        [(_ s f) (ftype-&ref N-Patch-Info (f) s)]))
    (define-ftype Glyph-Info
      (struct
        [value int]
        [offset-X int]
        [offset-Y int]
        [advance-X int]
        [image Image]))
    (define make-glyph-info
      (case-lambda
        [(value offset-X offset-Y advance-X image)
         (let ([s (make-ftype-pointer
                    Glyph-Info
                    (foreign-alloc (ftype-sizeof Glyph-Info)))])
           (ftype-set! Glyph-Info (value) s value)
           (ftype-set! Glyph-Info (offset-X) s offset-X)
           (ftype-set! Glyph-Info (offset-Y) s offset-Y)
           (ftype-set! Glyph-Info (advance-X) s advance-X)
           (void)
           s)]
        [(struct value offset-X offset-Y advance-X image)
         (ftype-set! Glyph-Info (value) struct value)
         (ftype-set! Glyph-Info (offset-X) struct offset-X)
         (ftype-set! Glyph-Info (offset-Y) struct offset-Y)
         (ftype-set! Glyph-Info (advance-X) struct advance-X)
         (void)
         struct]))
    (define copy-glyph-info
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Glyph-Info
                     (foreign-alloc (ftype-sizeof Glyph-Info)))])
          (ftype-set!
            Glyph-Info
            (value)
            dst
            (ftype-ref Glyph-Info (value) src))
          (ftype-set!
            Glyph-Info
            (offset-X)
            dst
            (ftype-ref Glyph-Info (offset-X) src))
          (ftype-set!
            Glyph-Info
            (offset-Y)
            dst
            (ftype-ref Glyph-Info (offset-Y) src))
          (ftype-set!
            Glyph-Info
            (advance-X)
            dst
            (ftype-ref Glyph-Info (advance-X) src))
          (void)
          dst)))
    (define-syntax glyph-info-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Glyph-Info (f ...) s v)]
        [(_ s f v) (ftype-set! Glyph-Info (f) s v)]))
    (define-syntax glyph-info-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Glyph-Info (f ...) s)]
        [(_ s f) (ftype-ref Glyph-Info (f) s)]))
    (define-syntax glyph-info-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Glyph-Info (f ...) s)]
        [(_ s f) (ftype-&ref Glyph-Info (f) s)]))
    (define-ftype Font
      (struct
        [base-Size int]
        [glyph-Count int]
        [glyph-Padding int]
        [texture Texture]
        [recs (* Rectangle)]
        [glyphs (* Glyph-Info)]))
    (define make-font
      (case-lambda
        [(base-Size glyph-Count glyph-Padding texture recs glyphs)
         (let ([s (make-ftype-pointer
                    Font
                    (foreign-alloc (ftype-sizeof Font)))])
           (ftype-set! Font (base-Size) s base-Size)
           (ftype-set! Font (glyph-Count) s glyph-Count)
           (ftype-set! Font (glyph-Padding) s glyph-Padding)
           (void)
           (void)
           (void)
           s)]
        [(struct base-Size glyph-Count glyph-Padding texture recs
          glyphs)
         (ftype-set! Font (base-Size) struct base-Size)
         (ftype-set! Font (glyph-Count) struct glyph-Count)
         (ftype-set! Font (glyph-Padding) struct glyph-Padding)
         (void)
         (void)
         (void)
         struct]))
    (define copy-font
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Font
                     (foreign-alloc (ftype-sizeof Font)))])
          (ftype-set!
            Font
            (base-Size)
            dst
            (ftype-ref Font (base-Size) src))
          (ftype-set!
            Font
            (glyph-Count)
            dst
            (ftype-ref Font (glyph-Count) src))
          (ftype-set!
            Font
            (glyph-Padding)
            dst
            (ftype-ref Font (glyph-Padding) src))
          (void)
          (void)
          (void)
          dst)))
    (define-syntax font-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Font (f ...) s v)]
        [(_ s f v) (ftype-set! Font (f) s v)]))
    (define-syntax font-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Font (f ...) s)]
        [(_ s f) (ftype-ref Font (f) s)]))
    (define-syntax font-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Font (f ...) s)]
        [(_ s f) (ftype-&ref Font (f) s)]))
    (define-ftype Camera-3D
      (struct
        [position Vector-3]
        [target Vector-3]
        [up Vector-3]
        [fovy float]
        [projection int]))
    (define make-camera-3d
      (case-lambda
        [(position target up fovy projection)
         (let ([s (make-ftype-pointer
                    Camera-3D
                    (foreign-alloc (ftype-sizeof Camera-3D)))])
           (void)
           (void)
           (void)
           (ftype-set! Camera-3D (fovy) s fovy)
           (ftype-set! Camera-3D (projection) s projection)
           s)]
        [(struct position target up fovy projection)
         (void)
         (void)
         (void)
         (ftype-set! Camera-3D (fovy) struct fovy)
         (ftype-set! Camera-3D (projection) struct projection)
         struct]))
    (define copy-camera-3d
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Camera-3D
                     (foreign-alloc (ftype-sizeof Camera-3D)))])
          (void)
          (void)
          (void)
          (ftype-set!
            Camera-3D
            (fovy)
            dst
            (ftype-ref Camera-3D (fovy) src))
          (ftype-set!
            Camera-3D
            (projection)
            dst
            (ftype-ref Camera-3D (projection) src))
          dst)))
    (define-syntax camera-3d-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Camera-3D (f ...) s v)]
        [(_ s f v) (ftype-set! Camera-3D (f) s v)]))
    (define-syntax camera-3d-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Camera-3D (f ...) s)]
        [(_ s f) (ftype-ref Camera-3D (f) s)]))
    (define-syntax camera-3d-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Camera-3D (f ...) s)]
        [(_ s f) (ftype-&ref Camera-3D (f) s)]))
    (define-ftype Camera-2D
      (struct
        [offset Vector-2]
        [target Vector-2]
        [rotation float]
        [zoom float]))
    (define make-camera-2d
      (case-lambda
        [(offset target rotation zoom)
         (let ([s (make-ftype-pointer
                    Camera-2D
                    (foreign-alloc (ftype-sizeof Camera-2D)))])
           (void)
           (void)
           (ftype-set! Camera-2D (rotation) s rotation)
           (ftype-set! Camera-2D (zoom) s zoom)
           s)]
        [(struct offset target rotation zoom)
         (void)
         (void)
         (ftype-set! Camera-2D (rotation) struct rotation)
         (ftype-set! Camera-2D (zoom) struct zoom)
         struct]))
    (define copy-camera-2d
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Camera-2D
                     (foreign-alloc (ftype-sizeof Camera-2D)))])
          (void)
          (void)
          (ftype-set!
            Camera-2D
            (rotation)
            dst
            (ftype-ref Camera-2D (rotation) src))
          (ftype-set!
            Camera-2D
            (zoom)
            dst
            (ftype-ref Camera-2D (zoom) src))
          dst)))
    (define-syntax camera-2d-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Camera-2D (f ...) s v)]
        [(_ s f v) (ftype-set! Camera-2D (f) s v)]))
    (define-syntax camera-2d-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Camera-2D (f ...) s)]
        [(_ s f) (ftype-ref Camera-2D (f) s)]))
    (define-syntax camera-2d-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Camera-2D (f ...) s)]
        [(_ s f) (ftype-&ref Camera-2D (f) s)]))
    (define-ftype Mesh
      (struct
        [vertex-Count int]
        [triangle-Count int]
        [vertices (* float)]
        [texcoords (* float)]
        [texcoords-2 (* float)]
        [normals (* float)]
        [tangents (* float)]
        [colors (* unsigned-8)]
        [indices (* unsigned-short)]
        [bone-Count int]
        [bone-Indices (* unsigned-8)]
        [bone-Weights (* float)]
        [anim-Vertices (* float)]
        [anim-Normals (* float)]
        [vao-Id unsigned]
        [vbo-Id (* unsigned)]))
    (define make-mesh
      (case-lambda
        [(vertex-Count triangle-Count vertices texcoords texcoords-2
          normals tangents colors indices bone-Count bone-Indices
          bone-Weights anim-Vertices anim-Normals vao-Id vbo-Id)
         (let ([s (make-ftype-pointer
                    Mesh
                    (foreign-alloc (ftype-sizeof Mesh)))])
           (ftype-set! Mesh (vertex-Count) s vertex-Count)
           (ftype-set! Mesh (triangle-Count) s triangle-Count)
           (void)
           (void)
           (void)
           (void)
           (void)
           (void)
           (void)
           (ftype-set! Mesh (bone-Count) s bone-Count)
           (void)
           (void)
           (void)
           (void)
           (ftype-set! Mesh (vao-Id) s vao-Id)
           (void)
           s)]
        [(struct vertex-Count triangle-Count vertices texcoords
          texcoords-2 normals tangents colors indices bone-Count
          bone-Indices bone-Weights anim-Vertices anim-Normals vao-Id
          vbo-Id)
         (ftype-set! Mesh (vertex-Count) struct vertex-Count)
         (ftype-set! Mesh (triangle-Count) struct triangle-Count)
         (void)
         (void)
         (void)
         (void)
         (void)
         (void)
         (void)
         (ftype-set! Mesh (bone-Count) struct bone-Count)
         (void)
         (void)
         (void)
         (void)
         (ftype-set! Mesh (vao-Id) struct vao-Id)
         (void)
         struct]))
    (define copy-mesh
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Mesh
                     (foreign-alloc (ftype-sizeof Mesh)))])
          (ftype-set!
            Mesh
            (vertex-Count)
            dst
            (ftype-ref Mesh (vertex-Count) src))
          (ftype-set!
            Mesh
            (triangle-Count)
            dst
            (ftype-ref Mesh (triangle-Count) src))
          (void)
          (void)
          (void)
          (void)
          (void)
          (void)
          (void)
          (ftype-set!
            Mesh
            (bone-Count)
            dst
            (ftype-ref Mesh (bone-Count) src))
          (void)
          (void)
          (void)
          (void)
          (ftype-set! Mesh (vao-Id) dst (ftype-ref Mesh (vao-Id) src))
          (void)
          dst)))
    (define-syntax mesh-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Mesh (f ...) s v)]
        [(_ s f v) (ftype-set! Mesh (f) s v)]))
    (define-syntax mesh-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Mesh (f ...) s)]
        [(_ s f) (ftype-ref Mesh (f) s)]))
    (define-syntax mesh-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Mesh (f ...) s)]
        [(_ s f) (ftype-&ref Mesh (f) s)]))
    (define-ftype Shader (struct [id unsigned] [locs (* int)]))
    (define make-shader
      (case-lambda
        [(id locs)
         (let ([s (make-ftype-pointer
                    Shader
                    (foreign-alloc (ftype-sizeof Shader)))])
           (ftype-set! Shader (id) s id)
           (void)
           s)]
        [(struct id locs)
         (ftype-set! Shader (id) struct id)
         (void)
         struct]))
    (define copy-shader
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Shader
                     (foreign-alloc (ftype-sizeof Shader)))])
          (ftype-set! Shader (id) dst (ftype-ref Shader (id) src))
          (void)
          dst)))
    (define-syntax shader-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Shader (f ...) s v)]
        [(_ s f v) (ftype-set! Shader (f) s v)]))
    (define-syntax shader-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Shader (f ...) s)]
        [(_ s f) (ftype-ref Shader (f) s)]))
    (define-syntax shader-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Shader (f ...) s)]
        [(_ s f) (ftype-&ref Shader (f) s)]))
    (define-ftype Material-Map
      (struct [texture Texture] [color Color] [value float]))
    (define make-material-map
      (case-lambda
        [(texture color value)
         (let ([s (make-ftype-pointer
                    Material-Map
                    (foreign-alloc (ftype-sizeof Material-Map)))])
           (void)
           (void)
           (ftype-set! Material-Map (value) s value)
           s)]
        [(struct texture color value)
         (void)
         (void)
         (ftype-set! Material-Map (value) struct value)
         struct]))
    (define copy-material-map
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Material-Map
                     (foreign-alloc (ftype-sizeof Material-Map)))])
          (void)
          (void)
          (ftype-set!
            Material-Map
            (value)
            dst
            (ftype-ref Material-Map (value) src))
          dst)))
    (define-syntax material-map-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Material-Map (f ...) s v)]
        [(_ s f v) (ftype-set! Material-Map (f) s v)]))
    (define-syntax material-map-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Material-Map (f ...) s)]
        [(_ s f) (ftype-ref Material-Map (f) s)]))
    (define-syntax material-map-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Material-Map (f ...) s)]
        [(_ s f) (ftype-&ref Material-Map (f) s)]))
    (define-ftype Material
      (struct
        [shader Shader]
        [maps (* Material-Map)]
        [params (array 4 float)]))
    (define make-material
      (case-lambda
        [(shader maps params)
         (let ([s (make-ftype-pointer
                    Material
                    (foreign-alloc (ftype-sizeof Material)))])
           (void)
           (void)
           (void)
           s)]
        [(struct shader maps params) (void) (void) (void) struct]))
    (define copy-material
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Material
                     (foreign-alloc (ftype-sizeof Material)))])
          (void)
          (void)
          (void)
          dst)))
    (define-syntax material-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Material (f ...) s v)]
        [(_ s f v) (ftype-set! Material (f) s v)]))
    (define-syntax material-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Material (f ...) s)]
        [(_ s f) (ftype-ref Material (f) s)]))
    (define-syntax material-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Material (f ...) s)]
        [(_ s f) (ftype-&ref Material (f) s)]))
    (define-ftype Transform
      (struct
        [translation Vector-3]
        [rotation Vector-4]
        [scale Vector-3]))
    (define make-transform
      (case-lambda
        [(translation rotation scale)
         (let ([s (make-ftype-pointer
                    Transform
                    (foreign-alloc (ftype-sizeof Transform)))])
           (void)
           (void)
           (void)
           s)]
        [(struct translation rotation scale)
         (void)
         (void)
         (void)
         struct]))
    (define copy-transform
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Transform
                     (foreign-alloc (ftype-sizeof Transform)))])
          (void)
          (void)
          (void)
          dst)))
    (define-syntax transform-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Transform (f ...) s v)]
        [(_ s f v) (ftype-set! Transform (f) s v)]))
    (define-syntax transform-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Transform (f ...) s)]
        [(_ s f) (ftype-ref Transform (f) s)]))
    (define-syntax transform-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Transform (f ...) s)]
        [(_ s f) (ftype-&ref Transform (f) s)]))
    (define-ftype Bone-Info
      (struct [name (array 32 char)] [parent int]))
    (define make-bone-info
      (case-lambda
        [(name parent)
         (let ([s (make-ftype-pointer
                    Bone-Info
                    (foreign-alloc (ftype-sizeof Bone-Info)))])
           (void)
           (ftype-set! Bone-Info (parent) s parent)
           s)]
        [(struct name parent)
         (void)
         (ftype-set! Bone-Info (parent) struct parent)
         struct]))
    (define copy-bone-info
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Bone-Info
                     (foreign-alloc (ftype-sizeof Bone-Info)))])
          (void)
          (ftype-set!
            Bone-Info
            (parent)
            dst
            (ftype-ref Bone-Info (parent) src))
          dst)))
    (define-syntax bone-info-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Bone-Info (f ...) s v)]
        [(_ s f v) (ftype-set! Bone-Info (f) s v)]))
    (define-syntax bone-info-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Bone-Info (f ...) s)]
        [(_ s f) (ftype-ref Bone-Info (f) s)]))
    (define-syntax bone-info-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Bone-Info (f ...) s)]
        [(_ s f) (ftype-&ref Bone-Info (f) s)]))
    (define-ftype Model-Skeleton
      (struct
        [bone-Count int]
        [bones (* Bone-Info)]
        [bind-Pose Transform]))
    (define make-model-skeleton
      (case-lambda
        [(bone-Count bones bind-Pose)
         (let ([s (make-ftype-pointer
                    Model-Skeleton
                    (foreign-alloc (ftype-sizeof Model-Skeleton)))])
           (ftype-set! Model-Skeleton (bone-Count) s bone-Count)
           (void)
           (void)
           s)]
        [(struct bone-Count bones bind-Pose)
         (ftype-set! Model-Skeleton (bone-Count) struct bone-Count)
         (void)
         (void)
         struct]))
    (define copy-model-skeleton
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Model-Skeleton
                     (foreign-alloc (ftype-sizeof Model-Skeleton)))])
          (ftype-set!
            Model-Skeleton
            (bone-Count)
            dst
            (ftype-ref Model-Skeleton (bone-Count) src))
          (void)
          (void)
          dst)))
    (define-syntax model-skeleton-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Model-Skeleton (f ...) s v)]
        [(_ s f v) (ftype-set! Model-Skeleton (f) s v)]))
    (define-syntax model-skeleton-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Model-Skeleton (f ...) s)]
        [(_ s f) (ftype-ref Model-Skeleton (f) s)]))
    (define-syntax model-skeleton-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Model-Skeleton (f ...) s)]
        [(_ s f) (ftype-&ref Model-Skeleton (f) s)]))
    (define-ftype Model
      (struct
        [transform Matrix]
        [mesh-Count int]
        [material-Count int]
        [meshes (* Mesh)]
        [materials (* Material)]
        [mesh-Material (* int)]
        [skeleton Model-Skeleton]
        [current-Pose Transform]
        [bone-Matrices (* Matrix)]))
    (define make-model
      (case-lambda
        [(transform mesh-Count material-Count meshes materials
          mesh-Material skeleton current-Pose bone-Matrices)
         (let ([s (make-ftype-pointer
                    Model
                    (foreign-alloc (ftype-sizeof Model)))])
           (void)
           (ftype-set! Model (mesh-Count) s mesh-Count)
           (ftype-set! Model (material-Count) s material-Count)
           (void)
           (void)
           (void)
           (void)
           (void)
           (void)
           s)]
        [(struct transform mesh-Count material-Count meshes
          materials mesh-Material skeleton current-Pose bone-Matrices)
         (void)
         (ftype-set! Model (mesh-Count) struct mesh-Count)
         (ftype-set! Model (material-Count) struct material-Count)
         (void)
         (void)
         (void)
         (void)
         (void)
         (void)
         struct]))
    (define copy-model
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Model
                     (foreign-alloc (ftype-sizeof Model)))])
          (void)
          (ftype-set!
            Model
            (mesh-Count)
            dst
            (ftype-ref Model (mesh-Count) src))
          (ftype-set!
            Model
            (material-Count)
            dst
            (ftype-ref Model (material-Count) src))
          (void)
          (void)
          (void)
          (void)
          (void)
          (void)
          dst)))
    (define-syntax model-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Model (f ...) s v)]
        [(_ s f v) (ftype-set! Model (f) s v)]))
    (define-syntax model-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Model (f ...) s)]
        [(_ s f) (ftype-ref Model (f) s)]))
    (define-syntax model-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Model (f ...) s)]
        [(_ s f) (ftype-&ref Model (f) s)]))
    (define-ftype Model-Animation
      (struct
        [name (array 32 char)]
        [bone-Count int]
        [keyframe-Count int]
        [keyframe-Poses (* Transform)]))
    (define make-model-animation
      (case-lambda
        [(name bone-Count keyframe-Count keyframe-Poses)
         (let ([s (make-ftype-pointer
                    Model-Animation
                    (foreign-alloc (ftype-sizeof Model-Animation)))])
           (void)
           (ftype-set! Model-Animation (bone-Count) s bone-Count)
           (ftype-set!
             Model-Animation
             (keyframe-Count)
             s
             keyframe-Count)
           (void)
           s)]
        [(struct name bone-Count keyframe-Count keyframe-Poses)
         (void)
         (ftype-set! Model-Animation (bone-Count) struct bone-Count)
         (ftype-set!
           Model-Animation
           (keyframe-Count)
           struct
           keyframe-Count)
         (void)
         struct]))
    (define copy-model-animation
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Model-Animation
                     (foreign-alloc (ftype-sizeof Model-Animation)))])
          (void)
          (ftype-set!
            Model-Animation
            (bone-Count)
            dst
            (ftype-ref Model-Animation (bone-Count) src))
          (ftype-set!
            Model-Animation
            (keyframe-Count)
            dst
            (ftype-ref Model-Animation (keyframe-Count) src))
          (void)
          dst)))
    (define-syntax model-animation-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Model-Animation (f ...) s v)]
        [(_ s f v) (ftype-set! Model-Animation (f) s v)]))
    (define-syntax model-animation-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Model-Animation (f ...) s)]
        [(_ s f) (ftype-ref Model-Animation (f) s)]))
    (define-syntax model-animation-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Model-Animation (f ...) s)]
        [(_ s f) (ftype-&ref Model-Animation (f) s)]))
    (define-ftype Ray
      (struct [position Vector-3] [direction Vector-3]))
    (define make-ray
      (case-lambda
        [(position direction)
         (let ([s (make-ftype-pointer
                    Ray
                    (foreign-alloc (ftype-sizeof Ray)))])
           (void)
           (void)
           s)]
        [(struct position direction) (void) (void) struct]))
    (define copy-ray
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Ray
                     (foreign-alloc (ftype-sizeof Ray)))])
          (void)
          (void)
          dst)))
    (define-syntax ray-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Ray (f ...) s v)]
        [(_ s f v) (ftype-set! Ray (f) s v)]))
    (define-syntax ray-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Ray (f ...) s)]
        [(_ s f) (ftype-ref Ray (f) s)]))
    (define-syntax ray-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Ray (f ...) s)]
        [(_ s f) (ftype-&ref Ray (f) s)]))
    (define-ftype Ray-Collision
      (struct
        [hit unsigned-8]
        [distance float]
        [point Vector-3]
        [normal Vector-3]))
    (define make-ray-collision
      (case-lambda
        [(hit distance point normal)
         (let ([s (make-ftype-pointer
                    Ray-Collision
                    (foreign-alloc (ftype-sizeof Ray-Collision)))])
           (ftype-set! Ray-Collision (hit) s hit)
           (ftype-set! Ray-Collision (distance) s distance)
           (void)
           (void)
           s)]
        [(struct hit distance point normal)
         (ftype-set! Ray-Collision (hit) struct hit)
         (ftype-set! Ray-Collision (distance) struct distance)
         (void)
         (void)
         struct]))
    (define copy-ray-collision
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Ray-Collision
                     (foreign-alloc (ftype-sizeof Ray-Collision)))])
          (ftype-set!
            Ray-Collision
            (hit)
            dst
            (ftype-ref Ray-Collision (hit) src))
          (ftype-set!
            Ray-Collision
            (distance)
            dst
            (ftype-ref Ray-Collision (distance) src))
          (void)
          (void)
          dst)))
    (define-syntax ray-collision-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Ray-Collision (f ...) s v)]
        [(_ s f v) (ftype-set! Ray-Collision (f) s v)]))
    (define-syntax ray-collision-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Ray-Collision (f ...) s)]
        [(_ s f) (ftype-ref Ray-Collision (f) s)]))
    (define-syntax ray-collision-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Ray-Collision (f ...) s)]
        [(_ s f) (ftype-&ref Ray-Collision (f) s)]))
    (define-ftype Bounding-Box
      (struct [min Vector-3] [max Vector-3]))
    (define make-bounding-box
      (case-lambda
        [(min max)
         (let ([s (make-ftype-pointer
                    Bounding-Box
                    (foreign-alloc (ftype-sizeof Bounding-Box)))])
           (void)
           (void)
           s)]
        [(struct min max) (void) (void) struct]))
    (define copy-bounding-box
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Bounding-Box
                     (foreign-alloc (ftype-sizeof Bounding-Box)))])
          (void)
          (void)
          dst)))
    (define-syntax bounding-box-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Bounding-Box (f ...) s v)]
        [(_ s f v) (ftype-set! Bounding-Box (f) s v)]))
    (define-syntax bounding-box-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Bounding-Box (f ...) s)]
        [(_ s f) (ftype-ref Bounding-Box (f) s)]))
    (define-syntax bounding-box-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Bounding-Box (f ...) s)]
        [(_ s f) (ftype-&ref Bounding-Box (f) s)]))
    (define-ftype Wave
      (struct
        [frame-Count unsigned]
        [sample-Rate unsigned]
        [sample-Size unsigned]
        [channels unsigned]
        [data void*]))
    (define make-wave
      (case-lambda
        [(frame-Count sample-Rate sample-Size channels data)
         (let ([s (make-ftype-pointer
                    Wave
                    (foreign-alloc (ftype-sizeof Wave)))])
           (ftype-set! Wave (frame-Count) s frame-Count)
           (ftype-set! Wave (sample-Rate) s sample-Rate)
           (ftype-set! Wave (sample-Size) s sample-Size)
           (ftype-set! Wave (channels) s channels)
           (ftype-set! Wave (data) s data)
           s)]
        [(struct frame-Count sample-Rate sample-Size channels data)
         (ftype-set! Wave (frame-Count) struct frame-Count)
         (ftype-set! Wave (sample-Rate) struct sample-Rate)
         (ftype-set! Wave (sample-Size) struct sample-Size)
         (ftype-set! Wave (channels) struct channels)
         (ftype-set! Wave (data) struct data)
         struct]))
    (define copy-wave
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Wave
                     (foreign-alloc (ftype-sizeof Wave)))])
          (ftype-set!
            Wave
            (frame-Count)
            dst
            (ftype-ref Wave (frame-Count) src))
          (ftype-set!
            Wave
            (sample-Rate)
            dst
            (ftype-ref Wave (sample-Rate) src))
          (ftype-set!
            Wave
            (sample-Size)
            dst
            (ftype-ref Wave (sample-Size) src))
          (ftype-set!
            Wave
            (channels)
            dst
            (ftype-ref Wave (channels) src))
          (ftype-set! Wave (data) dst (ftype-ref Wave (data) src))
          dst)))
    (define-syntax wave-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Wave (f ...) s v)]
        [(_ s f v) (ftype-set! Wave (f) s v)]))
    (define-syntax wave-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Wave (f ...) s)]
        [(_ s f) (ftype-ref Wave (f) s)]))
    (define-syntax wave-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Wave (f ...) s)]
        [(_ s f) (ftype-&ref Wave (f) s)]))
    (define-ftype Audio-Stream
      (struct
        [buffer void*]
        [processor void*]
        [sample-Rate unsigned]
        [sample-Size unsigned]
        [channels unsigned]))
    (define make-audio-stream
      (case-lambda
        [(buffer processor sample-Rate sample-Size channels)
         (let ([s (make-ftype-pointer
                    Audio-Stream
                    (foreign-alloc (ftype-sizeof Audio-Stream)))])
           (ftype-set! Audio-Stream (buffer) s buffer)
           (ftype-set! Audio-Stream (processor) s processor)
           (ftype-set! Audio-Stream (sample-Rate) s sample-Rate)
           (ftype-set! Audio-Stream (sample-Size) s sample-Size)
           (ftype-set! Audio-Stream (channels) s channels)
           s)]
        [(struct buffer processor sample-Rate sample-Size channels)
         (ftype-set! Audio-Stream (buffer) struct buffer)
         (ftype-set! Audio-Stream (processor) struct processor)
         (ftype-set! Audio-Stream (sample-Rate) struct sample-Rate)
         (ftype-set! Audio-Stream (sample-Size) struct sample-Size)
         (ftype-set! Audio-Stream (channels) struct channels)
         struct]))
    (define copy-audio-stream
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Audio-Stream
                     (foreign-alloc (ftype-sizeof Audio-Stream)))])
          (ftype-set!
            Audio-Stream
            (buffer)
            dst
            (ftype-ref Audio-Stream (buffer) src))
          (ftype-set!
            Audio-Stream
            (processor)
            dst
            (ftype-ref Audio-Stream (processor) src))
          (ftype-set!
            Audio-Stream
            (sample-Rate)
            dst
            (ftype-ref Audio-Stream (sample-Rate) src))
          (ftype-set!
            Audio-Stream
            (sample-Size)
            dst
            (ftype-ref Audio-Stream (sample-Size) src))
          (ftype-set!
            Audio-Stream
            (channels)
            dst
            (ftype-ref Audio-Stream (channels) src))
          dst)))
    (define-syntax audio-stream-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Audio-Stream (f ...) s v)]
        [(_ s f v) (ftype-set! Audio-Stream (f) s v)]))
    (define-syntax audio-stream-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Audio-Stream (f ...) s)]
        [(_ s f) (ftype-ref Audio-Stream (f) s)]))
    (define-syntax audio-stream-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Audio-Stream (f ...) s)]
        [(_ s f) (ftype-&ref Audio-Stream (f) s)]))
    (define-ftype Sound
      (struct [stream Audio-Stream] [frame-Count unsigned]))
    (define make-sound
      (case-lambda
        [(stream frame-Count)
         (let ([s (make-ftype-pointer
                    Sound
                    (foreign-alloc (ftype-sizeof Sound)))])
           (void)
           (ftype-set! Sound (frame-Count) s frame-Count)
           s)]
        [(struct stream frame-Count)
         (void)
         (ftype-set! Sound (frame-Count) struct frame-Count)
         struct]))
    (define copy-sound
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Sound
                     (foreign-alloc (ftype-sizeof Sound)))])
          (void)
          (ftype-set!
            Sound
            (frame-Count)
            dst
            (ftype-ref Sound (frame-Count) src))
          dst)))
    (define-syntax sound-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Sound (f ...) s v)]
        [(_ s f v) (ftype-set! Sound (f) s v)]))
    (define-syntax sound-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Sound (f ...) s)]
        [(_ s f) (ftype-ref Sound (f) s)]))
    (define-syntax sound-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Sound (f ...) s)]
        [(_ s f) (ftype-&ref Sound (f) s)]))
    (define-ftype Music
      (struct
        [stream Audio-Stream]
        [frame-Count unsigned]
        [looping unsigned-8]
        [ctx-Type int]
        [ctx-Data void*]))
    (define make-music
      (case-lambda
        [(stream frame-Count looping ctx-Type ctx-Data)
         (let ([s (make-ftype-pointer
                    Music
                    (foreign-alloc (ftype-sizeof Music)))])
           (void)
           (ftype-set! Music (frame-Count) s frame-Count)
           (ftype-set! Music (looping) s looping)
           (ftype-set! Music (ctx-Type) s ctx-Type)
           (ftype-set! Music (ctx-Data) s ctx-Data)
           s)]
        [(struct stream frame-Count looping ctx-Type ctx-Data)
         (void)
         (ftype-set! Music (frame-Count) struct frame-Count)
         (ftype-set! Music (looping) struct looping)
         (ftype-set! Music (ctx-Type) struct ctx-Type)
         (ftype-set! Music (ctx-Data) struct ctx-Data)
         struct]))
    (define copy-music
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Music
                     (foreign-alloc (ftype-sizeof Music)))])
          (void)
          (ftype-set!
            Music
            (frame-Count)
            dst
            (ftype-ref Music (frame-Count) src))
          (ftype-set!
            Music
            (looping)
            dst
            (ftype-ref Music (looping) src))
          (ftype-set!
            Music
            (ctx-Type)
            dst
            (ftype-ref Music (ctx-Type) src))
          (ftype-set!
            Music
            (ctx-Data)
            dst
            (ftype-ref Music (ctx-Data) src))
          dst)))
    (define-syntax music-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Music (f ...) s v)]
        [(_ s f v) (ftype-set! Music (f) s v)]))
    (define-syntax music-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Music (f ...) s)]
        [(_ s f) (ftype-ref Music (f) s)]))
    (define-syntax music-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Music (f ...) s)]
        [(_ s f) (ftype-&ref Music (f) s)]))
    (define-ftype Vr-Device-Info
      (struct
        [h-Resolution int]
        [v-Resolution int]
        [h-Screen-Size float]
        [v-Screen-Size float]
        [eye-To-Screen-Distance float]
        [lens-Separation-Distance float]
        [interpupillary-Distance float]
        [lens-Distortion-Values (array 4 float)]
        [chroma-Ab-Correction (array 4 float)]))
    (define make-vr-device-info
      (case-lambda
        [(h-Resolution v-Resolution h-Screen-Size v-Screen-Size
          eye-To-Screen-Distance lens-Separation-Distance
          interpupillary-Distance lens-Distortion-Values
          chroma-Ab-Correction)
         (let ([s (make-ftype-pointer
                    Vr-Device-Info
                    (foreign-alloc (ftype-sizeof Vr-Device-Info)))])
           (ftype-set! Vr-Device-Info (h-Resolution) s h-Resolution)
           (ftype-set! Vr-Device-Info (v-Resolution) s v-Resolution)
           (ftype-set! Vr-Device-Info (h-Screen-Size) s h-Screen-Size)
           (ftype-set! Vr-Device-Info (v-Screen-Size) s v-Screen-Size)
           (ftype-set!
             Vr-Device-Info
             (eye-To-Screen-Distance)
             s
             eye-To-Screen-Distance)
           (ftype-set!
             Vr-Device-Info
             (lens-Separation-Distance)
             s
             lens-Separation-Distance)
           (ftype-set!
             Vr-Device-Info
             (interpupillary-Distance)
             s
             interpupillary-Distance)
           (void)
           (void)
           s)]
        [(struct h-Resolution v-Resolution h-Screen-Size v-Screen-Size
          eye-To-Screen-Distance lens-Separation-Distance
          interpupillary-Distance lens-Distortion-Values
          chroma-Ab-Correction)
         (ftype-set!
           Vr-Device-Info
           (h-Resolution)
           struct
           h-Resolution)
         (ftype-set!
           Vr-Device-Info
           (v-Resolution)
           struct
           v-Resolution)
         (ftype-set!
           Vr-Device-Info
           (h-Screen-Size)
           struct
           h-Screen-Size)
         (ftype-set!
           Vr-Device-Info
           (v-Screen-Size)
           struct
           v-Screen-Size)
         (ftype-set!
           Vr-Device-Info
           (eye-To-Screen-Distance)
           struct
           eye-To-Screen-Distance)
         (ftype-set!
           Vr-Device-Info
           (lens-Separation-Distance)
           struct
           lens-Separation-Distance)
         (ftype-set!
           Vr-Device-Info
           (interpupillary-Distance)
           struct
           interpupillary-Distance)
         (void)
         (void)
         struct]))
    (define copy-vr-device-info
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Vr-Device-Info
                     (foreign-alloc (ftype-sizeof Vr-Device-Info)))])
          (ftype-set!
            Vr-Device-Info
            (h-Resolution)
            dst
            (ftype-ref Vr-Device-Info (h-Resolution) src))
          (ftype-set!
            Vr-Device-Info
            (v-Resolution)
            dst
            (ftype-ref Vr-Device-Info (v-Resolution) src))
          (ftype-set!
            Vr-Device-Info
            (h-Screen-Size)
            dst
            (ftype-ref Vr-Device-Info (h-Screen-Size) src))
          (ftype-set!
            Vr-Device-Info
            (v-Screen-Size)
            dst
            (ftype-ref Vr-Device-Info (v-Screen-Size) src))
          (ftype-set!
            Vr-Device-Info
            (eye-To-Screen-Distance)
            dst
            (ftype-ref Vr-Device-Info (eye-To-Screen-Distance) src))
          (ftype-set!
            Vr-Device-Info
            (lens-Separation-Distance)
            dst
            (ftype-ref Vr-Device-Info (lens-Separation-Distance) src))
          (ftype-set!
            Vr-Device-Info
            (interpupillary-Distance)
            dst
            (ftype-ref Vr-Device-Info (interpupillary-Distance) src))
          (void)
          (void)
          dst)))
    (define-syntax vr-device-info-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Vr-Device-Info (f ...) s v)]
        [(_ s f v) (ftype-set! Vr-Device-Info (f) s v)]))
    (define-syntax vr-device-info-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Vr-Device-Info (f ...) s)]
        [(_ s f) (ftype-ref Vr-Device-Info (f) s)]))
    (define-syntax vr-device-info-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Vr-Device-Info (f ...) s)]
        [(_ s f) (ftype-&ref Vr-Device-Info (f) s)]))
    (define-ftype Vr-Stereo-Config
      (struct
        [projection (array 2 Matrix)]
        [view-Offset (array 2 Matrix)]
        [left-Lens-Center (array 2 float)]
        [right-Lens-Center (array 2 float)]
        [left-Screen-Center (array 2 float)]
        [right-Screen-Center (array 2 float)]
        [scale (array 2 float)]
        [scale-In (array 2 float)]))
    (define make-vr-stereo-config
      (case-lambda
        [(projection view-Offset left-Lens-Center right-Lens-Center
          left-Screen-Center right-Screen-Center scale scale-In)
         (let ([s (make-ftype-pointer
                    Vr-Stereo-Config
                    (foreign-alloc (ftype-sizeof Vr-Stereo-Config)))])
           (void)
           (void)
           (void)
           (void)
           (void)
           (void)
           (void)
           (void)
           s)]
        [(struct projection view-Offset left-Lens-Center
          right-Lens-Center left-Screen-Center right-Screen-Center
          scale scale-In)
         (void)
         (void)
         (void)
         (void)
         (void)
         (void)
         (void)
         (void)
         struct]))
    (define copy-vr-stereo-config
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Vr-Stereo-Config
                     (foreign-alloc (ftype-sizeof Vr-Stereo-Config)))])
          (void)
          (void)
          (void)
          (void)
          (void)
          (void)
          (void)
          (void)
          dst)))
    (define-syntax vr-stereo-config-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Vr-Stereo-Config (f ...) s v)]
        [(_ s f v) (ftype-set! Vr-Stereo-Config (f) s v)]))
    (define-syntax vr-stereo-config-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Vr-Stereo-Config (f ...) s)]
        [(_ s f) (ftype-ref Vr-Stereo-Config (f) s)]))
    (define-syntax vr-stereo-config-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Vr-Stereo-Config (f ...) s)]
        [(_ s f) (ftype-&ref Vr-Stereo-Config (f) s)]))
    (define-ftype File-Path-List
      (struct [count unsigned] [paths void*]))
    (define make-file-path-list
      (case-lambda
        [(count paths)
         (let ([s (make-ftype-pointer
                    File-Path-List
                    (foreign-alloc (ftype-sizeof File-Path-List)))])
           (ftype-set! File-Path-List (count) s count)
           (ftype-set! File-Path-List (paths) s paths)
           s)]
        [(struct count paths)
         (ftype-set! File-Path-List (count) struct count)
         (ftype-set! File-Path-List (paths) struct paths)
         struct]))
    (define copy-file-path-list
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     File-Path-List
                     (foreign-alloc (ftype-sizeof File-Path-List)))])
          (ftype-set!
            File-Path-List
            (count)
            dst
            (ftype-ref File-Path-List (count) src))
          (ftype-set!
            File-Path-List
            (paths)
            dst
            (ftype-ref File-Path-List (paths) src))
          dst)))
    (define-syntax file-path-list-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! File-Path-List (f ...) s v)]
        [(_ s f v) (ftype-set! File-Path-List (f) s v)]))
    (define-syntax file-path-list-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref File-Path-List (f ...) s)]
        [(_ s f) (ftype-ref File-Path-List (f) s)]))
    (define-syntax file-path-list-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref File-Path-List (f ...) s)]
        [(_ s f) (ftype-&ref File-Path-List (f) s)]))
    (define-ftype Automation-Event
      (struct
        [frame unsigned]
        [type unsigned]
        [params (array 4 int)]))
    (define make-automation-event
      (case-lambda
        [(frame type params)
         (let ([s (make-ftype-pointer
                    Automation-Event
                    (foreign-alloc (ftype-sizeof Automation-Event)))])
           (ftype-set! Automation-Event (frame) s frame)
           (ftype-set! Automation-Event (type) s type)
           (void)
           s)]
        [(struct frame type params)
         (ftype-set! Automation-Event (frame) struct frame)
         (ftype-set! Automation-Event (type) struct type)
         (void)
         struct]))
    (define copy-automation-event
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Automation-Event
                     (foreign-alloc (ftype-sizeof Automation-Event)))])
          (ftype-set!
            Automation-Event
            (frame)
            dst
            (ftype-ref Automation-Event (frame) src))
          (ftype-set!
            Automation-Event
            (type)
            dst
            (ftype-ref Automation-Event (type) src))
          (void)
          dst)))
    (define-syntax automation-event-set!
      (syntax-rules ()
        [(_ s (f ...) v) (ftype-set! Automation-Event (f ...) s v)]
        [(_ s f v) (ftype-set! Automation-Event (f) s v)]))
    (define-syntax automation-event-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Automation-Event (f ...) s)]
        [(_ s f) (ftype-ref Automation-Event (f) s)]))
    (define-syntax automation-event-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Automation-Event (f ...) s)]
        [(_ s f) (ftype-&ref Automation-Event (f) s)]))
    (define-ftype Automation-Event-List
      (struct
        [capacity unsigned]
        [count unsigned]
        [events (* Automation-Event)]))
    (define make-automation-event-list
      (case-lambda
        [(capacity count events)
         (let ([s (make-ftype-pointer
                    Automation-Event-List
                    (foreign-alloc (ftype-sizeof Automation-Event-List)))])
           (ftype-set! Automation-Event-List (capacity) s capacity)
           (ftype-set! Automation-Event-List (count) s count)
           (void)
           s)]
        [(struct capacity count events)
         (ftype-set!
           Automation-Event-List
           (capacity)
           struct
           capacity)
         (ftype-set! Automation-Event-List (count) struct count)
         (void)
         struct]))
    (define copy-automation-event-list
      (lambda (src)
        (let ([dst (make-ftype-pointer
                     Automation-Event-List
                     (foreign-alloc
                       (ftype-sizeof Automation-Event-List)))])
          (ftype-set!
            Automation-Event-List
            (capacity)
            dst
            (ftype-ref Automation-Event-List (capacity) src))
          (ftype-set!
            Automation-Event-List
            (count)
            dst
            (ftype-ref Automation-Event-List (count) src))
          (void)
          dst)))
    (define-syntax automation-event-list-set!
      (syntax-rules ()
        [(_ s (f ...) v)
         (ftype-set! Automation-Event-List (f ...) s v)]
        [(_ s f v) (ftype-set! Automation-Event-List (f) s v)]))
    (define-syntax automation-event-list-get
      (syntax-rules ()
        [(_ s (f ...)) (ftype-ref Automation-Event-List (f ...) s)]
        [(_ s f) (ftype-ref Automation-Event-List (f) s)]))
    (define-syntax automation-event-list-ref&
      (syntax-rules ()
        [(_ s (f ...)) (ftype-&ref Automation-Event-List (f ...) s)]
        [(_ s f) (ftype-&ref Automation-Event-List (f) s)]))
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
    (define FLAG_BORDERLESS_WINDOWED_MODE 32768)
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
    (define KEY_MENU 5)
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
    (define SHADER_LOC_VERTEX_BONEIDS 26)
    (define SHADER_LOC_VERTEX_BONEWEIGHTS 27)
    (define SHADER_LOC_MATRIX_BONETRANSFORMS 28)
    (define SHADER_LOC_VERTEX_INSTANCETRANSFORM 29)
    (define SHADER_UNIFORM_FLOAT 0)
    (define SHADER_UNIFORM_VEC2 1)
    (define SHADER_UNIFORM_VEC3 2)
    (define SHADER_UNIFORM_VEC4 3)
    (define SHADER_UNIFORM_INT 4)
    (define SHADER_UNIFORM_IVEC2 5)
    (define SHADER_UNIFORM_IVEC3 6)
    (define SHADER_UNIFORM_IVEC4 7)
    (define SHADER_UNIFORM_UINT 8)
    (define SHADER_UNIFORM_UIVEC2 9)
    (define SHADER_UNIFORM_UIVEC3 10)
    (define SHADER_UNIFORM_UIVEC4 11)
    (define SHADER_UNIFORM_SAMPLER2D 12)
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
    (define PIXELFORMAT_UNCOMPRESSED_R16 11)
    (define PIXELFORMAT_UNCOMPRESSED_R16G16B16 12)
    (define PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 13)
    (define PIXELFORMAT_COMPRESSED_DXT1_RGB 14)
    (define PIXELFORMAT_COMPRESSED_DXT1_RGBA 15)
    (define PIXELFORMAT_COMPRESSED_DXT3_RGBA 16)
    (define PIXELFORMAT_COMPRESSED_DXT5_RGBA 17)
    (define PIXELFORMAT_COMPRESSED_ETC1_RGB 18)
    (define PIXELFORMAT_COMPRESSED_ETC2_RGB 19)
    (define PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA 20)
    (define PIXELFORMAT_COMPRESSED_PVRT_RGB 21)
    (define PIXELFORMAT_COMPRESSED_PVRT_RGBA 22)
    (define PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA 23)
    (define PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA 24)
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
    (define (MakeTrace-Log-Callback p)
      (let ([code (foreign-callable p (int string void*) void)])
        (lock-object code)
        (foreign-callable-entry-point code)))
    (define (MakeLoad-File-Data-Callback p)
      (let ([code (foreign-callable
                    p
                    (string (* int))
                    (* unsigned-8))])
        (lock-object code)
        (foreign-callable-entry-point code)))
    (define (MakeSave-File-Data-Callback p)
      (let ([code (foreign-callable
                    p
                    (string void* int)
                    unsigned-8)])
        (lock-object code)
        (foreign-callable-entry-point code)))
    (define (MakeLoad-File-Text-Callback p)
      (let ([code (foreign-callable p (string) string)])
        (lock-object code)
        (foreign-callable-entry-point code)))
    (define (MakeSave-File-Text-Callback p)
      (let ([code (foreign-callable
                    p
                    (string string)
                    unsigned-8)])
        (lock-object code)
        (foreign-callable-entry-point code)))
    (define (MakeAudio-Callback p)
      (let ([code (foreign-callable p (void* unsigned) void)])
        (lock-object code)
        (foreign-callable-entry-point code)))
    (define init-window
      (let ([f #f])
        (lambda (width height title)
          (unless f
            (set! f
              (foreign-procedure "InitWindow" (int int string) void)))
          (f width height title))))
    (define close-window
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "CloseWindow" () void)))
          (f))))
    (define window-should-close
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "WindowShouldClose" () unsigned-8)))
          (not (= (f) 0)))))
    (define is-window-ready
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "IsWindowReady" () unsigned-8)))
          (not (= (f) 0)))))
    (define is-window-fullscreen
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "IsWindowFullscreen" () unsigned-8)))
          (not (= (f) 0)))))
    (define is-window-hidden
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "IsWindowHidden" () unsigned-8)))
          (not (= (f) 0)))))
    (define is-window-minimized
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "IsWindowMinimized" () unsigned-8)))
          (not (= (f) 0)))))
    (define is-window-maximized
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "IsWindowMaximized" () unsigned-8)))
          (not (= (f) 0)))))
    (define is-window-focused
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "IsWindowFocused" () unsigned-8)))
          (not (= (f) 0)))))
    (define is-window-resized
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "IsWindowResized" () unsigned-8)))
          (not (= (f) 0)))))
    (define is-window-state
      (let ([f #f])
        (lambda (flag)
          (unless f
            (set! f
              (foreign-procedure "IsWindowState" (unsigned) unsigned-8)))
          (not (= (f flag) 0)))))
    (define set-window-state
      (let ([f #f])
        (lambda (flags)
          (unless f
            (set! f
              (foreign-procedure "SetWindowState" (unsigned) void)))
          (f flags))))
    (define clear-window-state
      (let ([f #f])
        (lambda (flags)
          (unless f
            (set! f
              (foreign-procedure "ClearWindowState" (unsigned) void)))
          (f flags))))
    (define toggle-fullscreen
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "ToggleFullscreen" () void)))
          (f))))
    (define toggle-borderless-windowed
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "ToggleBorderlessWindowed" () void)))
          (f))))
    (define maximize-window
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "MaximizeWindow" () void)))
          (f))))
    (define minimize-window
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "MinimizeWindow" () void)))
          (f))))
    (define restore-window
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "RestoreWindow" () void)))
          (f))))
    (define set-window-icon
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "SetWindowIcon" ((& Image)) void)))
          (f image))))
    (define set-window-icons
      (let ([f #f])
        (lambda (images count)
          (unless f
            (set! f
              (foreign-procedure "SetWindowIcons" ((* Image) int) void)))
          (f images count))))
    (define set-window-title
      (let ([f #f])
        (lambda (title)
          (unless f
            (set! f (foreign-procedure "SetWindowTitle" (string) void)))
          (f title))))
    (define set-window-position
      (let ([f #f])
        (lambda (x y)
          (unless f
            (set! f
              (foreign-procedure "SetWindowPosition" (int int) void)))
          (f x y))))
    (define set-window-monitor
      (let ([f #f])
        (lambda (monitor)
          (unless f
            (set! f (foreign-procedure "SetWindowMonitor" (int) void)))
          (f monitor))))
    (define set-window-min-size
      (let ([f #f])
        (lambda (width height)
          (unless f
            (set! f
              (foreign-procedure "SetWindowMinSize" (int int) void)))
          (f width height))))
    (define set-window-max-size
      (let ([f #f])
        (lambda (width height)
          (unless f
            (set! f
              (foreign-procedure "SetWindowMaxSize" (int int) void)))
          (f width height))))
    (define set-window-size
      (let ([f #f])
        (lambda (width height)
          (unless f
            (set! f (foreign-procedure "SetWindowSize" (int int) void)))
          (f width height))))
    (define set-window-opacity
      (let ([f #f])
        (lambda (opacity)
          (unless f
            (set! f
              (foreign-procedure "SetWindowOpacity" (float) void)))
          (f opacity))))
    (define set-window-focused
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "SetWindowFocused" () void)))
          (f))))
    (define get-window-handle
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetWindowHandle" () void*)))
          (f))))
    (define get-screen-width
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetScreenWidth" () int)))
          (f))))
    (define get-screen-height
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetScreenHeight" () int)))
          (f))))
    (define get-render-width
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetRenderWidth" () int)))
          (f))))
    (define get-render-height
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetRenderHeight" () int)))
          (f))))
    (define get-monitor-count
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetMonitorCount" () int)))
          (f))))
    (define get-current-monitor
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetCurrentMonitor" () int)))
          (f))))
    (define get-monitor-position
      (let ([f #f])
        (lambda (monitor)
          (unless f
            (set! f
              (foreign-procedure "GetMonitorPosition"
                (int)
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst monitor)
            dst))))
    (define get-monitor-width
      (let ([f #f])
        (lambda (monitor)
          (unless f
            (set! f (foreign-procedure "GetMonitorWidth" (int) int)))
          (f monitor))))
    (define get-monitor-height
      (let ([f #f])
        (lambda (monitor)
          (unless f
            (set! f (foreign-procedure "GetMonitorHeight" (int) int)))
          (f monitor))))
    (define get-monitor-physical-width
      (let ([f #f])
        (lambda (monitor)
          (unless f
            (set! f
              (foreign-procedure "GetMonitorPhysicalWidth" (int) int)))
          (f monitor))))
    (define get-monitor-physical-height
      (let ([f #f])
        (lambda (monitor)
          (unless f
            (set! f
              (foreign-procedure "GetMonitorPhysicalHeight" (int) int)))
          (f monitor))))
    (define get-monitor-refresh-rate
      (let ([f #f])
        (lambda (monitor)
          (unless f
            (set! f
              (foreign-procedure "GetMonitorRefreshRate" (int) int)))
          (f monitor))))
    (define get-window-position
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetWindowPosition" () (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst)
            dst))))
    (define get-window-scale-dpi
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetWindowScaleDPI" () (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst)
            dst))))
    (define get-monitor-name
      (let ([f #f])
        (lambda (monitor)
          (unless f
            (set! f (foreign-procedure "GetMonitorName" (int) string)))
          (f monitor))))
    (define set-clipboard-text
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f
              (foreign-procedure "SetClipboardText" (string) void)))
          (f text))))
    (define get-clipboard-text
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetClipboardText" () string)))
          (f))))
    (define get-clipboard-image
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetClipboardImage" () (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst)
            dst))))
    (define enable-event-waiting
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "EnableEventWaiting" () void)))
          (f))))
    (define disable-event-waiting
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "DisableEventWaiting" () void)))
          (f))))
    (define show-cursor
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "ShowCursor" () void)))
          (f))))
    (define hide-cursor
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "HideCursor" () void)))
          (f))))
    (define is-cursor-hidden
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "IsCursorHidden" () unsigned-8)))
          (not (= (f) 0)))))
    (define enable-cursor
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "EnableCursor" () void)))
          (f))))
    (define disable-cursor
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "DisableCursor" () void)))
          (f))))
    (define is-cursor-on-screen
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "IsCursorOnScreen" () unsigned-8)))
          (not (= (f) 0)))))
    (define clear-background
      (let ([f #f])
        (lambda (color)
          (unless f
            (set! f
              (foreign-procedure "ClearBackground" ((& Color)) void)))
          (f color))))
    (define begin-drawing
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "BeginDrawing" () void)))
          (f))))
    (define end-drawing
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "EndDrawing" () void)))
          (f))))
    (define begin-mode-2d
      (let ([f #f])
        (lambda (camera)
          (unless f
            (set! f
              (foreign-procedure "BeginMode2D" ((& Camera-2D)) void)))
          (f camera))))
    (define end-mode-2d
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "EndMode2D" () void)))
          (f))))
    (define begin-mode-3d
      (let ([f #f])
        (lambda (camera)
          (unless f
            (set! f
              (foreign-procedure "BeginMode3D" ((& Camera-3D)) void)))
          (f camera))))
    (define end-mode-3d
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "EndMode3D" () void)))
          (f))))
    (define begin-texture-mode
      (let ([f #f])
        (lambda (target)
          (unless f
            (set! f
              (foreign-procedure "BeginTextureMode"
                ((& Render-Texture))
                void)))
          (f target))))
    (define end-texture-mode
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "EndTextureMode" () void)))
          (f))))
    (define begin-shader-mode
      (let ([f #f])
        (lambda (shader)
          (unless f
            (set! f
              (foreign-procedure "BeginShaderMode" ((& Shader)) void)))
          (f shader))))
    (define end-shader-mode
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "EndShaderMode" () void)))
          (f))))
    (define begin-blend-mode
      (let ([f #f])
        (lambda (mode)
          (unless f
            (set! f (foreign-procedure "BeginBlendMode" (int) void)))
          (f mode))))
    (define end-blend-mode
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "EndBlendMode" () void)))
          (f))))
    (define begin-scissor-mode
      (let ([f #f])
        (lambda (x y width height)
          (unless f
            (set! f
              (foreign-procedure "BeginScissorMode"
                (int int int int)
                void)))
          (f x y width height))))
    (define end-scissor-mode
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "EndScissorMode" () void)))
          (f))))
    (define begin-vr-stereo-mode
      (let ([f #f])
        (lambda (config)
          (unless f
            (set! f
              (foreign-procedure "BeginVrStereoMode"
                ((& Vr-Stereo-Config))
                void)))
          (f config))))
    (define end-vr-stereo-mode
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "EndVrStereoMode" () void)))
          (f))))
    (define load-vr-stereo-config
      (let ([f #f])
        (lambda (device)
          (unless f
            (set! f
              (foreign-procedure "LoadVrStereoConfig"
                ((& Vr-Device-Info))
                (& Vr-Stereo-Config))))
          (let ([dst (make-ftype-pointer
                       Vr-Stereo-Config
                       (foreign-alloc (ftype-sizeof Vr-Stereo-Config)))])
            (f dst device)
            dst))))
    (define unload-vr-stereo-config
      (let ([f #f])
        (lambda (config)
          (unless f
            (set! f
              (foreign-procedure "UnloadVrStereoConfig"
                ((& Vr-Stereo-Config))
                void)))
          (f config))))
    (define load-shader
      (let ([f #f])
        (lambda (vs-file-name fs-file-name)
          (unless f
            (set! f
              (foreign-procedure "LoadShader"
                (string string)
                (& Shader))))
          (let ([dst (make-ftype-pointer
                       Shader
                       (foreign-alloc (ftype-sizeof Shader)))])
            (f dst vs-file-name fs-file-name)
            dst))))
    (define load-shader-from-memory
      (let ([f #f])
        (lambda (vs-code fs-code)
          (unless f
            (set! f
              (foreign-procedure "LoadShaderFromMemory"
                (string string)
                (& Shader))))
          (let ([dst (make-ftype-pointer
                       Shader
                       (foreign-alloc (ftype-sizeof Shader)))])
            (f dst vs-code fs-code)
            dst))))
    (define is-shader-valid
      (let ([f #f])
        (lambda (shader)
          (unless f
            (set! f
              (foreign-procedure "IsShaderValid"
                ((& Shader))
                unsigned-8)))
          (not (= (f shader) 0)))))
    (define get-shader-location
      (let ([f #f])
        (lambda (shader uniform-name)
          (unless f
            (set! f
              (foreign-procedure "GetShaderLocation"
                ((& Shader) string)
                int)))
          (f shader uniform-name))))
    (define get-shader-location-attrib
      (let ([f #f])
        (lambda (shader attrib-name)
          (unless f
            (set! f
              (foreign-procedure "GetShaderLocationAttrib"
                ((& Shader) string)
                int)))
          (f shader attrib-name))))
    (define set-shader-value
      (let ([f #f])
        (lambda (shader loc-index value uniform-type)
          (unless f
            (set! f
              (foreign-procedure "SetShaderValue"
                ((& Shader) int void* int)
                void)))
          (f shader loc-index value uniform-type))))
    (define set-shader-value-v
      (let ([f #f])
        (lambda (shader loc-index value uniform-type count)
          (unless f
            (set! f
              (foreign-procedure "SetShaderValueV"
                ((& Shader) int void* int int)
                void)))
          (f shader loc-index value uniform-type count))))
    (define set-shader-value-matrix
      (let ([f #f])
        (lambda (shader loc-index mat)
          (unless f
            (set! f
              (foreign-procedure "SetShaderValueMatrix"
                ((& Shader) int (& Matrix))
                void)))
          (f shader loc-index mat))))
    (define set-shader-value-texture
      (let ([f #f])
        (lambda (shader loc-index texture)
          (unless f
            (set! f
              (foreign-procedure "SetShaderValueTexture"
                ((& Shader) int (& Texture))
                void)))
          (f shader loc-index texture))))
    (define unload-shader
      (let ([f #f])
        (lambda (shader)
          (unless f
            (set! f
              (foreign-procedure "UnloadShader" ((& Shader)) void)))
          (f shader))))
    (define get-screen-to-world-ray
      (let ([f #f])
        (lambda (position camera)
          (unless f
            (set! f
              (foreign-procedure "GetScreenToWorldRay"
                ((& Vector-2) (& Camera-3D))
                (& Ray))))
          (let ([dst (make-ftype-pointer
                       Ray
                       (foreign-alloc (ftype-sizeof Ray)))])
            (f dst position camera)
            dst))))
    (define get-screen-to-world-ray-ex
      (let ([f #f])
        (lambda (position camera width height)
          (unless f
            (set! f
              (foreign-procedure "GetScreenToWorldRayEx"
                ((& Vector-2) (& Camera-3D) int int)
                (& Ray))))
          (let ([dst (make-ftype-pointer
                       Ray
                       (foreign-alloc (ftype-sizeof Ray)))])
            (f dst position camera width height)
            dst))))
    (define get-world-to-screen
      (let ([f #f])
        (lambda (position camera)
          (unless f
            (set! f
              (foreign-procedure "GetWorldToScreen"
                ((& Vector-3) (& Camera-3D))
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst position camera)
            dst))))
    (define get-world-to-screen-ex
      (let ([f #f])
        (lambda (position camera width height)
          (unless f
            (set! f
              (foreign-procedure "GetWorldToScreenEx"
                ((& Vector-3) (& Camera-3D) int int)
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst position camera width height)
            dst))))
    (define get-world-to-screen-2d
      (let ([f #f])
        (lambda (position camera)
          (unless f
            (set! f
              (foreign-procedure "GetWorldToScreen2D"
                ((& Vector-2) (& Camera-2D))
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst position camera)
            dst))))
    (define get-screen-to-world-2d
      (let ([f #f])
        (lambda (position camera)
          (unless f
            (set! f
              (foreign-procedure "GetScreenToWorld2D"
                ((& Vector-2) (& Camera-2D))
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst position camera)
            dst))))
    (define get-camera-matrix
      (let ([f #f])
        (lambda (camera)
          (unless f
            (set! f
              (foreign-procedure "GetCameraMatrix"
                ((& Camera-3D))
                (& Matrix))))
          (let ([dst (make-ftype-pointer
                       Matrix
                       (foreign-alloc (ftype-sizeof Matrix)))])
            (f dst camera)
            dst))))
    (define get-camera-matrix-2d
      (let ([f #f])
        (lambda (camera)
          (unless f
            (set! f
              (foreign-procedure "GetCameraMatrix2D"
                ((& Camera-2D))
                (& Matrix))))
          (let ([dst (make-ftype-pointer
                       Matrix
                       (foreign-alloc (ftype-sizeof Matrix)))])
            (f dst camera)
            dst))))
    (define set-target-fps
      (let ([f #f])
        (lambda (fps)
          (unless f
            (set! f (foreign-procedure "SetTargetFPS" (int) void)))
          (f fps))))
    (define get-frame-time
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetFrameTime" () float)))
          (f))))
    (define get-time
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "GetTime" () double)))
          (f))))
    (define get-fps
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "GetFPS" () int)))
          (f))))
    (define swap-screen-buffer
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "SwapScreenBuffer" () void)))
          (f))))
    (define poll-input-events
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "PollInputEvents" () void)))
          (f))))
    (define wait-time
      (let ([f #f])
        (lambda (seconds)
          (unless f
            (set! f (foreign-procedure "WaitTime" (double) void)))
          (f seconds))))
    (define set-random-seed
      (let ([f #f])
        (lambda (seed)
          (unless f
            (set! f
              (foreign-procedure "SetRandomSeed" (unsigned) void)))
          (f seed))))
    (define get-random-value
      (let ([f #f])
        (lambda (min max)
          (unless f
            (set! f (foreign-procedure "GetRandomValue" (int int) int)))
          (f min max))))
    (define load-random-sequence
      (let ([f #f])
        (lambda (count min max)
          (unless f
            (set! f
              (foreign-procedure "LoadRandomSequence"
                (unsigned int int)
                (* int))))
          (f count min max))))
    (define unload-random-sequence
      (let ([f #f])
        (lambda (sequence)
          (unless f
            (set! f
              (foreign-procedure "UnloadRandomSequence" ((* int)) void)))
          (f sequence))))
    (define take-screenshot
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f (foreign-procedure "TakeScreenshot" (string) void)))
          (f file-name))))
    (define set-config-flags
      (let ([f #f])
        (lambda (flags)
          (unless f
            (set! f
              (foreign-procedure "SetConfigFlags" (unsigned) void)))
          (f flags))))
    (define open-url
      (let ([f #f])
        (lambda (url)
          (unless f
            (set! f (foreign-procedure "OpenURL" (string) void)))
          (f url))))
    (define set-trace-log-level
      (let ([f #f])
        (lambda (log-level)
          (unless f
            (set! f (foreign-procedure "SetTraceLogLevel" (int) void)))
          (f log-level))))
    (define set-trace-log-callback
      (let ([f #f])
        (lambda (callback)
          (unless f
            (set! f
              (foreign-procedure "SetTraceLogCallback" (void*) void)))
          (f callback))))
    (define mem-alloc
      (let ([f #f])
        (lambda (size)
          (unless f
            (set! f (foreign-procedure "MemAlloc" (unsigned) void*)))
          (f size))))
    (define mem-realloc
      (let ([f #f])
        (lambda (ptr size)
          (unless f
            (set! f
              (foreign-procedure "MemRealloc" (void* unsigned) void*)))
          (f ptr size))))
    (define mem-free
      (let ([f #f])
        (lambda (ptr)
          (unless f
            (set! f (foreign-procedure "MemFree" (void*) void)))
          (f ptr))))
    (define load-file-data
      (let ([f #f])
        (lambda (file-name data-size)
          (unless f
            (set! f
              (foreign-procedure "LoadFileData"
                (string (* int))
                (* unsigned-8))))
          (f file-name data-size))))
    (define unload-file-data
      (let ([f #f])
        (lambda (data)
          (unless f
            (set! f
              (foreign-procedure "UnloadFileData" ((* unsigned-8)) void)))
          (f data))))
    (define save-file-data
      (let ([f #f])
        (lambda (file-name data data-size)
          (unless f
            (set! f
              (foreign-procedure "SaveFileData"
                (string void* int)
                unsigned-8)))
          (not (= (f file-name data data-size) 0)))))
    (define export-data-as-code
      (let ([f #f])
        (lambda (data data-size file-name)
          (unless f
            (set! f
              (foreign-procedure "ExportDataAsCode"
                ((* unsigned-8) int string)
                unsigned-8)))
          (not (= (f data data-size file-name) 0)))))
    (define load-file-text
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f (foreign-procedure "LoadFileText" (string) string)))
          (f file-name))))
    (define unload-file-text
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f (foreign-procedure "UnloadFileText" (string) void)))
          (f text))))
    (define save-file-text
      (let ([f #f])
        (lambda (file-name text)
          (unless f
            (set! f
              (foreign-procedure "SaveFileText"
                (string string)
                unsigned-8)))
          (not (= (f file-name text) 0)))))
    (define set-load-file-data-callback
      (let ([f #f])
        (lambda (callback)
          (unless f
            (set! f
              (foreign-procedure "SetLoadFileDataCallback" (void*) void)))
          (f callback))))
    (define set-save-file-data-callback
      (let ([f #f])
        (lambda (callback)
          (unless f
            (set! f
              (foreign-procedure "SetSaveFileDataCallback" (void*) void)))
          (f callback))))
    (define set-load-file-text-callback
      (let ([f #f])
        (lambda (callback)
          (unless f
            (set! f
              (foreign-procedure "SetLoadFileTextCallback" (void*) void)))
          (f callback))))
    (define set-save-file-text-callback
      (let ([f #f])
        (lambda (callback)
          (unless f
            (set! f
              (foreign-procedure "SetSaveFileTextCallback" (void*) void)))
          (f callback))))
    (define file-rename
      (let ([f #f])
        (lambda (file-name file-rename)
          (unless f
            (set! f
              (foreign-procedure "FileRename" (string string) int)))
          (f file-name file-rename))))
    (define file-remove
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f (foreign-procedure "FileRemove" (string) int)))
          (f file-name))))
    (define file-copy
      (let ([f #f])
        (lambda (src-path dst-path)
          (unless f
            (set! f (foreign-procedure "FileCopy" (string string) int)))
          (f src-path dst-path))))
    (define file-move
      (let ([f #f])
        (lambda (src-path dst-path)
          (unless f
            (set! f (foreign-procedure "FileMove" (string string) int)))
          (f src-path dst-path))))
    (define file-text-replace
      (let ([f #f])
        (lambda (file-name search replacement)
          (unless f
            (set! f
              (foreign-procedure "FileTextReplace"
                (string string string)
                int)))
          (f file-name search replacement))))
    (define file-text-find-index
      (let ([f #f])
        (lambda (file-name search)
          (unless f
            (set! f
              (foreign-procedure "FileTextFindIndex"
                (string string)
                int)))
          (f file-name search))))
    (define file-exists
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f
              (foreign-procedure "FileExists" (string) unsigned-8)))
          (not (= (f file-name) 0)))))
    (define directory-exists
      (let ([f #f])
        (lambda (dir-path)
          (unless f
            (set! f
              (foreign-procedure "DirectoryExists" (string) unsigned-8)))
          (not (= (f dir-path) 0)))))
    (define is-file-extension
      (let ([f #f])
        (lambda (file-name ext)
          (unless f
            (set! f
              (foreign-procedure "IsFileExtension"
                (string string)
                unsigned-8)))
          (not (= (f file-name ext) 0)))))
    (define get-file-length
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f (foreign-procedure "GetFileLength" (string) int)))
          (f file-name))))
    (define get-file-mod-time
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f (foreign-procedure "GetFileModTime" (string) long)))
          (f file-name))))
    (define get-file-extension
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f
              (foreign-procedure "GetFileExtension" (string) string)))
          (f file-name))))
    (define get-file-name
      (let ([f #f])
        (lambda (file-path)
          (unless f
            (set! f (foreign-procedure "GetFileName" (string) string)))
          (f file-path))))
    (define get-file-name-without-ext
      (let ([f #f])
        (lambda (file-path)
          (unless f
            (set! f
              (foreign-procedure "GetFileNameWithoutExt"
                (string)
                string)))
          (f file-path))))
    (define get-directory-path
      (let ([f #f])
        (lambda (file-path)
          (unless f
            (set! f
              (foreign-procedure "GetDirectoryPath" (string) string)))
          (f file-path))))
    (define get-prev-directory-path
      (let ([f #f])
        (lambda (dir-path)
          (unless f
            (set! f
              (foreign-procedure "GetPrevDirectoryPath" (string) string)))
          (f dir-path))))
    (define get-working-directory
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetWorkingDirectory" () string)))
          (f))))
    (define get-application-directory
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetApplicationDirectory" () string)))
          (f))))
    (define make-directory
      (let ([f #f])
        (lambda (dir-path)
          (unless f
            (set! f (foreign-procedure "MakeDirectory" (string) int)))
          (f dir-path))))
    (define change-directory
      (let ([f #f])
        (lambda (dir-path)
          (unless f
            (set! f (foreign-procedure "ChangeDirectory" (string) int)))
          (f dir-path))))
    (define is-path-file
      (let ([f #f])
        (lambda (path)
          (unless f
            (set! f
              (foreign-procedure "IsPathFile" (string) unsigned-8)))
          (not (= (f path) 0)))))
    (define is-path-directory
      (let ([f #f])
        (lambda (path)
          (unless f
            (set! f
              (foreign-procedure "IsPathDirectory" (string) unsigned-8)))
          (not (= (f path) 0)))))
    (define is-file-name-valid
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f
              (foreign-procedure "IsFileNameValid" (string) unsigned-8)))
          (not (= (f file-name) 0)))))
    (define load-directory-files
      (let ([f #f])
        (lambda (dir-path)
          (unless f
            (set! f
              (foreign-procedure "LoadDirectoryFiles"
                (string)
                (& File-Path-List))))
          (let ([dst (make-ftype-pointer
                       File-Path-List
                       (foreign-alloc (ftype-sizeof File-Path-List)))])
            (f dst dir-path)
            dst))))
    (define load-directory-files-ex
      (let ([f #f])
        (lambda (base-path filter scan-subdirs)
          (unless f
            (set! f
              (foreign-procedure "LoadDirectoryFilesEx"
                (string string unsigned-8)
                (& File-Path-List))))
          (let ([dst (make-ftype-pointer
                       File-Path-List
                       (foreign-alloc (ftype-sizeof File-Path-List)))])
            (f dst base-path filter scan-subdirs)
            dst))))
    (define unload-directory-files
      (let ([f #f])
        (lambda (files)
          (unless f
            (set! f
              (foreign-procedure "UnloadDirectoryFiles"
                ((& File-Path-List))
                void)))
          (f files))))
    (define is-file-dropped
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "IsFileDropped" () unsigned-8)))
          (not (= (f) 0)))))
    (define load-dropped-files
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "LoadDroppedFiles"
                ()
                (& File-Path-List))))
          (let ([dst (make-ftype-pointer
                       File-Path-List
                       (foreign-alloc (ftype-sizeof File-Path-List)))])
            (f dst)
            dst))))
    (define unload-dropped-files
      (let ([f #f])
        (lambda (files)
          (unless f
            (set! f
              (foreign-procedure "UnloadDroppedFiles"
                ((& File-Path-List))
                void)))
          (f files))))
    (define get-directory-file-count
      (let ([f #f])
        (lambda (dir-path)
          (unless f
            (set! f
              (foreign-procedure "GetDirectoryFileCount"
                (string)
                unsigned)))
          (f dir-path))))
    (define get-directory-file-count-ex
      (let ([f #f])
        (lambda (base-path filter scan-subdirs)
          (unless f
            (set! f
              (foreign-procedure "GetDirectoryFileCountEx"
                (string string unsigned-8)
                unsigned)))
          (f base-path filter scan-subdirs))))
    (define compress-data
      (let ([f #f])
        (lambda (data data-size comp-data-size)
          (unless f
            (set! f
              (foreign-procedure "CompressData"
                ((* unsigned-8) int (* int))
                (* unsigned-8))))
          (f data data-size comp-data-size))))
    (define decompress-data
      (let ([f #f])
        (lambda (comp-data comp-data-size data-size)
          (unless f
            (set! f
              (foreign-procedure "DecompressData"
                ((* unsigned-8) int (* int))
                (* unsigned-8))))
          (f comp-data comp-data-size data-size))))
    (define encode-data-base-64
      (let ([f #f])
        (lambda (data data-size output-size)
          (unless f
            (set! f
              (foreign-procedure "EncodeDataBase64"
                ((* unsigned-8) int (* int))
                string)))
          (f data data-size output-size))))
    (define decode-data-base-64
      (let ([f #f])
        (lambda (text output-size)
          (unless f
            (set! f
              (foreign-procedure "DecodeDataBase64"
                (string (* int))
                (* unsigned-8))))
          (f text output-size))))
    (define compute-crc-32
      (let ([f #f])
        (lambda (data data-size)
          (unless f
            (set! f
              (foreign-procedure "ComputeCRC32"
                ((* unsigned-8) int)
                unsigned)))
          (f data data-size))))
    (define compute-md-5
      (let ([f #f])
        (lambda (data data-size)
          (unless f
            (set! f
              (foreign-procedure "ComputeMD5"
                ((* unsigned-8) int)
                (* unsigned))))
          (f data data-size))))
    (define compute-sha-1
      (let ([f #f])
        (lambda (data data-size)
          (unless f
            (set! f
              (foreign-procedure "ComputeSHA1"
                ((* unsigned-8) int)
                (* unsigned))))
          (f data data-size))))
    (define compute-sha-256
      (let ([f #f])
        (lambda (data data-size)
          (unless f
            (set! f
              (foreign-procedure "ComputeSHA256"
                ((* unsigned-8) int)
                (* unsigned))))
          (f data data-size))))
    (define load-automation-event-list
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f
              (foreign-procedure "LoadAutomationEventList"
                (string)
                (& Automation-Event-List))))
          (let ([dst (make-ftype-pointer
                       Automation-Event-List
                       (foreign-alloc
                         (ftype-sizeof Automation-Event-List)))])
            (f dst file-name)
            dst))))
    (define unload-automation-event-list
      (let ([f #f])
        (lambda (list)
          (unless f
            (set! f
              (foreign-procedure "UnloadAutomationEventList"
                ((& Automation-Event-List))
                void)))
          (f list))))
    (define export-automation-event-list
      (let ([f #f])
        (lambda (list file-name)
          (unless f
            (set! f
              (foreign-procedure "ExportAutomationEventList"
                ((& Automation-Event-List) string)
                unsigned-8)))
          (not (= (f list file-name) 0)))))
    (define set-automation-event-list
      (let ([f #f])
        (lambda (list)
          (unless f
            (set! f
              (foreign-procedure "SetAutomationEventList"
                ((* Automation-Event-List))
                void)))
          (f list))))
    (define set-automation-event-base-frame
      (let ([f #f])
        (lambda (frame)
          (unless f
            (set! f
              (foreign-procedure "SetAutomationEventBaseFrame"
                (int)
                void)))
          (f frame))))
    (define start-automation-event-recording
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "StartAutomationEventRecording"
                ()
                void)))
          (f))))
    (define stop-automation-event-recording
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "StopAutomationEventRecording" () void)))
          (f))))
    (define play-automation-event
      (let ([f #f])
        (lambda (event)
          (unless f
            (set! f
              (foreign-procedure "PlayAutomationEvent"
                ((& Automation-Event))
                void)))
          (f event))))
    (define is-key-pressed
      (let ([f #f])
        (lambda (key)
          (unless f
            (set! f
              (foreign-procedure "IsKeyPressed" (int) unsigned-8)))
          (not (= (f key) 0)))))
    (define is-key-pressed-repeat
      (let ([f #f])
        (lambda (key)
          (unless f
            (set! f
              (foreign-procedure "IsKeyPressedRepeat" (int) unsigned-8)))
          (not (= (f key) 0)))))
    (define is-key-down
      (let ([f #f])
        (lambda (key)
          (unless f
            (set! f (foreign-procedure "IsKeyDown" (int) unsigned-8)))
          (not (= (f key) 0)))))
    (define is-key-released
      (let ([f #f])
        (lambda (key)
          (unless f
            (set! f
              (foreign-procedure "IsKeyReleased" (int) unsigned-8)))
          (not (= (f key) 0)))))
    (define is-key-up
      (let ([f #f])
        (lambda (key)
          (unless f
            (set! f (foreign-procedure "IsKeyUp" (int) unsigned-8)))
          (not (= (f key) 0)))))
    (define get-key-pressed
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetKeyPressed" () int)))
          (f))))
    (define get-char-pressed
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetCharPressed" () int)))
          (f))))
    (define get-key-name
      (let ([f #f])
        (lambda (key)
          (unless f
            (set! f (foreign-procedure "GetKeyName" (int) string)))
          (f key))))
    (define set-exit-key
      (let ([f #f])
        (lambda (key)
          (unless f
            (set! f (foreign-procedure "SetExitKey" (int) void)))
          (f key))))
    (define is-gamepad-available
      (let ([f #f])
        (lambda (gamepad)
          (unless f
            (set! f
              (foreign-procedure "IsGamepadAvailable" (int) unsigned-8)))
          (not (= (f gamepad) 0)))))
    (define get-gamepad-name
      (let ([f #f])
        (lambda (gamepad)
          (unless f
            (set! f (foreign-procedure "GetGamepadName" (int) string)))
          (f gamepad))))
    (define is-gamepad-button-pressed
      (let ([f #f])
        (lambda (gamepad button)
          (unless f
            (set! f
              (foreign-procedure "IsGamepadButtonPressed"
                (int int)
                unsigned-8)))
          (not (= (f gamepad button) 0)))))
    (define is-gamepad-button-down
      (let ([f #f])
        (lambda (gamepad button)
          (unless f
            (set! f
              (foreign-procedure "IsGamepadButtonDown"
                (int int)
                unsigned-8)))
          (not (= (f gamepad button) 0)))))
    (define is-gamepad-button-released
      (let ([f #f])
        (lambda (gamepad button)
          (unless f
            (set! f
              (foreign-procedure "IsGamepadButtonReleased"
                (int int)
                unsigned-8)))
          (not (= (f gamepad button) 0)))))
    (define is-gamepad-button-up
      (let ([f #f])
        (lambda (gamepad button)
          (unless f
            (set! f
              (foreign-procedure "IsGamepadButtonUp"
                (int int)
                unsigned-8)))
          (not (= (f gamepad button) 0)))))
    (define get-gamepad-button-pressed
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetGamepadButtonPressed" () int)))
          (f))))
    (define get-gamepad-axis-count
      (let ([f #f])
        (lambda (gamepad)
          (unless f
            (set! f
              (foreign-procedure "GetGamepadAxisCount" (int) int)))
          (f gamepad))))
    (define get-gamepad-axis-movement
      (let ([f #f])
        (lambda (gamepad axis)
          (unless f
            (set! f
              (foreign-procedure "GetGamepadAxisMovement"
                (int int)
                float)))
          (f gamepad axis))))
    (define set-gamepad-mappings
      (let ([f #f])
        (lambda (mappings)
          (unless f
            (set! f
              (foreign-procedure "SetGamepadMappings" (string) int)))
          (f mappings))))
    (define set-gamepad-vibration
      (let ([f #f])
        (lambda (gamepad left-motor right-motor duration)
          (unless f
            (set! f
              (foreign-procedure "SetGamepadVibration"
                (int float float float)
                void)))
          (f gamepad left-motor right-motor duration))))
    (define is-mouse-button-pressed
      (let ([f #f])
        (lambda (button)
          (unless f
            (set! f
              (foreign-procedure "IsMouseButtonPressed"
                (int)
                unsigned-8)))
          (not (= (f button) 0)))))
    (define is-mouse-button-down
      (let ([f #f])
        (lambda (button)
          (unless f
            (set! f
              (foreign-procedure "IsMouseButtonDown" (int) unsigned-8)))
          (not (= (f button) 0)))))
    (define is-mouse-button-released
      (let ([f #f])
        (lambda (button)
          (unless f
            (set! f
              (foreign-procedure "IsMouseButtonReleased"
                (int)
                unsigned-8)))
          (not (= (f button) 0)))))
    (define is-mouse-button-up
      (let ([f #f])
        (lambda (button)
          (unless f
            (set! f
              (foreign-procedure "IsMouseButtonUp" (int) unsigned-8)))
          (not (= (f button) 0)))))
    (define get-mouse-x
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "GetMouseX" () int)))
          (f))))
    (define get-mouse-y
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "GetMouseY" () int)))
          (f))))
    (define get-mouse-position
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetMousePosition" () (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst)
            dst))))
    (define get-mouse-delta
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetMouseDelta" () (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst)
            dst))))
    (define set-mouse-position
      (let ([f #f])
        (lambda (x y)
          (unless f
            (set! f
              (foreign-procedure "SetMousePosition" (int int) void)))
          (f x y))))
    (define set-mouse-offset
      (let ([f #f])
        (lambda (offset-x offset-y)
          (unless f
            (set! f
              (foreign-procedure "SetMouseOffset" (int int) void)))
          (f offset-x offset-y))))
    (define set-mouse-scale
      (let ([f #f])
        (lambda (scale-x scale-y)
          (unless f
            (set! f
              (foreign-procedure "SetMouseScale" (float float) void)))
          (f scale-x scale-y))))
    (define get-mouse-wheel-move
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetMouseWheelMove" () float)))
          (f))))
    (define get-mouse-wheel-move-v
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetMouseWheelMoveV" () (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst)
            dst))))
    (define set-mouse-cursor
      (let ([f #f])
        (lambda (cursor)
          (unless f
            (set! f (foreign-procedure "SetMouseCursor" (int) void)))
          (f cursor))))
    (define get-touch-x
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "GetTouchX" () int)))
          (f))))
    (define get-touch-y
      (let ([f #f])
        (lambda ()
          (unless f (set! f (foreign-procedure "GetTouchY" () int)))
          (f))))
    (define get-touch-position
      (let ([f #f])
        (lambda (index)
          (unless f
            (set! f
              (foreign-procedure "GetTouchPosition" (int) (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst index)
            dst))))
    (define get-touch-point-id
      (let ([f #f])
        (lambda (index)
          (unless f
            (set! f (foreign-procedure "GetTouchPointId" (int) int)))
          (f index))))
    (define get-touch-point-count
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetTouchPointCount" () int)))
          (f))))
    (define set-gestures-enabled
      (let ([f #f])
        (lambda (flags)
          (unless f
            (set! f
              (foreign-procedure "SetGesturesEnabled" (unsigned) void)))
          (f flags))))
    (define is-gesture-detected
      (let ([f #f])
        (lambda (gesture)
          (unless f
            (set! f
              (foreign-procedure "IsGestureDetected"
                (unsigned)
                unsigned-8)))
          (not (= (f gesture) 0)))))
    (define get-gesture-detected
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetGestureDetected" () int)))
          (f))))
    (define get-gesture-hold-duration
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetGestureHoldDuration" () float)))
          (f))))
    (define get-gesture-drag-vector
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetGestureDragVector" () (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst)
            dst))))
    (define get-gesture-drag-angle
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetGestureDragAngle" () float)))
          (f))))
    (define get-gesture-pinch-vector
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetGesturePinchVector"
                ()
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst)
            dst))))
    (define get-gesture-pinch-angle
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetGesturePinchAngle" () float)))
          (f))))
    (define update-camera
      (let ([f #f])
        (lambda (camera mode)
          (unless f
            (set! f
              (foreign-procedure "UpdateCamera"
                ((* Camera-3D) int)
                void)))
          (f camera mode))))
    (define update-camera-pro
      (let ([f #f])
        (lambda (camera movement rotation zoom)
          (unless f
            (set! f
              (foreign-procedure "UpdateCameraPro"
                ((* Camera-3D) (& Vector-3) (& Vector-3) float)
                void)))
          (f camera movement rotation zoom))))
    (define set-shapes-texture
      (let ([f #f])
        (lambda (texture rec)
          (unless f
            (set! f
              (foreign-procedure "SetShapesTexture"
                ((& Texture) (& Rectangle))
                void)))
          (f texture rec))))
    (define get-shapes-texture
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetShapesTexture" () (& Texture))))
          (let ([dst (make-ftype-pointer
                       Texture
                       (foreign-alloc (ftype-sizeof Texture)))])
            (f dst)
            dst))))
    (define get-shapes-texture-rectangle
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "GetShapesTextureRectangle"
                ()
                (& Rectangle))))
          (let ([dst (make-ftype-pointer
                       Rectangle
                       (foreign-alloc (ftype-sizeof Rectangle)))])
            (f dst)
            dst))))
    (define draw-pixel
      (let ([f #f])
        (lambda (pos-x pos-y color)
          (unless f
            (set! f
              (foreign-procedure "DrawPixel" (int int (& Color)) void)))
          (f pos-x pos-y color))))
    (define draw-pixel-v
      (let ([f #f])
        (lambda (position color)
          (unless f
            (set! f
              (foreign-procedure "DrawPixelV"
                ((& Vector-2) (& Color))
                void)))
          (f position color))))
    (define draw-line
      (let ([f #f])
        (lambda (start-pos-x start-pos-y end-pos-x end-pos-y color)
          (unless f
            (set! f
              (foreign-procedure "DrawLine"
                (int int int int (& Color))
                void)))
          (f start-pos-x start-pos-y end-pos-x end-pos-y color))))
    (define draw-line-v
      (let ([f #f])
        (lambda (start-pos end-pos color)
          (unless f
            (set! f
              (foreign-procedure "DrawLineV"
                ((& Vector-2) (& Vector-2) (& Color))
                void)))
          (f start-pos end-pos color))))
    (define draw-line-ex
      (let ([f #f])
        (lambda (start-pos end-pos thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawLineEx"
                ((& Vector-2) (& Vector-2) float (& Color))
                void)))
          (f start-pos end-pos thick color))))
    (define draw-line-strip
      (let ([f #f])
        (lambda (points point-count color)
          (unless f
            (set! f
              (foreign-procedure "DrawLineStrip"
                ((* Vector-2) int (& Color))
                void)))
          (f points point-count color))))
    (define draw-line-bezier
      (let ([f #f])
        (lambda (start-pos end-pos thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawLineBezier"
                ((& Vector-2) (& Vector-2) float (& Color))
                void)))
          (f start-pos end-pos thick color))))
    (define draw-line-dashed
      (let ([f #f])
        (lambda (start-pos end-pos dash-size space-size color)
          (unless f
            (set! f
              (foreign-procedure "DrawLineDashed"
                ((& Vector-2) (& Vector-2) int int (& Color))
                void)))
          (f start-pos end-pos dash-size space-size color))))
    (define draw-triangle
      (let ([f #f])
        (lambda (v-1 v-2 v-3 color)
          (unless f
            (set! f
              (foreign-procedure "DrawTriangle"
                ((& Vector-2) (& Vector-2) (& Vector-2) (& Color))
                void)))
          (f v-1 v-2 v-3 color))))
    (define draw-triangle-gradient
      (let ([f #f])
        (lambda (v-1 v-2 v-3 c-1 c-2 c-3)
          (unless f
            (set! f
              (foreign-procedure "DrawTriangleGradient"
                ((& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 (& Color)
                 (& Color)
                 (& Color))
                void)))
          (f v-1 v-2 v-3 c-1 c-2 c-3))))
    (define draw-triangle-lines
      (let ([f #f])
        (lambda (v-1 v-2 v-3 color)
          (unless f
            (set! f
              (foreign-procedure "DrawTriangleLines"
                ((& Vector-2) (& Vector-2) (& Vector-2) (& Color))
                void)))
          (f v-1 v-2 v-3 color))))
    (define draw-triangle-fan
      (let ([f #f])
        (lambda (points point-count color)
          (unless f
            (set! f
              (foreign-procedure "DrawTriangleFan"
                ((* Vector-2) int (& Color))
                void)))
          (f points point-count color))))
    (define draw-triangle-strip
      (let ([f #f])
        (lambda (points point-count color)
          (unless f
            (set! f
              (foreign-procedure "DrawTriangleStrip"
                ((* Vector-2) int (& Color))
                void)))
          (f points point-count color))))
    (define draw-rectangle
      (let ([f #f])
        (lambda (pos-x pos-y width height color)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangle"
                (int int int int (& Color))
                void)))
          (f pos-x pos-y width height color))))
    (define draw-rectangle-v
      (let ([f #f])
        (lambda (position size color)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangleV"
                ((& Vector-2) (& Vector-2) (& Color))
                void)))
          (f position size color))))
    (define draw-rectangle-rec
      (let ([f #f])
        (lambda (rec color)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangleRec"
                ((& Rectangle) (& Color))
                void)))
          (f rec color))))
    (define draw-rectangle-pro
      (let ([f #f])
        (lambda (rec origin rotation color)
          (unless f
            (set! f
              (foreign-procedure "DrawRectanglePro"
                ((& Rectangle) (& Vector-2) float (& Color))
                void)))
          (f rec origin rotation color))))
    (define draw-rectangle-gradient-v
      (let ([f #f])
        (lambda (pos-x pos-y width height top bottom)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangleGradientV"
                (int int int int (& Color) (& Color))
                void)))
          (f pos-x pos-y width height top bottom))))
    (define draw-rectangle-gradient-h
      (let ([f #f])
        (lambda (pos-x pos-y width height left right)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangleGradientH"
                (int int int int (& Color) (& Color))
                void)))
          (f pos-x pos-y width height left right))))
    (define draw-rectangle-gradient-ex
      (let ([f #f])
        (lambda (rec col-1 col-2 col-3 col-4)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangleGradientEx"
                ((& Rectangle) (& Color) (& Color) (& Color) (& Color))
                void)))
          (f rec col-1 col-2 col-3 col-4))))
    (define draw-rectangle-lines
      (let ([f #f])
        (lambda (pos-x pos-y width height color)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangleLines"
                (int int int int (& Color))
                void)))
          (f pos-x pos-y width height color))))
    (define draw-rectangle-lines-ex
      (let ([f #f])
        (lambda (rec thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangleLinesEx"
                ((& Rectangle) float (& Color))
                void)))
          (f rec thick color))))
    (define draw-rectangle-rounded
      (let ([f #f])
        (lambda (rec roundness segments color)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangleRounded"
                ((& Rectangle) float int (& Color))
                void)))
          (f rec roundness segments color))))
    (define draw-rectangle-rounded-lines
      (let ([f #f])
        (lambda (rec roundness segments color)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangleRoundedLines"
                ((& Rectangle) float int (& Color))
                void)))
          (f rec roundness segments color))))
    (define draw-rectangle-rounded-lines-ex
      (let ([f #f])
        (lambda (rec roundness segments thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawRectangleRoundedLinesEx"
                ((& Rectangle) float int float (& Color))
                void)))
          (f rec roundness segments thick color))))
    (define draw-poly
      (let ([f #f])
        (lambda (center sides radius rotation color)
          (unless f
            (set! f
              (foreign-procedure "DrawPoly"
                ((& Vector-2) int float float (& Color))
                void)))
          (f center sides radius rotation color))))
    (define draw-poly-lines
      (let ([f #f])
        (lambda (center sides radius rotation color)
          (unless f
            (set! f
              (foreign-procedure "DrawPolyLines"
                ((& Vector-2) int float float (& Color))
                void)))
          (f center sides radius rotation color))))
    (define draw-poly-lines-ex
      (let ([f #f])
        (lambda (center sides radius rotation thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawPolyLinesEx"
                ((& Vector-2) int float float float (& Color))
                void)))
          (f center sides radius rotation thick color))))
    (define draw-circle
      (let ([f #f])
        (lambda (center-x center-y radius color)
          (unless f
            (set! f
              (foreign-procedure "DrawCircle"
                (int int float (& Color))
                void)))
          (f center-x center-y radius color))))
    (define draw-circle-v
      (let ([f #f])
        (lambda (center radius color)
          (unless f
            (set! f
              (foreign-procedure "DrawCircleV"
                ((& Vector-2) float (& Color))
                void)))
          (f center radius color))))
    (define draw-circle-gradient
      (let ([f #f])
        (lambda (center radius inner outer)
          (unless f
            (set! f
              (foreign-procedure "DrawCircleGradient"
                ((& Vector-2) float (& Color) (& Color))
                void)))
          (f center radius inner outer))))
    (define draw-circle-sector
      (let ([f #f])
        (lambda (center radius start-angle end-angle segments color)
          (unless f
            (set! f
              (foreign-procedure "DrawCircleSector"
                ((& Vector-2) float float float int (& Color))
                void)))
          (f center radius start-angle end-angle segments color))))
    (define draw-circle-sector-lines
      (let ([f #f])
        (lambda (center radius start-angle end-angle segments color)
          (unless f
            (set! f
              (foreign-procedure "DrawCircleSectorLines"
                ((& Vector-2) float float float int (& Color))
                void)))
          (f center radius start-angle end-angle segments color))))
    (define draw-circle-lines
      (let ([f #f])
        (lambda (center-x center-y radius color)
          (unless f
            (set! f
              (foreign-procedure "DrawCircleLines"
                (int int float (& Color))
                void)))
          (f center-x center-y radius color))))
    (define draw-circle-lines-v
      (let ([f #f])
        (lambda (center radius color)
          (unless f
            (set! f
              (foreign-procedure "DrawCircleLinesV"
                ((& Vector-2) float (& Color))
                void)))
          (f center radius color))))
    (define draw-circle-lines-ex
      (let ([f #f])
        (lambda (center radius thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawCircleLinesEx"
                ((& Vector-2) float float (& Color))
                void)))
          (f center radius thick color))))
    (define draw-ellipse
      (let ([f #f])
        (lambda (center-x center-y radius-h radius-v color)
          (unless f
            (set! f
              (foreign-procedure "DrawEllipse"
                (int int float float (& Color))
                void)))
          (f center-x center-y radius-h radius-v color))))
    (define draw-ellipse-v
      (let ([f #f])
        (lambda (center radius-h radius-v color)
          (unless f
            (set! f
              (foreign-procedure "DrawEllipseV"
                ((& Vector-2) float float (& Color))
                void)))
          (f center radius-h radius-v color))))
    (define draw-ellipse-lines
      (let ([f #f])
        (lambda (center-x center-y radius-h radius-v color)
          (unless f
            (set! f
              (foreign-procedure "DrawEllipseLines"
                (int int float float (& Color))
                void)))
          (f center-x center-y radius-h radius-v color))))
    (define draw-ellipse-lines-v
      (let ([f #f])
        (lambda (center radius-h radius-v color)
          (unless f
            (set! f
              (foreign-procedure "DrawEllipseLinesV"
                ((& Vector-2) float float (& Color))
                void)))
          (f center radius-h radius-v color))))
    (define draw-ring
      (let ([f #f])
        (lambda (center inner-radius outer-radius start-angle
                 end-angle segments color)
          (unless f
            (set! f
              (foreign-procedure "DrawRing"
                ((& Vector-2) float float float float int (& Color))
                void)))
          (f center inner-radius outer-radius start-angle end-angle
             segments color))))
    (define draw-ring-lines
      (let ([f #f])
        (lambda (center inner-radius outer-radius start-angle
                 end-angle segments color)
          (unless f
            (set! f
              (foreign-procedure "DrawRingLines"
                ((& Vector-2) float float float float int (& Color))
                void)))
          (f center inner-radius outer-radius start-angle end-angle
             segments color))))
    (define draw-spline-linear
      (let ([f #f])
        (lambda (points point-count thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawSplineLinear"
                ((* Vector-2) int float (& Color))
                void)))
          (f points point-count thick color))))
    (define draw-spline-basis
      (let ([f #f])
        (lambda (points point-count thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawSplineBasis"
                ((* Vector-2) int float (& Color))
                void)))
          (f points point-count thick color))))
    (define draw-spline-catmull-rom
      (let ([f #f])
        (lambda (points point-count thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawSplineCatmullRom"
                ((* Vector-2) int float (& Color))
                void)))
          (f points point-count thick color))))
    (define draw-spline-bezier-quadratic
      (let ([f #f])
        (lambda (points point-count thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawSplineBezierQuadratic"
                ((* Vector-2) int float (& Color))
                void)))
          (f points point-count thick color))))
    (define draw-spline-bezier-cubic
      (let ([f #f])
        (lambda (points point-count thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawSplineBezierCubic"
                ((* Vector-2) int float (& Color))
                void)))
          (f points point-count thick color))))
    (define draw-spline-segment-linear
      (let ([f #f])
        (lambda (p-1 p-2 thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawSplineSegmentLinear"
                ((& Vector-2) (& Vector-2) float (& Color))
                void)))
          (f p-1 p-2 thick color))))
    (define draw-spline-segment-basis
      (let ([f #f])
        (lambda (p-1 p-2 p-3 p-4 thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawSplineSegmentBasis"
                ((& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 float
                 (& Color))
                void)))
          (f p-1 p-2 p-3 p-4 thick color))))
    (define draw-spline-segment-catmull-rom
      (let ([f #f])
        (lambda (p-1 p-2 p-3 p-4 thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawSplineSegmentCatmullRom"
                ((& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 float
                 (& Color))
                void)))
          (f p-1 p-2 p-3 p-4 thick color))))
    (define draw-spline-segment-bezier-quadratic
      (let ([f #f])
        (lambda (p-1 c-2 p-3 thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawSplineSegmentBezierQuadratic"
                ((& Vector-2) (& Vector-2) (& Vector-2) float (& Color))
                void)))
          (f p-1 c-2 p-3 thick color))))
    (define draw-spline-segment-bezier-cubic
      (let ([f #f])
        (lambda (p-1 c-2 c-3 p-4 thick color)
          (unless f
            (set! f
              (foreign-procedure "DrawSplineSegmentBezierCubic"
                ((& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 float
                 (& Color))
                void)))
          (f p-1 c-2 c-3 p-4 thick color))))
    (define get-spline-point-linear
      (let ([f #f])
        (lambda (start-pos end-pos t)
          (unless f
            (set! f
              (foreign-procedure "GetSplinePointLinear"
                ((& Vector-2) (& Vector-2) float)
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst start-pos end-pos t)
            dst))))
    (define get-spline-point-basis
      (let ([f #f])
        (lambda (p-1 p-2 p-3 p-4 t)
          (unless f
            (set! f
              (foreign-procedure "GetSplinePointBasis"
                ((& Vector-2) (& Vector-2) (& Vector-2) (& Vector-2) float)
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst p-1 p-2 p-3 p-4 t)
            dst))))
    (define get-spline-point-catmull-rom
      (let ([f #f])
        (lambda (p-1 p-2 p-3 p-4 t)
          (unless f
            (set! f
              (foreign-procedure "GetSplinePointCatmullRom"
                ((& Vector-2) (& Vector-2) (& Vector-2) (& Vector-2) float)
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst p-1 p-2 p-3 p-4 t)
            dst))))
    (define get-spline-point-bezier-quadratic
      (let ([f #f])
        (lambda (p-1 c-2 p-3 t)
          (unless f
            (set! f
              (foreign-procedure "GetSplinePointBezierQuadratic"
                ((& Vector-2) (& Vector-2) (& Vector-2) float)
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst p-1 c-2 p-3 t)
            dst))))
    (define get-spline-point-bezier-cubic
      (let ([f #f])
        (lambda (p-1 c-2 c-3 p-4 t)
          (unless f
            (set! f
              (foreign-procedure "GetSplinePointBezierCubic"
                ((& Vector-2) (& Vector-2) (& Vector-2) (& Vector-2) float)
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst p-1 c-2 c-3 p-4 t)
            dst))))
    (define check-collision-recs
      (let ([f #f])
        (lambda (rec-1 rec-2)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionRecs"
                ((& Rectangle) (& Rectangle))
                unsigned-8)))
          (not (= (f rec-1 rec-2) 0)))))
    (define check-collision-circles
      (let ([f #f])
        (lambda (center-1 radius-1 center-2 radius-2)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionCircles"
                ((& Vector-2) float (& Vector-2) float)
                unsigned-8)))
          (not (= (f center-1 radius-1 center-2 radius-2) 0)))))
    (define check-collision-circle-rec
      (let ([f #f])
        (lambda (center radius rec)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionCircleRec"
                ((& Vector-2) float (& Rectangle))
                unsigned-8)))
          (not (= (f center radius rec) 0)))))
    (define check-collision-circle-line
      (let ([f #f])
        (lambda (center radius p-1 p-2)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionCircleLine"
                ((& Vector-2) float (& Vector-2) (& Vector-2))
                unsigned-8)))
          (not (= (f center radius p-1 p-2) 0)))))
    (define check-collision-point-rec
      (let ([f #f])
        (lambda (point rec)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionPointRec"
                ((& Vector-2) (& Rectangle))
                unsigned-8)))
          (not (= (f point rec) 0)))))
    (define check-collision-point-circle
      (let ([f #f])
        (lambda (point center radius)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionPointCircle"
                ((& Vector-2) (& Vector-2) float)
                unsigned-8)))
          (not (= (f point center radius) 0)))))
    (define check-collision-point-triangle
      (let ([f #f])
        (lambda (point p-1 p-2 p-3)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionPointTriangle"
                ((& Vector-2) (& Vector-2) (& Vector-2) (& Vector-2))
                unsigned-8)))
          (not (= (f point p-1 p-2 p-3) 0)))))
    (define check-collision-point-line
      (let ([f #f])
        (lambda (point p-1 p-2 threshold)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionPointLine"
                ((& Vector-2) (& Vector-2) (& Vector-2) int)
                unsigned-8)))
          (not (= (f point p-1 p-2 threshold) 0)))))
    (define check-collision-point-poly
      (let ([f #f])
        (lambda (point points point-count)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionPointPoly"
                ((& Vector-2) (* Vector-2) int)
                unsigned-8)))
          (not (= (f point points point-count) 0)))))
    (define check-collision-lines
      (let ([f #f])
        (lambda (start-pos-1 end-pos-1 start-pos-2 end-pos-2
                 collision-point)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionLines"
                ((& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 (* Vector-2))
                unsigned-8)))
          (not (= (f start-pos-1 end-pos-1 start-pos-2 end-pos-2
                     collision-point)
                  0)))))
    (define get-collision-rec
      (let ([f #f])
        (lambda (rec-1 rec-2)
          (unless f
            (set! f
              (foreign-procedure "GetCollisionRec"
                ((& Rectangle) (& Rectangle))
                (& Rectangle))))
          (let ([dst (make-ftype-pointer
                       Rectangle
                       (foreign-alloc (ftype-sizeof Rectangle)))])
            (f dst rec-1 rec-2)
            dst))))
    (define load-image
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f (foreign-procedure "LoadImage" (string) (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst file-name)
            dst))))
    (define load-image-raw
      (let ([f #f])
        (lambda (file-name width height format header-size)
          (unless f
            (set! f
              (foreign-procedure "LoadImageRaw"
                (string int int int int)
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst file-name width height format header-size)
            dst))))
    (define load-image-anim
      (let ([f #f])
        (lambda (file-name frames)
          (unless f
            (set! f
              (foreign-procedure "LoadImageAnim"
                (string (* int))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst file-name frames)
            dst))))
    (define load-image-anim-from-memory
      (let ([f #f])
        (lambda (file-type file-data data-size frames)
          (unless f
            (set! f
              (foreign-procedure "LoadImageAnimFromMemory"
                (string (* unsigned-8) int (* int))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst file-type file-data data-size frames)
            dst))))
    (define load-image-from-memory
      (let ([f #f])
        (lambda (file-type file-data data-size)
          (unless f
            (set! f
              (foreign-procedure "LoadImageFromMemory"
                (string (* unsigned-8) int)
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst file-type file-data data-size)
            dst))))
    (define load-image-from-texture
      (let ([f #f])
        (lambda (texture)
          (unless f
            (set! f
              (foreign-procedure "LoadImageFromTexture"
                ((& Texture))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst texture)
            dst))))
    (define load-image-from-screen
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "LoadImageFromScreen" () (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst)
            dst))))
    (define is-image-valid
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "IsImageValid" ((& Image)) unsigned-8)))
          (not (= (f image) 0)))))
    (define unload-image
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f (foreign-procedure "UnloadImage" ((& Image)) void)))
          (f image))))
    (define export-image
      (let ([f #f])
        (lambda (image file-name)
          (unless f
            (set! f
              (foreign-procedure "ExportImage"
                ((& Image) string)
                unsigned-8)))
          (not (= (f image file-name) 0)))))
    (define export-image-to-memory
      (let ([f #f])
        (lambda (image file-type file-size)
          (unless f
            (set! f
              (foreign-procedure "ExportImageToMemory"
                ((& Image) string (* int))
                (* unsigned-8))))
          (f image file-type file-size))))
    (define export-image-as-code
      (let ([f #f])
        (lambda (image file-name)
          (unless f
            (set! f
              (foreign-procedure "ExportImageAsCode"
                ((& Image) string)
                unsigned-8)))
          (not (= (f image file-name) 0)))))
    (define gen-image-color
      (let ([f #f])
        (lambda (width height color)
          (unless f
            (set! f
              (foreign-procedure "GenImageColor"
                (int int (& Color))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst width height color)
            dst))))
    (define gen-image-gradient-linear
      (let ([f #f])
        (lambda (width height direction start end)
          (unless f
            (set! f
              (foreign-procedure "GenImageGradientLinear"
                (int int int (& Color) (& Color))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst width height direction start end)
            dst))))
    (define gen-image-gradient-radial
      (let ([f #f])
        (lambda (width height density inner outer)
          (unless f
            (set! f
              (foreign-procedure "GenImageGradientRadial"
                (int int float (& Color) (& Color))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst width height density inner outer)
            dst))))
    (define gen-image-gradient-square
      (let ([f #f])
        (lambda (width height density inner outer)
          (unless f
            (set! f
              (foreign-procedure "GenImageGradientSquare"
                (int int float (& Color) (& Color))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst width height density inner outer)
            dst))))
    (define gen-image-checked
      (let ([f #f])
        (lambda (width height checks-x checks-y col-1 col-2)
          (unless f
            (set! f
              (foreign-procedure "GenImageChecked"
                (int int int int (& Color) (& Color))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst width height checks-x checks-y col-1 col-2)
            dst))))
    (define gen-image-white-noise
      (let ([f #f])
        (lambda (width height factor)
          (unless f
            (set! f
              (foreign-procedure "GenImageWhiteNoise"
                (int int float)
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst width height factor)
            dst))))
    (define gen-image-perlin-noise
      (let ([f #f])
        (lambda (width height offset-x offset-y scale)
          (unless f
            (set! f
              (foreign-procedure "GenImagePerlinNoise"
                (int int int int float)
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst width height offset-x offset-y scale)
            dst))))
    (define gen-image-cellular
      (let ([f #f])
        (lambda (width height tile-size)
          (unless f
            (set! f
              (foreign-procedure "GenImageCellular"
                (int int int)
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst width height tile-size)
            dst))))
    (define gen-image-text
      (let ([f #f])
        (lambda (width height text)
          (unless f
            (set! f
              (foreign-procedure "GenImageText"
                (int int string)
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst width height text)
            dst))))
    (define image-copy
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "ImageCopy" ((& Image)) (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst image)
            dst))))
    (define image-from-image
      (let ([f #f])
        (lambda (image rec)
          (unless f
            (set! f
              (foreign-procedure "ImageFromImage"
                ((& Image) (& Rectangle))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst image rec)
            dst))))
    (define image-from-channel
      (let ([f #f])
        (lambda (image selected-channel)
          (unless f
            (set! f
              (foreign-procedure "ImageFromChannel"
                ((& Image) int)
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst image selected-channel)
            dst))))
    (define image-text
      (let ([f #f])
        (lambda (text font-size color)
          (unless f
            (set! f
              (foreign-procedure "ImageText"
                (string int (& Color))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst text font-size color)
            dst))))
    (define image-text-ex
      (let ([f #f])
        (lambda (font text font-size spacing tint)
          (unless f
            (set! f
              (foreign-procedure "ImageTextEx"
                ((& Font) string float float (& Color))
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst font text font-size spacing tint)
            dst))))
    (define image-format
      (let ([f #f])
        (lambda (image new-format)
          (unless f
            (set! f
              (foreign-procedure "ImageFormat" ((* Image) int) void)))
          (f image new-format))))
    (define image-to-pot
      (let ([f #f])
        (lambda (image fill)
          (unless f
            (set! f
              (foreign-procedure "ImageToPOT"
                ((* Image) (& Color))
                void)))
          (f image fill))))
    (define image-crop
      (let ([f #f])
        (lambda (image crop)
          (unless f
            (set! f
              (foreign-procedure "ImageCrop"
                ((* Image) (& Rectangle))
                void)))
          (f image crop))))
    (define image-alpha-crop
      (let ([f #f])
        (lambda (image threshold)
          (unless f
            (set! f
              (foreign-procedure "ImageAlphaCrop"
                ((* Image) float)
                void)))
          (f image threshold))))
    (define image-alpha-clear
      (let ([f #f])
        (lambda (image color threshold)
          (unless f
            (set! f
              (foreign-procedure "ImageAlphaClear"
                ((* Image) (& Color) float)
                void)))
          (f image color threshold))))
    (define image-alpha-mask
      (let ([f #f])
        (lambda (image alpha-mask)
          (unless f
            (set! f
              (foreign-procedure "ImageAlphaMask"
                ((* Image) (& Image))
                void)))
          (f image alpha-mask))))
    (define image-alpha-premultiply
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "ImageAlphaPremultiply"
                ((* Image))
                void)))
          (f image))))
    (define image-blur-gaussian
      (let ([f #f])
        (lambda (image blur-size)
          (unless f
            (set! f
              (foreign-procedure "ImageBlurGaussian"
                ((* Image) int)
                void)))
          (f image blur-size))))
    (define image-kernel-convolution
      (let ([f #f])
        (lambda (image kernel kernel-size)
          (unless f
            (set! f
              (foreign-procedure "ImageKernelConvolution"
                ((* Image) (* float) int)
                void)))
          (f image kernel kernel-size))))
    (define image-resize
      (let ([f #f])
        (lambda (image new-width new-height)
          (unless f
            (set! f
              (foreign-procedure "ImageResize" ((* Image) int int) void)))
          (f image new-width new-height))))
    (define image-resize-nn
      (let ([f #f])
        (lambda (image new-width new-height)
          (unless f
            (set! f
              (foreign-procedure "ImageResizeNN"
                ((* Image) int int)
                void)))
          (f image new-width new-height))))
    (define image-resize-canvas
      (let ([f #f])
        (lambda (image new-width new-height offset-x offset-y fill)
          (unless f
            (set! f
              (foreign-procedure "ImageResizeCanvas"
                ((* Image) int int int int (& Color))
                void)))
          (f image new-width new-height offset-x offset-y fill))))
    (define image-mipmaps
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "ImageMipmaps" ((* Image)) void)))
          (f image))))
    (define image-dither
      (let ([f #f])
        (lambda (image r-bpp g-bpp b-bpp a-bpp)
          (unless f
            (set! f
              (foreign-procedure "ImageDither"
                ((* Image) int int int int)
                void)))
          (f image r-bpp g-bpp b-bpp a-bpp))))
    (define image-flip-vertical
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "ImageFlipVertical" ((* Image)) void)))
          (f image))))
    (define image-flip-horizontal
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "ImageFlipHorizontal" ((* Image)) void)))
          (f image))))
    (define image-rotate
      (let ([f #f])
        (lambda (image degrees)
          (unless f
            (set! f
              (foreign-procedure "ImageRotate" ((* Image) int) void)))
          (f image degrees))))
    (define image-rotate-cw
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "ImageRotateCW" ((* Image)) void)))
          (f image))))
    (define image-rotate-ccw
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "ImageRotateCCW" ((* Image)) void)))
          (f image))))
    (define image-color-tint
      (let ([f #f])
        (lambda (image color)
          (unless f
            (set! f
              (foreign-procedure "ImageColorTint"
                ((* Image) (& Color))
                void)))
          (f image color))))
    (define image-color-invert
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "ImageColorInvert" ((* Image)) void)))
          (f image))))
    (define image-color-grayscale
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "ImageColorGrayscale" ((* Image)) void)))
          (f image))))
    (define image-color-contrast
      (let ([f #f])
        (lambda (image contrast)
          (unless f
            (set! f
              (foreign-procedure "ImageColorContrast"
                ((* Image) int)
                void)))
          (f image contrast))))
    (define image-color-brightness
      (let ([f #f])
        (lambda (image brightness)
          (unless f
            (set! f
              (foreign-procedure "ImageColorBrightness"
                ((* Image) int)
                void)))
          (f image brightness))))
    (define image-color-replace
      (let ([f #f])
        (lambda (image color replace)
          (unless f
            (set! f
              (foreign-procedure "ImageColorReplace"
                ((* Image) (& Color) (& Color))
                void)))
          (f image color replace))))
    (define load-image-colors
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "LoadImageColors"
                ((& Image))
                (* Color))))
          (f image))))
    (define load-image-palette
      (let ([f #f])
        (lambda (image max-palette-size color-count)
          (unless f
            (set! f
              (foreign-procedure "LoadImagePalette"
                ((& Image) int (* int))
                (* Color))))
          (f image max-palette-size color-count))))
    (define unload-image-colors
      (let ([f #f])
        (lambda (colors)
          (unless f
            (set! f
              (foreign-procedure "UnloadImageColors" ((* Color)) void)))
          (f colors))))
    (define unload-image-palette
      (let ([f #f])
        (lambda (colors)
          (unless f
            (set! f
              (foreign-procedure "UnloadImagePalette" ((* Color)) void)))
          (f colors))))
    (define get-image-alpha-border
      (let ([f #f])
        (lambda (image threshold)
          (unless f
            (set! f
              (foreign-procedure "GetImageAlphaBorder"
                ((& Image) float)
                (& Rectangle))))
          (let ([dst (make-ftype-pointer
                       Rectangle
                       (foreign-alloc (ftype-sizeof Rectangle)))])
            (f dst image threshold)
            dst))))
    (define get-image-color
      (let ([f #f])
        (lambda (image x y)
          (unless f
            (set! f
              (foreign-procedure "GetImageColor"
                ((& Image) int int)
                (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst image x y)
            dst))))
    (define image-clear-background
      (let ([f #f])
        (lambda (dst color)
          (unless f
            (set! f
              (foreign-procedure "ImageClearBackground"
                ((* Image) (& Color))
                void)))
          (f dst color))))
    (define image-draw-pixel
      (let ([f #f])
        (lambda (dst pos-x pos-y color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawPixel"
                ((* Image) int int (& Color))
                void)))
          (f dst pos-x pos-y color))))
    (define image-draw-pixel-v
      (let ([f #f])
        (lambda (dst position color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawPixelV"
                ((* Image) (& Vector-2) (& Color))
                void)))
          (f dst position color))))
    (define image-draw-line
      (let ([f #f])
        (lambda (dst start-pos-x start-pos-y end-pos-x end-pos-y
                 color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawLine"
                ((* Image) int int int int (& Color))
                void)))
          (f dst start-pos-x start-pos-y end-pos-x end-pos-y color))))
    (define image-draw-line-v
      (let ([f #f])
        (lambda (dst start end color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawLineV"
                ((* Image) (& Vector-2) (& Vector-2) (& Color))
                void)))
          (f dst start end color))))
    (define image-draw-line-ex
      (let ([f #f])
        (lambda (dst start end thick color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawLineEx"
                ((* Image) (& Vector-2) (& Vector-2) int (& Color))
                void)))
          (f dst start end thick color))))
    (define image-draw-line-strip
      (let ([f #f])
        (lambda (dst points point-count color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawLineStrip"
                ((* Image) (* Vector-2) int (& Color))
                void)))
          (f dst points point-count color))))
    (define image-draw-triangle
      (let ([f #f])
        (lambda (dst v-1 v-2 v-3 color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawTriangle"
                ((* Image)
                 (& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 (& Color))
                void)))
          (f dst v-1 v-2 v-3 color))))
    (define image-draw-triangle-gradient
      (let ([f #f])
        (lambda (dst v-1 v-2 v-3 c-1 c-2 c-3)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawTriangleGradient"
                ((* Image)
                 (& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 (& Color)
                 (& Color)
                 (& Color))
                void)))
          (f dst v-1 v-2 v-3 c-1 c-2 c-3))))
    (define image-draw-triangle-lines
      (let ([f #f])
        (lambda (dst v-1 v-2 v-3 color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawTriangleLines"
                ((* Image)
                 (& Vector-2)
                 (& Vector-2)
                 (& Vector-2)
                 (& Color))
                void)))
          (f dst v-1 v-2 v-3 color))))
    (define image-draw-triangle-fan
      (let ([f #f])
        (lambda (dst points point-count color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawTriangleFan"
                ((* Image) (* Vector-2) int (& Color))
                void)))
          (f dst points point-count color))))
    (define image-draw-triangle-strip
      (let ([f #f])
        (lambda (dst points point-count color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawTriangleStrip"
                ((* Image) (* Vector-2) int (& Color))
                void)))
          (f dst points point-count color))))
    (define image-draw-rectangle
      (let ([f #f])
        (lambda (dst pos-x pos-y width height color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawRectangle"
                ((* Image) int int int int (& Color))
                void)))
          (f dst pos-x pos-y width height color))))
    (define image-draw-rectangle-v
      (let ([f #f])
        (lambda (dst position size color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawRectangleV"
                ((* Image) (& Vector-2) (& Vector-2) (& Color))
                void)))
          (f dst position size color))))
    (define image-draw-rectangle-rec
      (let ([f #f])
        (lambda (dst rec color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawRectangleRec"
                ((* Image) (& Rectangle) (& Color))
                void)))
          (f dst rec color))))
    (define image-draw-rectangle-pro
      (let ([f #f])
        (lambda (dst rec origin rotation color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawRectanglePro"
                ((* Image) (& Rectangle) (& Vector-2) float (& Color))
                void)))
          (f dst rec origin rotation color))))
    (define image-draw-rectangle-lines
      (let ([f #f])
        (lambda (dst pos-x pos-y width height color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawRectangleLines"
                ((* Image) int int int int (& Color))
                void)))
          (f dst pos-x pos-y width height color))))
    (define image-draw-rectangle-lines-ex
      (let ([f #f])
        (lambda (dst rec thick color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawRectangleLinesEx"
                ((* Image) (& Rectangle) int (& Color))
                void)))
          (f dst rec thick color))))
    (define image-draw-rectangle-gradient-ex
      (let ([f #f])
        (lambda (dst rec col-1 col-2 col-3 col-4)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawRectangleGradientEx"
                ((* Image)
                 (& Rectangle)
                 (& Color)
                 (& Color)
                 (& Color)
                 (& Color))
                void)))
          (f dst rec col-1 col-2 col-3 col-4))))
    (define image-draw-circle
      (let ([f #f])
        (lambda (dst center-x center-y radius color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawCircle"
                ((* Image) int int int (& Color))
                void)))
          (f dst center-x center-y radius color))))
    (define image-draw-circle-v
      (let ([f #f])
        (lambda (dst center radius color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawCircleV"
                ((* Image) (& Vector-2) int (& Color))
                void)))
          (f dst center radius color))))
    (define image-draw-circle-lines
      (let ([f #f])
        (lambda (dst center-x center-y radius color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawCircleLines"
                ((* Image) int int int (& Color))
                void)))
          (f dst center-x center-y radius color))))
    (define image-draw-circle-lines-v
      (let ([f #f])
        (lambda (dst center radius color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawCircleLinesV"
                ((* Image) (& Vector-2) int (& Color))
                void)))
          (f dst center radius color))))
    (define image-draw-circle-gradient
      (let ([f #f])
        (lambda (dst center radius inner outer)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawCircleGradient"
                ((* Image) (& Vector-2) float (& Color) (& Color))
                void)))
          (f dst center radius inner outer))))
    (define image-draw-image
      (let ([f #f])
        (lambda (dst src pos-x pos-y tint)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawImage"
                ((* Image) (& Image) int int (& Color))
                void)))
          (f dst src pos-x pos-y tint))))
    (define image-draw-image-ex
      (let ([f #f])
        (lambda (dst src position rotation scale tint)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawImageEx"
                ((* Image) (& Image) (& Vector-2) float float (& Color))
                void)))
          (f dst src position rotation scale tint))))
    (define image-draw-image-rec
      (let ([f #f])
        (lambda (dst src src-rec position tint)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawImageRec"
                ((* Image) (& Image) (& Rectangle) (& Vector-2) (& Color))
                void)))
          (f dst src src-rec position tint))))
    (define image-draw-image-pro
      (let ([f #f])
        (lambda (dst src src-rec dst-rec origin rotation tint)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawImagePro"
                ((* Image)
                 (& Image)
                 (& Rectangle)
                 (& Rectangle)
                 (& Vector-2)
                 float
                 (& Color))
                void)))
          (f dst src src-rec dst-rec origin rotation tint))))
    (define image-draw-text
      (let ([f #f])
        (lambda (dst text pos-x pos-y font-size color)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawText"
                ((* Image) string int int int (& Color))
                void)))
          (f dst text pos-x pos-y font-size color))))
    (define image-draw-text-ex
      (let ([f #f])
        (lambda (dst font text position font-size spacing tint)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawTextEx"
                ((* Image)
                 (& Font)
                 string
                 (& Vector-2)
                 float
                 float
                 (& Color))
                void)))
          (f dst font text position font-size spacing tint))))
    (define image-draw-text-pro
      (let ([f #f])
        (lambda (dst font text position origin rotation font-size
                 spacing tint)
          (unless f
            (set! f
              (foreign-procedure "ImageDrawTextPro"
                ((* Image)
                 (& Font)
                 string
                 (& Vector-2)
                 (& Vector-2)
                 float
                 float
                 float
                 (& Color))
                void)))
          (f dst font text position origin rotation font-size spacing
             tint))))
    (define load-texture
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f
              (foreign-procedure "LoadTexture" (string) (& Texture))))
          (let ([dst (make-ftype-pointer
                       Texture
                       (foreign-alloc (ftype-sizeof Texture)))])
            (f dst file-name)
            dst))))
    (define load-texture-from-image
      (let ([f #f])
        (lambda (image)
          (unless f
            (set! f
              (foreign-procedure "LoadTextureFromImage"
                ((& Image))
                (& Texture))))
          (let ([dst (make-ftype-pointer
                       Texture
                       (foreign-alloc (ftype-sizeof Texture)))])
            (f dst image)
            dst))))
    (define load-texture-cubemap
      (let ([f #f])
        (lambda (image layout)
          (unless f
            (set! f
              (foreign-procedure "LoadTextureCubemap"
                ((& Image) int)
                (& Texture))))
          (let ([dst (make-ftype-pointer
                       Texture
                       (foreign-alloc (ftype-sizeof Texture)))])
            (f dst image layout)
            dst))))
    (define load-render-texture
      (let ([f #f])
        (lambda (width height)
          (unless f
            (set! f
              (foreign-procedure "LoadRenderTexture"
                (int int)
                (& Render-Texture))))
          (let ([dst (make-ftype-pointer
                       Render-Texture
                       (foreign-alloc (ftype-sizeof Render-Texture)))])
            (f dst width height)
            dst))))
    (define is-texture-valid
      (let ([f #f])
        (lambda (texture)
          (unless f
            (set! f
              (foreign-procedure "IsTextureValid"
                ((& Texture))
                unsigned-8)))
          (not (= (f texture) 0)))))
    (define unload-texture
      (let ([f #f])
        (lambda (texture)
          (unless f
            (set! f
              (foreign-procedure "UnloadTexture" ((& Texture)) void)))
          (f texture))))
    (define is-render-texture-valid
      (let ([f #f])
        (lambda (target)
          (unless f
            (set! f
              (foreign-procedure "IsRenderTextureValid"
                ((& Render-Texture))
                unsigned-8)))
          (not (= (f target) 0)))))
    (define unload-render-texture
      (let ([f #f])
        (lambda (target)
          (unless f
            (set! f
              (foreign-procedure "UnloadRenderTexture"
                ((& Render-Texture))
                void)))
          (f target))))
    (define update-texture
      (let ([f #f])
        (lambda (texture pixels)
          (unless f
            (set! f
              (foreign-procedure "UpdateTexture"
                ((& Texture) void*)
                void)))
          (f texture pixels))))
    (define update-texture-rec
      (let ([f #f])
        (lambda (texture rec pixels)
          (unless f
            (set! f
              (foreign-procedure "UpdateTextureRec"
                ((& Texture) (& Rectangle) void*)
                void)))
          (f texture rec pixels))))
    (define gen-texture-mipmaps
      (let ([f #f])
        (lambda (texture)
          (unless f
            (set! f
              (foreign-procedure "GenTextureMipmaps" ((* Texture)) void)))
          (f texture))))
    (define set-texture-filter
      (let ([f #f])
        (lambda (texture filter)
          (unless f
            (set! f
              (foreign-procedure "SetTextureFilter"
                ((& Texture) int)
                void)))
          (f texture filter))))
    (define set-texture-wrap
      (let ([f #f])
        (lambda (texture wrap)
          (unless f
            (set! f
              (foreign-procedure "SetTextureWrap"
                ((& Texture) int)
                void)))
          (f texture wrap))))
    (define draw-texture
      (let ([f #f])
        (lambda (texture pos-x pos-y tint)
          (unless f
            (set! f
              (foreign-procedure "DrawTexture"
                ((& Texture) int int (& Color))
                void)))
          (f texture pos-x pos-y tint))))
    (define draw-texture-v
      (let ([f #f])
        (lambda (texture position tint)
          (unless f
            (set! f
              (foreign-procedure "DrawTextureV"
                ((& Texture) (& Vector-2) (& Color))
                void)))
          (f texture position tint))))
    (define draw-texture-ex
      (let ([f #f])
        (lambda (texture position rotation scale tint)
          (unless f
            (set! f
              (foreign-procedure "DrawTextureEx"
                ((& Texture) (& Vector-2) float float (& Color))
                void)))
          (f texture position rotation scale tint))))
    (define draw-texture-rec
      (let ([f #f])
        (lambda (texture rec position tint)
          (unless f
            (set! f
              (foreign-procedure "DrawTextureRec"
                ((& Texture) (& Rectangle) (& Vector-2) (& Color))
                void)))
          (f texture rec position tint))))
    (define draw-texture-pro
      (let ([f #f])
        (lambda (texture srcrec dstrec origin rotation tint)
          (unless f
            (set! f
              (foreign-procedure "DrawTexturePro"
                ((& Texture)
                 (& Rectangle)
                 (& Rectangle)
                 (& Vector-2)
                 float
                 (& Color))
                void)))
          (f texture srcrec dstrec origin rotation tint))))
    (define draw-texture-npatch
      (let ([f #f])
        (lambda (texture n-patch-info dstrec origin rotation tint)
          (unless f
            (set! f
              (foreign-procedure "DrawTextureNPatch"
                ((& Texture)
                 (& N-Patch-Info)
                 (& Rectangle)
                 (& Vector-2)
                 float
                 (& Color))
                void)))
          (f texture n-patch-info dstrec origin rotation tint))))
    (define color-is-equal
      (let ([f #f])
        (lambda (col-1 col-2)
          (unless f
            (set! f
              (foreign-procedure "ColorIsEqual"
                ((& Color) (& Color))
                unsigned-8)))
          (not (= (f col-1 col-2) 0)))))
    (define fade
      (let ([f #f])
        (lambda (color alpha)
          (unless f
            (set! f
              (foreign-procedure "Fade" ((& Color) float) (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst color alpha)
            dst))))
    (define color-to-int
      (let ([f #f])
        (lambda (color)
          (unless f
            (set! f (foreign-procedure "ColorToInt" ((& Color)) int)))
          (f color))))
    (define color-normalize
      (let ([f #f])
        (lambda (color)
          (unless f
            (set! f
              (foreign-procedure "ColorNormalize"
                ((& Color))
                (& Vector-4))))
          (let ([dst (make-ftype-pointer
                       Vector-4
                       (foreign-alloc (ftype-sizeof Vector-4)))])
            (f dst color)
            dst))))
    (define color-from-normalized
      (let ([f #f])
        (lambda (normalized)
          (unless f
            (set! f
              (foreign-procedure "ColorFromNormalized"
                ((& Vector-4))
                (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst normalized)
            dst))))
    (define color-to-hsv
      (let ([f #f])
        (lambda (color)
          (unless f
            (set! f
              (foreign-procedure "ColorToHSV" ((& Color)) (& Vector-3))))
          (let ([dst (make-ftype-pointer
                       Vector-3
                       (foreign-alloc (ftype-sizeof Vector-3)))])
            (f dst color)
            dst))))
    (define color-from-hsv
      (let ([f #f])
        (lambda (hue saturation value)
          (unless f
            (set! f
              (foreign-procedure "ColorFromHSV"
                (float float float)
                (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst hue saturation value)
            dst))))
    (define color-tint
      (let ([f #f])
        (lambda (color tint)
          (unless f
            (set! f
              (foreign-procedure "ColorTint"
                ((& Color) (& Color))
                (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst color tint)
            dst))))
    (define color-brightness
      (let ([f #f])
        (lambda (color factor)
          (unless f
            (set! f
              (foreign-procedure "ColorBrightness"
                ((& Color) float)
                (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst color factor)
            dst))))
    (define color-contrast
      (let ([f #f])
        (lambda (color contrast)
          (unless f
            (set! f
              (foreign-procedure "ColorContrast"
                ((& Color) float)
                (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst color contrast)
            dst))))
    (define color-alpha
      (let ([f #f])
        (lambda (color alpha)
          (unless f
            (set! f
              (foreign-procedure "ColorAlpha"
                ((& Color) float)
                (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst color alpha)
            dst))))
    (define color-alpha-blend
      (let ([f #f])
        (lambda (dst src tint)
          (unless f
            (set! f
              (foreign-procedure "ColorAlphaBlend"
                ((& Color) (& Color) (& Color))
                (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst dst src tint)
            dst))))
    (define color-lerp
      (let ([f #f])
        (lambda (color-1 color-2 factor)
          (unless f
            (set! f
              (foreign-procedure "ColorLerp"
                ((& Color) (& Color) float)
                (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst color-1 color-2 factor)
            dst))))
    (define get-color
      (let ([f #f])
        (lambda (hex-value)
          (unless f
            (set! f
              (foreign-procedure "GetColor" (unsigned) (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst hex-value)
            dst))))
    (define get-pixel-color
      (let ([f #f])
        (lambda (src-ptr format)
          (unless f
            (set! f
              (foreign-procedure "GetPixelColor" (void* int) (& Color))))
          (let ([dst (make-ftype-pointer
                       Color
                       (foreign-alloc (ftype-sizeof Color)))])
            (f dst src-ptr format)
            dst))))
    (define set-pixel-color
      (let ([f #f])
        (lambda (dst-ptr color format)
          (unless f
            (set! f
              (foreign-procedure "SetPixelColor"
                (void* (& Color) int)
                void)))
          (f dst-ptr color format))))
    (define get-pixel-data-size
      (let ([f #f])
        (lambda (width height format)
          (unless f
            (set! f
              (foreign-procedure "GetPixelDataSize" (int int int) int)))
          (f width height format))))
    (define get-font-default
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetFontDefault" () (& Font))))
          (let ([dst (make-ftype-pointer
                       Font
                       (foreign-alloc (ftype-sizeof Font)))])
            (f dst)
            dst))))
    (define load-font
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f (foreign-procedure "LoadFont" (string) (& Font))))
          (let ([dst (make-ftype-pointer
                       Font
                       (foreign-alloc (ftype-sizeof Font)))])
            (f dst file-name)
            dst))))
    (define load-font-ex
      (let ([f #f])
        (lambda (file-name font-size codepoints codepoint-count)
          (unless f
            (set! f
              (foreign-procedure "LoadFontEx"
                (string int (* int) int)
                (& Font))))
          (let ([dst (make-ftype-pointer
                       Font
                       (foreign-alloc (ftype-sizeof Font)))])
            (f dst file-name font-size codepoints codepoint-count)
            dst))))
    (define load-font-from-image
      (let ([f #f])
        (lambda (image key first-char)
          (unless f
            (set! f
              (foreign-procedure "LoadFontFromImage"
                ((& Image) (& Color) int)
                (& Font))))
          (let ([dst (make-ftype-pointer
                       Font
                       (foreign-alloc (ftype-sizeof Font)))])
            (f dst image key first-char)
            dst))))
    (define load-font-from-memory
      (let ([f #f])
        (lambda (file-type file-data data-size font-size codepoints
                 codepoint-count)
          (unless f
            (set! f
              (foreign-procedure "LoadFontFromMemory"
                (string (* unsigned-8) int int (* int) int)
                (& Font))))
          (let ([dst (make-ftype-pointer
                       Font
                       (foreign-alloc (ftype-sizeof Font)))])
            (f dst file-type file-data data-size font-size codepoints
               codepoint-count)
            dst))))
    (define is-font-valid
      (let ([f #f])
        (lambda (font)
          (unless f
            (set! f
              (foreign-procedure "IsFontValid" ((& Font)) unsigned-8)))
          (not (= (f font) 0)))))
    (define load-font-data
      (let ([f #f])
        (lambda (file-data data-size font-size codepoints
                 codepoint-count type glyph-count)
          (unless f
            (set! f
              (foreign-procedure "LoadFontData"
                ((* unsigned-8) int int (* int) int int (* int))
                (* Glyph-Info))))
          (f file-data data-size font-size codepoints codepoint-count
             type glyph-count))))
    (define gen-image-font-atlas
      (let ([f #f])
        (lambda (glyphs glyph-recs glyph-count font-size padding
                 pack-method)
          (unless f
            (set! f
              (foreign-procedure "GenImageFontAtlas"
                ((* Glyph-Info) void* int int int int)
                (& Image))))
          (let ([dst (make-ftype-pointer
                       Image
                       (foreign-alloc (ftype-sizeof Image)))])
            (f dst glyphs glyph-recs glyph-count font-size padding
               pack-method)
            dst))))
    (define unload-font-data
      (let ([f #f])
        (lambda (glyphs glyph-count)
          (unless f
            (set! f
              (foreign-procedure "UnloadFontData"
                ((* Glyph-Info) int)
                void)))
          (f glyphs glyph-count))))
    (define unload-font
      (let ([f #f])
        (lambda (font)
          (unless f
            (set! f (foreign-procedure "UnloadFont" ((& Font)) void)))
          (f font))))
    (define export-font-as-code
      (let ([f #f])
        (lambda (font file-name)
          (unless f
            (set! f
              (foreign-procedure "ExportFontAsCode"
                ((& Font) string)
                unsigned-8)))
          (not (= (f font file-name) 0)))))
    (define draw-fps
      (let ([f #f])
        (lambda (pos-x pos-y)
          (unless f
            (set! f (foreign-procedure "DrawFPS" (int int) void)))
          (f pos-x pos-y))))
    (define draw-text
      (let ([f #f])
        (lambda (text pos-x pos-y font-size color)
          (unless f
            (set! f
              (foreign-procedure "DrawText"
                (string int int int (& Color))
                void)))
          (f text pos-x pos-y font-size color))))
    (define draw-text-ex
      (let ([f #f])
        (lambda (font text position font-size spacing tint)
          (unless f
            (set! f
              (foreign-procedure "DrawTextEx"
                ((& Font) string (& Vector-2) float float (& Color))
                void)))
          (f font text position font-size spacing tint))))
    (define draw-text-pro
      (let ([f #f])
        (lambda (font text position origin rotation font-size
                 spacing tint)
          (unless f
            (set! f
              (foreign-procedure "DrawTextPro"
                ((& Font)
                 string
                 (& Vector-2)
                 (& Vector-2)
                 float
                 float
                 float
                 (& Color))
                void)))
          (f font text position origin rotation font-size spacing
             tint))))
    (define draw-text-codepoint
      (let ([f #f])
        (lambda (font codepoint position font-size tint)
          (unless f
            (set! f
              (foreign-procedure "DrawTextCodepoint"
                ((& Font) int (& Vector-2) float (& Color))
                void)))
          (f font codepoint position font-size tint))))
    (define draw-text-codepoints
      (let ([f #f])
        (lambda (font codepoints codepoint-count position font-size
                 spacing tint)
          (unless f
            (set! f
              (foreign-procedure "DrawTextCodepoints"
                ((& Font) (* int) int (& Vector-2) float float (& Color))
                void)))
          (f font codepoints codepoint-count position font-size
             spacing tint))))
    (define set-text-line-spacing
      (let ([f #f])
        (lambda (spacing)
          (unless f
            (set! f
              (foreign-procedure "SetTextLineSpacing" (int) void)))
          (f spacing))))
    (define measure-text
      (let ([f #f])
        (lambda (text font-size)
          (unless f
            (set! f (foreign-procedure "MeasureText" (string int) int)))
          (f text font-size))))
    (define measure-text-ex
      (let ([f #f])
        (lambda (font text font-size spacing)
          (unless f
            (set! f
              (foreign-procedure "MeasureTextEx"
                ((& Font) string float float)
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst font text font-size spacing)
            dst))))
    (define measure-text-codepoints
      (let ([f #f])
        (lambda (font codepoints length font-size spacing)
          (unless f
            (set! f
              (foreign-procedure "MeasureTextCodepoints"
                ((& Font) (* int) int float float)
                (& Vector-2))))
          (let ([dst (make-ftype-pointer
                       Vector-2
                       (foreign-alloc (ftype-sizeof Vector-2)))])
            (f dst font codepoints length font-size spacing)
            dst))))
    (define get-glyph-index
      (let ([f #f])
        (lambda (font codepoint)
          (unless f
            (set! f
              (foreign-procedure "GetGlyphIndex" ((& Font) int) int)))
          (f font codepoint))))
    (define get-glyph-info
      (let ([f #f])
        (lambda (font codepoint)
          (unless f
            (set! f
              (foreign-procedure "GetGlyphInfo"
                ((& Font) int)
                (& Glyph-Info))))
          (let ([dst (make-ftype-pointer
                       Glyph-Info
                       (foreign-alloc (ftype-sizeof Glyph-Info)))])
            (f dst font codepoint)
            dst))))
    (define get-glyph-atlas-rec
      (let ([f #f])
        (lambda (font codepoint)
          (unless f
            (set! f
              (foreign-procedure "GetGlyphAtlasRec"
                ((& Font) int)
                (& Rectangle))))
          (let ([dst (make-ftype-pointer
                       Rectangle
                       (foreign-alloc (ftype-sizeof Rectangle)))])
            (f dst font codepoint)
            dst))))
    (define load-utf-8
      (let ([f #f])
        (lambda (codepoints length)
          (unless f
            (set! f
              (foreign-procedure "LoadUTF8" ((* int) int) string)))
          (f codepoints length))))
    (define unload-utf-8
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f (foreign-procedure "UnloadUTF8" (string) void)))
          (f text))))
    (define load-codepoints
      (let ([f #f])
        (lambda (text count)
          (unless f
            (set! f
              (foreign-procedure "LoadCodepoints"
                (string (* int))
                (* int))))
          (f text count))))
    (define unload-codepoints
      (let ([f #f])
        (lambda (codepoints)
          (unless f
            (set! f
              (foreign-procedure "UnloadCodepoints" ((* int)) void)))
          (f codepoints))))
    (define get-codepoint-count
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f
              (foreign-procedure "GetCodepointCount" (string) int)))
          (f text))))
    (define get-codepoint
      (let ([f #f])
        (lambda (text codepoint-size)
          (unless f
            (set! f
              (foreign-procedure "GetCodepoint" (string (* int)) int)))
          (f text codepoint-size))))
    (define get-codepoint-next
      (let ([f #f])
        (lambda (text codepoint-size)
          (unless f
            (set! f
              (foreign-procedure "GetCodepointNext"
                (string (* int))
                int)))
          (f text codepoint-size))))
    (define get-codepoint-previous
      (let ([f #f])
        (lambda (text codepoint-size)
          (unless f
            (set! f
              (foreign-procedure "GetCodepointPrevious"
                (string (* int))
                int)))
          (f text codepoint-size))))
    (define codepoint-to-utf-8
      (let ([f #f])
        (lambda (codepoint utf-8size)
          (unless f
            (set! f
              (foreign-procedure "CodepointToUTF8" (int (* int)) string)))
          (f codepoint utf-8size))))
    (define load-text-lines
      (let ([f #f])
        (lambda (text count)
          (unless f
            (set! f
              (foreign-procedure "LoadTextLines" (string (* int)) void*)))
          (f text count))))
    (define unload-text-lines
      (let ([f #f])
        (lambda (text line-count)
          (unless f
            (set! f
              (foreign-procedure "UnloadTextLines" (void* int) void)))
          (f text line-count))))
    (define text-copy
      (let ([f #f])
        (lambda (dst src)
          (unless f
            (set! f (foreign-procedure "TextCopy" (string string) int)))
          (f dst src))))
    (define text-is-equal
      (let ([f #f])
        (lambda (text-1 text-2)
          (unless f
            (set! f
              (foreign-procedure "TextIsEqual"
                (string string)
                unsigned-8)))
          (not (= (f text-1 text-2) 0)))))
    (define text-length
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f (foreign-procedure "TextLength" (string) unsigned)))
          (f text))))
    (define text-subtext
      (let ([f #f])
        (lambda (text position length)
          (unless f
            (set! f
              (foreign-procedure "TextSubtext" (string int int) string)))
          (f text position length))))
    (define text-remove-spaces
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f
              (foreign-procedure "TextRemoveSpaces" (string) string)))
          (f text))))
    (define get-text-between
      (let ([f #f])
        (lambda (text begin end)
          (unless f
            (set! f
              (foreign-procedure "GetTextBetween"
                (string string string)
                string)))
          (f text begin end))))
    (define text-replace
      (let ([f #f])
        (lambda (text search replacement)
          (unless f
            (set! f
              (foreign-procedure "TextReplace"
                (string string string)
                string)))
          (f text search replacement))))
    (define text-replace-alloc
      (let ([f #f])
        (lambda (text search replacement)
          (unless f
            (set! f
              (foreign-procedure "TextReplaceAlloc"
                (string string string)
                string)))
          (f text search replacement))))
    (define text-replace-between
      (let ([f #f])
        (lambda (text begin end replacement)
          (unless f
            (set! f
              (foreign-procedure "TextReplaceBetween"
                (string string string string)
                string)))
          (f text begin end replacement))))
    (define text-replace-between-alloc
      (let ([f #f])
        (lambda (text begin end replacement)
          (unless f
            (set! f
              (foreign-procedure "TextReplaceBetweenAlloc"
                (string string string string)
                string)))
          (f text begin end replacement))))
    (define text-insert
      (let ([f #f])
        (lambda (text insert position)
          (unless f
            (set! f
              (foreign-procedure "TextInsert"
                (string string int)
                string)))
          (f text insert position))))
    (define text-insert-alloc
      (let ([f #f])
        (lambda (text insert position)
          (unless f
            (set! f
              (foreign-procedure "TextInsertAlloc"
                (string string int)
                string)))
          (f text insert position))))
    (define text-join
      (let ([f #f])
        (lambda (text-list count delimiter)
          (unless f
            (set! f
              (foreign-procedure "TextJoin" (void* int string) string)))
          (f text-list count delimiter))))
    (define text-split
      (let ([f #f])
        (lambda (text delimiter count)
          (unless f
            (set! f
              (foreign-procedure "TextSplit"
                (string char (* int))
                void*)))
          (f text delimiter count))))
    (define text-append
      (let ([f #f])
        (lambda (text append position)
          (unless f
            (set! f
              (foreign-procedure "TextAppend"
                (string string (* int))
                void)))
          (f text append position))))
    (define text-find-index
      (let ([f #f])
        (lambda (text search)
          (unless f
            (set! f
              (foreign-procedure "TextFindIndex" (string string) int)))
          (f text search))))
    (define text-to-upper
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f (foreign-procedure "TextToUpper" (string) string)))
          (f text))))
    (define text-to-lower
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f (foreign-procedure "TextToLower" (string) string)))
          (f text))))
    (define text-to-pascal
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f (foreign-procedure "TextToPascal" (string) string)))
          (f text))))
    (define text-to-snake
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f (foreign-procedure "TextToSnake" (string) string)))
          (f text))))
    (define text-to-camel
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f (foreign-procedure "TextToCamel" (string) string)))
          (f text))))
    (define text-to-integer
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f (foreign-procedure "TextToInteger" (string) int)))
          (f text))))
    (define text-to-float
      (let ([f #f])
        (lambda (text)
          (unless f
            (set! f (foreign-procedure "TextToFloat" (string) float)))
          (f text))))
    (define draw-line-3d
      (let ([f #f])
        (lambda (start-pos end-pos color)
          (unless f
            (set! f
              (foreign-procedure "DrawLine3D"
                ((& Vector-3) (& Vector-3) (& Color))
                void)))
          (f start-pos end-pos color))))
    (define draw-point-3d
      (let ([f #f])
        (lambda (position color)
          (unless f
            (set! f
              (foreign-procedure "DrawPoint3D"
                ((& Vector-3) (& Color))
                void)))
          (f position color))))
    (define draw-circle-3d
      (let ([f #f])
        (lambda (center radius rotation-axis rotation-angle color)
          (unless f
            (set! f
              (foreign-procedure "DrawCircle3D"
                ((& Vector-3) float (& Vector-3) float (& Color))
                void)))
          (f center radius rotation-axis rotation-angle color))))
    (define draw-triangle-3d
      (let ([f #f])
        (lambda (v-1 v-2 v-3 color)
          (unless f
            (set! f
              (foreign-procedure "DrawTriangle3D"
                ((& Vector-3) (& Vector-3) (& Vector-3) (& Color))
                void)))
          (f v-1 v-2 v-3 color))))
    (define draw-triangle-strip-3d
      (let ([f #f])
        (lambda (points point-count color)
          (unless f
            (set! f
              (foreign-procedure "DrawTriangleStrip3D"
                ((* Vector-3) int (& Color))
                void)))
          (f points point-count color))))
    (define draw-cube
      (let ([f #f])
        (lambda (position width height length color)
          (unless f
            (set! f
              (foreign-procedure "DrawCube"
                ((& Vector-3) float float float (& Color))
                void)))
          (f position width height length color))))
    (define draw-cube-v
      (let ([f #f])
        (lambda (position size color)
          (unless f
            (set! f
              (foreign-procedure "DrawCubeV"
                ((& Vector-3) (& Vector-3) (& Color))
                void)))
          (f position size color))))
    (define draw-cube-wires
      (let ([f #f])
        (lambda (position width height length color)
          (unless f
            (set! f
              (foreign-procedure "DrawCubeWires"
                ((& Vector-3) float float float (& Color))
                void)))
          (f position width height length color))))
    (define draw-cube-wires-v
      (let ([f #f])
        (lambda (position size color)
          (unless f
            (set! f
              (foreign-procedure "DrawCubeWiresV"
                ((& Vector-3) (& Vector-3) (& Color))
                void)))
          (f position size color))))
    (define draw-sphere
      (let ([f #f])
        (lambda (center-pos radius color)
          (unless f
            (set! f
              (foreign-procedure "DrawSphere"
                ((& Vector-3) float (& Color))
                void)))
          (f center-pos radius color))))
    (define draw-sphere-ex
      (let ([f #f])
        (lambda (center-pos radius rings slices color)
          (unless f
            (set! f
              (foreign-procedure "DrawSphereEx"
                ((& Vector-3) float int int (& Color))
                void)))
          (f center-pos radius rings slices color))))
    (define draw-sphere-wires
      (let ([f #f])
        (lambda (center-pos radius rings slices color)
          (unless f
            (set! f
              (foreign-procedure "DrawSphereWires"
                ((& Vector-3) float int int (& Color))
                void)))
          (f center-pos radius rings slices color))))
    (define draw-cylinder
      (let ([f #f])
        (lambda (position radius-top radius-bottom height sides
                 color)
          (unless f
            (set! f
              (foreign-procedure "DrawCylinder"
                ((& Vector-3) float float float int (& Color))
                void)))
          (f position radius-top radius-bottom height sides color))))
    (define draw-cylinder-ex
      (let ([f #f])
        (lambda (start-pos end-pos start-radius end-radius sides
                 color)
          (unless f
            (set! f
              (foreign-procedure "DrawCylinderEx"
                ((& Vector-3) (& Vector-3) float float int (& Color))
                void)))
          (f start-pos end-pos start-radius end-radius sides color))))
    (define draw-cylinder-wires
      (let ([f #f])
        (lambda (position radius-top radius-bottom height sides
                 color)
          (unless f
            (set! f
              (foreign-procedure "DrawCylinderWires"
                ((& Vector-3) float float float int (& Color))
                void)))
          (f position radius-top radius-bottom height sides color))))
    (define draw-cylinder-wires-ex
      (let ([f #f])
        (lambda (start-pos end-pos start-radius end-radius sides
                 color)
          (unless f
            (set! f
              (foreign-procedure "DrawCylinderWiresEx"
                ((& Vector-3) (& Vector-3) float float int (& Color))
                void)))
          (f start-pos end-pos start-radius end-radius sides color))))
    (define draw-capsule
      (let ([f #f])
        (lambda (start-pos end-pos radius rings slices color)
          (unless f
            (set! f
              (foreign-procedure "DrawCapsule"
                ((& Vector-3) (& Vector-3) float int int (& Color))
                void)))
          (f start-pos end-pos radius rings slices color))))
    (define draw-capsule-wires
      (let ([f #f])
        (lambda (start-pos end-pos radius rings slices color)
          (unless f
            (set! f
              (foreign-procedure "DrawCapsuleWires"
                ((& Vector-3) (& Vector-3) float int int (& Color))
                void)))
          (f start-pos end-pos radius rings slices color))))
    (define draw-plane
      (let ([f #f])
        (lambda (center-pos size color)
          (unless f
            (set! f
              (foreign-procedure "DrawPlane"
                ((& Vector-3) (& Vector-2) (& Color))
                void)))
          (f center-pos size color))))
    (define draw-ray
      (let ([f #f])
        (lambda (ray color)
          (unless f
            (set! f
              (foreign-procedure "DrawRay" ((& Ray) (& Color)) void)))
          (f ray color))))
    (define draw-grid
      (let ([f #f])
        (lambda (slices spacing)
          (unless f
            (set! f (foreign-procedure "DrawGrid" (int float) void)))
          (f slices spacing))))
    (define load-model
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f (foreign-procedure "LoadModel" (string) (& Model))))
          (let ([dst (make-ftype-pointer
                       Model
                       (foreign-alloc (ftype-sizeof Model)))])
            (f dst file-name)
            dst))))
    (define load-model-from-mesh
      (let ([f #f])
        (lambda (mesh)
          (unless f
            (set! f
              (foreign-procedure "LoadModelFromMesh"
                ((& Mesh))
                (& Model))))
          (let ([dst (make-ftype-pointer
                       Model
                       (foreign-alloc (ftype-sizeof Model)))])
            (f dst mesh)
            dst))))
    (define is-model-valid
      (let ([f #f])
        (lambda (model)
          (unless f
            (set! f
              (foreign-procedure "IsModelValid" ((& Model)) unsigned-8)))
          (not (= (f model) 0)))))
    (define unload-model
      (let ([f #f])
        (lambda (model)
          (unless f
            (set! f (foreign-procedure "UnloadModel" ((& Model)) void)))
          (f model))))
    (define get-model-bounding-box
      (let ([f #f])
        (lambda (model)
          (unless f
            (set! f
              (foreign-procedure "GetModelBoundingBox"
                ((& Model))
                (& Bounding-Box))))
          (let ([dst (make-ftype-pointer
                       Bounding-Box
                       (foreign-alloc (ftype-sizeof Bounding-Box)))])
            (f dst model)
            dst))))
    (define draw-model
      (let ([f #f])
        (lambda (model position scale tint)
          (unless f
            (set! f
              (foreign-procedure "DrawModel"
                ((& Model) (& Vector-3) float (& Color))
                void)))
          (f model position scale tint))))
    (define draw-model-ex
      (let ([f #f])
        (lambda (model position rotation-axis rotation-angle scale
                 tint)
          (unless f
            (set! f
              (foreign-procedure "DrawModelEx"
                ((& Model)
                 (& Vector-3)
                 (& Vector-3)
                 float
                 (& Vector-3)
                 (& Color))
                void)))
          (f model position rotation-axis rotation-angle scale
             tint))))
    (define draw-model-wires
      (let ([f #f])
        (lambda (model position scale tint)
          (unless f
            (set! f
              (foreign-procedure "DrawModelWires"
                ((& Model) (& Vector-3) float (& Color))
                void)))
          (f model position scale tint))))
    (define draw-model-wires-ex
      (let ([f #f])
        (lambda (model position rotation-axis rotation-angle scale
                 tint)
          (unless f
            (set! f
              (foreign-procedure "DrawModelWiresEx"
                ((& Model)
                 (& Vector-3)
                 (& Vector-3)
                 float
                 (& Vector-3)
                 (& Color))
                void)))
          (f model position rotation-axis rotation-angle scale
             tint))))
    (define draw-bounding-box
      (let ([f #f])
        (lambda (box color)
          (unless f
            (set! f
              (foreign-procedure "DrawBoundingBox"
                ((& Bounding-Box) (& Color))
                void)))
          (f box color))))
    (define draw-billboard
      (let ([f #f])
        (lambda (camera texture position scale tint)
          (unless f
            (set! f
              (foreign-procedure "DrawBillboard"
                ((& Camera-3D) (& Texture) (& Vector-3) float (& Color))
                void)))
          (f camera texture position scale tint))))
    (define draw-billboard-rec
      (let ([f #f])
        (lambda (camera texture rec position size tint)
          (unless f
            (set! f
              (foreign-procedure "DrawBillboardRec"
                ((& Camera-3D)
                 (& Texture)
                 (& Rectangle)
                 (& Vector-3)
                 (& Vector-2)
                 (& Color))
                void)))
          (f camera texture rec position size tint))))
    (define draw-billboard-pro
      (let ([f #f])
        (lambda (camera texture rec position up size origin rotation
                 tint)
          (unless f
            (set! f
              (foreign-procedure "DrawBillboardPro"
                ((& Camera-3D)
                 (& Texture)
                 (& Rectangle)
                 (& Vector-3)
                 (& Vector-3)
                 (& Vector-2)
                 (& Vector-2)
                 float
                 (& Color))
                void)))
          (f camera texture rec position up size origin rotation
             tint))))
    (define upload-mesh
      (let ([f #f])
        (lambda (mesh dynamic)
          (unless f
            (set! f
              (foreign-procedure "UploadMesh"
                ((* Mesh) unsigned-8)
                void)))
          (f mesh dynamic))))
    (define update-mesh-buffer
      (let ([f #f])
        (lambda (mesh index data data-size offset)
          (unless f
            (set! f
              (foreign-procedure "UpdateMeshBuffer"
                ((& Mesh) int void* int int)
                void)))
          (f mesh index data data-size offset))))
    (define unload-mesh
      (let ([f #f])
        (lambda (mesh)
          (unless f
            (set! f (foreign-procedure "UnloadMesh" ((& Mesh)) void)))
          (f mesh))))
    (define draw-mesh
      (let ([f #f])
        (lambda (mesh material transform)
          (unless f
            (set! f
              (foreign-procedure "DrawMesh"
                ((& Mesh) (& Material) (& Matrix))
                void)))
          (f mesh material transform))))
    (define draw-mesh-instanced
      (let ([f #f])
        (lambda (mesh material transforms instances)
          (unless f
            (set! f
              (foreign-procedure "DrawMeshInstanced"
                ((& Mesh) (& Material) (* Matrix) int)
                void)))
          (f mesh material transforms instances))))
    (define get-mesh-bounding-box
      (let ([f #f])
        (lambda (mesh)
          (unless f
            (set! f
              (foreign-procedure "GetMeshBoundingBox"
                ((& Mesh))
                (& Bounding-Box))))
          (let ([dst (make-ftype-pointer
                       Bounding-Box
                       (foreign-alloc (ftype-sizeof Bounding-Box)))])
            (f dst mesh)
            dst))))
    (define gen-mesh-tangents
      (let ([f #f])
        (lambda (mesh)
          (unless f
            (set! f
              (foreign-procedure "GenMeshTangents" ((* Mesh)) void)))
          (f mesh))))
    (define export-mesh
      (let ([f #f])
        (lambda (mesh file-name)
          (unless f
            (set! f
              (foreign-procedure "ExportMesh"
                ((& Mesh) string)
                unsigned-8)))
          (not (= (f mesh file-name) 0)))))
    (define export-mesh-as-code
      (let ([f #f])
        (lambda (mesh file-name)
          (unless f
            (set! f
              (foreign-procedure "ExportMeshAsCode"
                ((& Mesh) string)
                unsigned-8)))
          (not (= (f mesh file-name) 0)))))
    (define gen-mesh-poly
      (let ([f #f])
        (lambda (sides radius)
          (unless f
            (set! f
              (foreign-procedure "GenMeshPoly" (int float) (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst sides radius)
            dst))))
    (define gen-mesh-plane
      (let ([f #f])
        (lambda (width length res-x res-z)
          (unless f
            (set! f
              (foreign-procedure "GenMeshPlane"
                (float float int int)
                (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst width length res-x res-z)
            dst))))
    (define gen-mesh-cube
      (let ([f #f])
        (lambda (width height length)
          (unless f
            (set! f
              (foreign-procedure "GenMeshCube"
                (float float float)
                (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst width height length)
            dst))))
    (define gen-mesh-sphere
      (let ([f #f])
        (lambda (radius rings slices)
          (unless f
            (set! f
              (foreign-procedure "GenMeshSphere"
                (float int int)
                (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst radius rings slices)
            dst))))
    (define gen-mesh-hemi-sphere
      (let ([f #f])
        (lambda (radius rings slices)
          (unless f
            (set! f
              (foreign-procedure "GenMeshHemiSphere"
                (float int int)
                (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst radius rings slices)
            dst))))
    (define gen-mesh-cylinder
      (let ([f #f])
        (lambda (radius height slices)
          (unless f
            (set! f
              (foreign-procedure "GenMeshCylinder"
                (float float int)
                (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst radius height slices)
            dst))))
    (define gen-mesh-cone
      (let ([f #f])
        (lambda (radius height slices)
          (unless f
            (set! f
              (foreign-procedure "GenMeshCone"
                (float float int)
                (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst radius height slices)
            dst))))
    (define gen-mesh-torus
      (let ([f #f])
        (lambda (radius size rad-seg sides)
          (unless f
            (set! f
              (foreign-procedure "GenMeshTorus"
                (float float int int)
                (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst radius size rad-seg sides)
            dst))))
    (define gen-mesh-knot
      (let ([f #f])
        (lambda (radius size rad-seg sides)
          (unless f
            (set! f
              (foreign-procedure "GenMeshKnot"
                (float float int int)
                (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst radius size rad-seg sides)
            dst))))
    (define gen-mesh-heightmap
      (let ([f #f])
        (lambda (heightmap size)
          (unless f
            (set! f
              (foreign-procedure "GenMeshHeightmap"
                ((& Image) (& Vector-3))
                (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst heightmap size)
            dst))))
    (define gen-mesh-cubicmap
      (let ([f #f])
        (lambda (cubicmap cube-size)
          (unless f
            (set! f
              (foreign-procedure "GenMeshCubicmap"
                ((& Image) (& Vector-3))
                (& Mesh))))
          (let ([dst (make-ftype-pointer
                       Mesh
                       (foreign-alloc (ftype-sizeof Mesh)))])
            (f dst cubicmap cube-size)
            dst))))
    (define load-materials
      (let ([f #f])
        (lambda (file-name material-count)
          (unless f
            (set! f
              (foreign-procedure "LoadMaterials"
                (string (* int))
                (* Material))))
          (f file-name material-count))))
    (define load-material-default
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "LoadMaterialDefault" () (& Material))))
          (let ([dst (make-ftype-pointer
                       Material
                       (foreign-alloc (ftype-sizeof Material)))])
            (f dst)
            dst))))
    (define is-material-valid
      (let ([f #f])
        (lambda (material)
          (unless f
            (set! f
              (foreign-procedure "IsMaterialValid"
                ((& Material))
                unsigned-8)))
          (not (= (f material) 0)))))
    (define unload-material
      (let ([f #f])
        (lambda (material)
          (unless f
            (set! f
              (foreign-procedure "UnloadMaterial" ((& Material)) void)))
          (f material))))
    (define set-material-texture
      (let ([f #f])
        (lambda (material map-type texture)
          (unless f
            (set! f
              (foreign-procedure "SetMaterialTexture"
                ((* Material) int (& Texture))
                void)))
          (f material map-type texture))))
    (define set-model-mesh-material
      (let ([f #f])
        (lambda (model mesh-id material-id)
          (unless f
            (set! f
              (foreign-procedure "SetModelMeshMaterial"
                ((* Model) int int)
                void)))
          (f model mesh-id material-id))))
    (define load-model-animations
      (let ([f #f])
        (lambda (file-name anim-count)
          (unless f
            (set! f
              (foreign-procedure "LoadModelAnimations"
                (string (* int))
                (* Model-Animation))))
          (f file-name anim-count))))
    (define update-model-animation
      (let ([f #f])
        (lambda (model anim frame)
          (unless f
            (set! f
              (foreign-procedure "UpdateModelAnimation"
                ((& Model) (& Model-Animation) float)
                void)))
          (f model anim frame))))
    (define update-model-animation-ex
      (let ([f #f])
        (lambda (model anim-a frame-a anim-b frame-b blend)
          (unless f
            (set! f
              (foreign-procedure "UpdateModelAnimationEx"
                ((& Model)
                 (& Model-Animation)
                 float
                 (& Model-Animation)
                 float
                 float)
                void)))
          (f model anim-a frame-a anim-b frame-b blend))))
    (define unload-model-animations
      (let ([f #f])
        (lambda (animations anim-count)
          (unless f
            (set! f
              (foreign-procedure "UnloadModelAnimations"
                ((* Model-Animation) int)
                void)))
          (f animations anim-count))))
    (define is-model-animation-valid
      (let ([f #f])
        (lambda (model anim)
          (unless f
            (set! f
              (foreign-procedure "IsModelAnimationValid"
                ((& Model) (& Model-Animation))
                unsigned-8)))
          (not (= (f model anim) 0)))))
    (define check-collision-spheres
      (let ([f #f])
        (lambda (center-1 radius-1 center-2 radius-2)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionSpheres"
                ((& Vector-3) float (& Vector-3) float)
                unsigned-8)))
          (not (= (f center-1 radius-1 center-2 radius-2) 0)))))
    (define check-collision-boxes
      (let ([f #f])
        (lambda (box-1 box-2)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionBoxes"
                ((& Bounding-Box) (& Bounding-Box))
                unsigned-8)))
          (not (= (f box-1 box-2) 0)))))
    (define check-collision-box-sphere
      (let ([f #f])
        (lambda (box center radius)
          (unless f
            (set! f
              (foreign-procedure "CheckCollisionBoxSphere"
                ((& Bounding-Box) (& Vector-3) float)
                unsigned-8)))
          (not (= (f box center radius) 0)))))
    (define get-ray-collision-sphere
      (let ([f #f])
        (lambda (ray center radius)
          (unless f
            (set! f
              (foreign-procedure "GetRayCollisionSphere"
                ((& Ray) (& Vector-3) float)
                (& Ray-Collision))))
          (let ([dst (make-ftype-pointer
                       Ray-Collision
                       (foreign-alloc (ftype-sizeof Ray-Collision)))])
            (f dst ray center radius)
            dst))))
    (define get-ray-collision-box
      (let ([f #f])
        (lambda (ray box)
          (unless f
            (set! f
              (foreign-procedure "GetRayCollisionBox"
                ((& Ray) (& Bounding-Box))
                (& Ray-Collision))))
          (let ([dst (make-ftype-pointer
                       Ray-Collision
                       (foreign-alloc (ftype-sizeof Ray-Collision)))])
            (f dst ray box)
            dst))))
    (define get-ray-collision-mesh
      (let ([f #f])
        (lambda (ray mesh transform)
          (unless f
            (set! f
              (foreign-procedure "GetRayCollisionMesh"
                ((& Ray) (& Mesh) (& Matrix))
                (& Ray-Collision))))
          (let ([dst (make-ftype-pointer
                       Ray-Collision
                       (foreign-alloc (ftype-sizeof Ray-Collision)))])
            (f dst ray mesh transform)
            dst))))
    (define get-ray-collision-triangle
      (let ([f #f])
        (lambda (ray p-1 p-2 p-3)
          (unless f
            (set! f
              (foreign-procedure "GetRayCollisionTriangle"
                ((& Ray) (& Vector-3) (& Vector-3) (& Vector-3))
                (& Ray-Collision))))
          (let ([dst (make-ftype-pointer
                       Ray-Collision
                       (foreign-alloc (ftype-sizeof Ray-Collision)))])
            (f dst ray p-1 p-2 p-3)
            dst))))
    (define get-ray-collision-quad
      (let ([f #f])
        (lambda (ray p-1 p-2 p-3 p-4)
          (unless f
            (set! f
              (foreign-procedure "GetRayCollisionQuad"
                ((& Ray)
                 (& Vector-3)
                 (& Vector-3)
                 (& Vector-3)
                 (& Vector-3))
                (& Ray-Collision))))
          (let ([dst (make-ftype-pointer
                       Ray-Collision
                       (foreign-alloc (ftype-sizeof Ray-Collision)))])
            (f dst ray p-1 p-2 p-3 p-4)
            dst))))
    (define init-audio-device
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "InitAudioDevice" () void)))
          (f))))
    (define close-audio-device
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "CloseAudioDevice" () void)))
          (f))))
    (define is-audio-device-ready
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f
              (foreign-procedure "IsAudioDeviceReady" () unsigned-8)))
          (not (= (f) 0)))))
    (define set-master-volume
      (let ([f #f])
        (lambda (volume)
          (unless f
            (set! f (foreign-procedure "SetMasterVolume" (float) void)))
          (f volume))))
    (define get-master-volume
      (let ([f #f])
        (lambda ()
          (unless f
            (set! f (foreign-procedure "GetMasterVolume" () float)))
          (f))))
    (define load-wave
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f (foreign-procedure "LoadWave" (string) (& Wave))))
          (let ([dst (make-ftype-pointer
                       Wave
                       (foreign-alloc (ftype-sizeof Wave)))])
            (f dst file-name)
            dst))))
    (define load-wave-from-memory
      (let ([f #f])
        (lambda (file-type file-data data-size)
          (unless f
            (set! f
              (foreign-procedure "LoadWaveFromMemory"
                (string (* unsigned-8) int)
                (& Wave))))
          (let ([dst (make-ftype-pointer
                       Wave
                       (foreign-alloc (ftype-sizeof Wave)))])
            (f dst file-type file-data data-size)
            dst))))
    (define is-wave-valid
      (let ([f #f])
        (lambda (wave)
          (unless f
            (set! f
              (foreign-procedure "IsWaveValid" ((& Wave)) unsigned-8)))
          (not (= (f wave) 0)))))
    (define load-sound
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f (foreign-procedure "LoadSound" (string) (& Sound))))
          (let ([dst (make-ftype-pointer
                       Sound
                       (foreign-alloc (ftype-sizeof Sound)))])
            (f dst file-name)
            dst))))
    (define load-sound-from-wave
      (let ([f #f])
        (lambda (wave)
          (unless f
            (set! f
              (foreign-procedure "LoadSoundFromWave"
                ((& Wave))
                (& Sound))))
          (let ([dst (make-ftype-pointer
                       Sound
                       (foreign-alloc (ftype-sizeof Sound)))])
            (f dst wave)
            dst))))
    (define load-sound-alias
      (let ([f #f])
        (lambda (source)
          (unless f
            (set! f
              (foreign-procedure "LoadSoundAlias" ((& Sound)) (& Sound))))
          (let ([dst (make-ftype-pointer
                       Sound
                       (foreign-alloc (ftype-sizeof Sound)))])
            (f dst source)
            dst))))
    (define is-sound-valid
      (let ([f #f])
        (lambda (sound)
          (unless f
            (set! f
              (foreign-procedure "IsSoundValid" ((& Sound)) unsigned-8)))
          (not (= (f sound) 0)))))
    (define update-sound
      (let ([f #f])
        (lambda (sound data frame-count)
          (unless f
            (set! f
              (foreign-procedure "UpdateSound"
                ((& Sound) void* int)
                void)))
          (f sound data frame-count))))
    (define unload-wave
      (let ([f #f])
        (lambda (wave)
          (unless f
            (set! f (foreign-procedure "UnloadWave" ((& Wave)) void)))
          (f wave))))
    (define unload-sound
      (let ([f #f])
        (lambda (sound)
          (unless f
            (set! f (foreign-procedure "UnloadSound" ((& Sound)) void)))
          (f sound))))
    (define unload-sound-alias
      (let ([f #f])
        (lambda (alias)
          (unless f
            (set! f
              (foreign-procedure "UnloadSoundAlias" ((& Sound)) void)))
          (f alias))))
    (define export-wave
      (let ([f #f])
        (lambda (wave file-name)
          (unless f
            (set! f
              (foreign-procedure "ExportWave"
                ((& Wave) string)
                unsigned-8)))
          (not (= (f wave file-name) 0)))))
    (define export-wave-as-code
      (let ([f #f])
        (lambda (wave file-name)
          (unless f
            (set! f
              (foreign-procedure "ExportWaveAsCode"
                ((& Wave) string)
                unsigned-8)))
          (not (= (f wave file-name) 0)))))
    (define play-sound
      (let ([f #f])
        (lambda (sound)
          (unless f
            (set! f (foreign-procedure "PlaySound" ((& Sound)) void)))
          (f sound))))
    (define stop-sound
      (let ([f #f])
        (lambda (sound)
          (unless f
            (set! f (foreign-procedure "StopSound" ((& Sound)) void)))
          (f sound))))
    (define pause-sound
      (let ([f #f])
        (lambda (sound)
          (unless f
            (set! f (foreign-procedure "PauseSound" ((& Sound)) void)))
          (f sound))))
    (define resume-sound
      (let ([f #f])
        (lambda (sound)
          (unless f
            (set! f (foreign-procedure "ResumeSound" ((& Sound)) void)))
          (f sound))))
    (define is-sound-playing
      (let ([f #f])
        (lambda (sound)
          (unless f
            (set! f
              (foreign-procedure "IsSoundPlaying"
                ((& Sound))
                unsigned-8)))
          (not (= (f sound) 0)))))
    (define set-sound-volume
      (let ([f #f])
        (lambda (sound volume)
          (unless f
            (set! f
              (foreign-procedure "SetSoundVolume"
                ((& Sound) float)
                void)))
          (f sound volume))))
    (define set-sound-pitch
      (let ([f #f])
        (lambda (sound pitch)
          (unless f
            (set! f
              (foreign-procedure "SetSoundPitch" ((& Sound) float) void)))
          (f sound pitch))))
    (define set-sound-pan
      (let ([f #f])
        (lambda (sound pan)
          (unless f
            (set! f
              (foreign-procedure "SetSoundPan" ((& Sound) float) void)))
          (f sound pan))))
    (define wave-copy
      (let ([f #f])
        (lambda (wave)
          (unless f
            (set! f (foreign-procedure "WaveCopy" ((& Wave)) (& Wave))))
          (let ([dst (make-ftype-pointer
                       Wave
                       (foreign-alloc (ftype-sizeof Wave)))])
            (f dst wave)
            dst))))
    (define wave-crop
      (let ([f #f])
        (lambda (wave init-frame final-frame)
          (unless f
            (set! f
              (foreign-procedure "WaveCrop" ((* Wave) int int) void)))
          (f wave init-frame final-frame))))
    (define wave-format
      (let ([f #f])
        (lambda (wave sample-rate sample-size channels)
          (unless f
            (set! f
              (foreign-procedure "WaveFormat"
                ((* Wave) int int int)
                void)))
          (f wave sample-rate sample-size channels))))
    (define load-wave-samples
      (let ([f #f])
        (lambda (wave)
          (unless f
            (set! f
              (foreign-procedure "LoadWaveSamples" ((& Wave)) (* float))))
          (f wave))))
    (define unload-wave-samples
      (let ([f #f])
        (lambda (samples)
          (unless f
            (set! f
              (foreign-procedure "UnloadWaveSamples" ((* float)) void)))
          (f samples))))
    (define load-music-stream
      (let ([f #f])
        (lambda (file-name)
          (unless f
            (set! f
              (foreign-procedure "LoadMusicStream" (string) (& Music))))
          (let ([dst (make-ftype-pointer
                       Music
                       (foreign-alloc (ftype-sizeof Music)))])
            (f dst file-name)
            dst))))
    (define load-music-stream-from-memory
      (let ([f #f])
        (lambda (file-type data data-size)
          (unless f
            (set! f
              (foreign-procedure "LoadMusicStreamFromMemory"
                (string (* unsigned-8) int)
                (& Music))))
          (let ([dst (make-ftype-pointer
                       Music
                       (foreign-alloc (ftype-sizeof Music)))])
            (f dst file-type data data-size)
            dst))))
    (define is-music-valid
      (let ([f #f])
        (lambda (music)
          (unless f
            (set! f
              (foreign-procedure "IsMusicValid" ((& Music)) unsigned-8)))
          (not (= (f music) 0)))))
    (define unload-music-stream
      (let ([f #f])
        (lambda (music)
          (unless f
            (set! f
              (foreign-procedure "UnloadMusicStream" ((& Music)) void)))
          (f music))))
    (define play-music-stream
      (let ([f #f])
        (lambda (music)
          (unless f
            (set! f
              (foreign-procedure "PlayMusicStream" ((& Music)) void)))
          (f music))))
    (define is-music-stream-playing
      (let ([f #f])
        (lambda (music)
          (unless f
            (set! f
              (foreign-procedure "IsMusicStreamPlaying"
                ((& Music))
                unsigned-8)))
          (not (= (f music) 0)))))
    (define update-music-stream
      (let ([f #f])
        (lambda (music)
          (unless f
            (set! f
              (foreign-procedure "UpdateMusicStream" ((& Music)) void)))
          (f music))))
    (define stop-music-stream
      (let ([f #f])
        (lambda (music)
          (unless f
            (set! f
              (foreign-procedure "StopMusicStream" ((& Music)) void)))
          (f music))))
    (define pause-music-stream
      (let ([f #f])
        (lambda (music)
          (unless f
            (set! f
              (foreign-procedure "PauseMusicStream" ((& Music)) void)))
          (f music))))
    (define resume-music-stream
      (let ([f #f])
        (lambda (music)
          (unless f
            (set! f
              (foreign-procedure "ResumeMusicStream" ((& Music)) void)))
          (f music))))
    (define seek-music-stream
      (let ([f #f])
        (lambda (music position)
          (unless f
            (set! f
              (foreign-procedure "SeekMusicStream"
                ((& Music) float)
                void)))
          (f music position))))
    (define set-music-volume
      (let ([f #f])
        (lambda (music volume)
          (unless f
            (set! f
              (foreign-procedure "SetMusicVolume"
                ((& Music) float)
                void)))
          (f music volume))))
    (define set-music-pitch
      (let ([f #f])
        (lambda (music pitch)
          (unless f
            (set! f
              (foreign-procedure "SetMusicPitch" ((& Music) float) void)))
          (f music pitch))))
    (define set-music-pan
      (let ([f #f])
        (lambda (music pan)
          (unless f
            (set! f
              (foreign-procedure "SetMusicPan" ((& Music) float) void)))
          (f music pan))))
    (define get-music-time-length
      (let ([f #f])
        (lambda (music)
          (unless f
            (set! f
              (foreign-procedure "GetMusicTimeLength" ((& Music)) float)))
          (f music))))
    (define get-music-time-played
      (let ([f #f])
        (lambda (music)
          (unless f
            (set! f
              (foreign-procedure "GetMusicTimePlayed" ((& Music)) float)))
          (f music))))
    (define load-audio-stream
      (let ([f #f])
        (lambda (sample-rate sample-size channels)
          (unless f
            (set! f
              (foreign-procedure "LoadAudioStream"
                (unsigned unsigned unsigned)
                (& Audio-Stream))))
          (let ([dst (make-ftype-pointer
                       Audio-Stream
                       (foreign-alloc (ftype-sizeof Audio-Stream)))])
            (f dst sample-rate sample-size channels)
            dst))))
    (define is-audio-stream-valid
      (let ([f #f])
        (lambda (stream)
          (unless f
            (set! f
              (foreign-procedure "IsAudioStreamValid"
                ((& Audio-Stream))
                unsigned-8)))
          (not (= (f stream) 0)))))
    (define unload-audio-stream
      (let ([f #f])
        (lambda (stream)
          (unless f
            (set! f
              (foreign-procedure "UnloadAudioStream"
                ((& Audio-Stream))
                void)))
          (f stream))))
    (define update-audio-stream
      (let ([f #f])
        (lambda (stream data frame-count)
          (unless f
            (set! f
              (foreign-procedure "UpdateAudioStream"
                ((& Audio-Stream) void* int)
                void)))
          (f stream data frame-count))))
    (define is-audio-stream-processed
      (let ([f #f])
        (lambda (stream)
          (unless f
            (set! f
              (foreign-procedure "IsAudioStreamProcessed"
                ((& Audio-Stream))
                unsigned-8)))
          (not (= (f stream) 0)))))
    (define play-audio-stream
      (let ([f #f])
        (lambda (stream)
          (unless f
            (set! f
              (foreign-procedure "PlayAudioStream"
                ((& Audio-Stream))
                void)))
          (f stream))))
    (define pause-audio-stream
      (let ([f #f])
        (lambda (stream)
          (unless f
            (set! f
              (foreign-procedure "PauseAudioStream"
                ((& Audio-Stream))
                void)))
          (f stream))))
    (define resume-audio-stream
      (let ([f #f])
        (lambda (stream)
          (unless f
            (set! f
              (foreign-procedure "ResumeAudioStream"
                ((& Audio-Stream))
                void)))
          (f stream))))
    (define is-audio-stream-playing
      (let ([f #f])
        (lambda (stream)
          (unless f
            (set! f
              (foreign-procedure "IsAudioStreamPlaying"
                ((& Audio-Stream))
                unsigned-8)))
          (not (= (f stream) 0)))))
    (define stop-audio-stream
      (let ([f #f])
        (lambda (stream)
          (unless f
            (set! f
              (foreign-procedure "StopAudioStream"
                ((& Audio-Stream))
                void)))
          (f stream))))
    (define set-audio-stream-volume
      (let ([f #f])
        (lambda (stream volume)
          (unless f
            (set! f
              (foreign-procedure "SetAudioStreamVolume"
                ((& Audio-Stream) float)
                void)))
          (f stream volume))))
    (define set-audio-stream-pitch
      (let ([f #f])
        (lambda (stream pitch)
          (unless f
            (set! f
              (foreign-procedure "SetAudioStreamPitch"
                ((& Audio-Stream) float)
                void)))
          (f stream pitch))))
    (define set-audio-stream-pan
      (let ([f #f])
        (lambda (stream pan)
          (unless f
            (set! f
              (foreign-procedure "SetAudioStreamPan"
                ((& Audio-Stream) float)
                void)))
          (f stream pan))))
    (define set-audio-stream-buffer-size-default
      (let ([f #f])
        (lambda (size)
          (unless f
            (set! f
              (foreign-procedure "SetAudioStreamBufferSizeDefault"
                (int)
                void)))
          (f size))))
    (define set-audio-stream-callback
      (let ([f #f])
        (lambda (stream callback)
          (unless f
            (set! f
              (foreign-procedure "SetAudioStreamCallback"
                ((& Audio-Stream) void*)
                void)))
          (f stream callback))))
    (define attach-audio-stream-processor
      (let ([f #f])
        (lambda (stream processor)
          (unless f
            (set! f
              (foreign-procedure "AttachAudioStreamProcessor"
                ((& Audio-Stream) void*)
                void)))
          (f stream processor))))
    (define detach-audio-stream-processor
      (let ([f #f])
        (lambda (stream processor)
          (unless f
            (set! f
              (foreign-procedure "DetachAudioStreamProcessor"
                ((& Audio-Stream) void*)
                void)))
          (f stream processor))))
    (define attach-audio-mixed-processor
      (let ([f #f])
        (lambda (processor)
          (unless f
            (set! f
              (foreign-procedure "AttachAudioMixedProcessor"
                (void*)
                void)))
          (f processor))))
    (define detach-audio-mixed-processor
      (let ([f #f])
        (lambda (processor)
          (unless f
            (set! f
              (foreign-procedure "DetachAudioMixedProcessor"
                (void*)
                void)))
          (f processor))))
    (load-shared-object
      (let loop ([libs (library-directories)])
        (cond
          [(null? libs) (error 'raylib "Raylib not found")]
          [(file-exists?
             (string-append (caar libs) "/raylib/raylib.dll"))
           (string-append (caar libs) "/raylib/raylib.dll")]
          [else (loop (cdr libs))])))))
