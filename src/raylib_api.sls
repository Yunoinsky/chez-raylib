(library (raylib (0 1))
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
   codepoint-to-utf8 get-codepoint-previous get-codepoint-next
   get-codepoint get-codepoint-count unload-codepoints
   load-codepoints unload-utf8 load-utf8 get-glyph-atlas-rec
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
   image-draw-rectangle image-draw-circle-lines-v
   image-draw-circle-lines image-draw-circle-v
   image-draw-circle image-draw-line-v image-draw-line
   image-draw-pixel-v image-draw-pixel image-clear-background
   get-image-color get-image-alpha-border unload-image-palette
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
   gen-image-perlin-noise gen-image-white-noise
   gen-image-checked gen-image-gradient-radial
   gen-image-gradient-h gen-image-gradient-v gen-image-color
   export-image-as-code export-image unload-image
   load-image-from-screen load-image-from-texture
   load-image-from-memory load-image-anim load-image-raw
   load-image get-collision-rec check-collision-point-line
   check-collision-lines check-collision-point-poly
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
   make-texture make-rectangle make-color make-matrix
   make-vector-4 make-vector-3 make-vector-2
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
   PI deg->rad rad->deg)
  (import (chezscheme))
  (define PI 3.141592653589793)
  (define (deg->rad deg) (/ (* deg PI) 180))
  (define (rad->deg rad) (/ (* rad 180) PI))
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
  (define (make-vector-2 x y)
    (let ([struct (make-ftype-pointer
                    Vector-2
                    (foreign-alloc (ftype-sizeof Vector-2)))])
      (ftype-set! Vector-2 (x) struct x)
      (ftype-set! Vector-2 (y) struct y)
      struct))
  (define-ftype Vector-3
    (struct [x float] [y float] [z float]))
  (define (make-vector-3 x y z)
    (let ([struct (make-ftype-pointer
                    Vector-3
                    (foreign-alloc (ftype-sizeof Vector-3)))])
      (ftype-set! Vector-3 (x) struct x)
      (ftype-set! Vector-3 (y) struct y)
      (ftype-set! Vector-3 (z) struct z)
      struct))
  (define-ftype Vector-4
    (struct [x float] [y float] [z float] [w float]))
  (define (make-vector-4 x y z w)
    (let ([struct (make-ftype-pointer
                    Vector-4
                    (foreign-alloc (ftype-sizeof Vector-4)))])
      (ftype-set! Vector-4 (x) struct x)
      (ftype-set! Vector-4 (y) struct y)
      (ftype-set! Vector-4 (z) struct z)
      (ftype-set! Vector-4 (w) struct w)
      struct))
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
  (define (make-matrix m0 m4 m8 m12 m1 m5 m9 m13 m2 m6 m10 m14
           m3 m7 m11 m15)
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
      struct))
  (define-ftype Color
    (struct
      [r unsigned-8]
      [g unsigned-8]
      [b unsigned-8]
      [a unsigned-8]))
  (define (make-color r g b a)
    (let ([struct (make-ftype-pointer
                    Color
                    (foreign-alloc (ftype-sizeof Color)))])
      (ftype-set! Color (r) struct r)
      (ftype-set! Color (g) struct g)
      (ftype-set! Color (b) struct b)
      (ftype-set! Color (a) struct a)
      struct))
  (define-ftype Rectangle
    (struct [x float] [y float] [width float] [height float]))
  (define (make-rectangle x y width height)
    (let ([struct (make-ftype-pointer
                    Rectangle
                    (foreign-alloc (ftype-sizeof Rectangle)))])
      (ftype-set! Rectangle (x) struct x)
      (ftype-set! Rectangle (y) struct y)
      (ftype-set! Rectangle (width) struct width)
      (ftype-set! Rectangle (height) struct height)
      struct))
  (define-ftype Image
    (struct
      [data void*]
      [width int]
      [height int]
      [mipmaps int]
      [format int]))
  (define-ftype Texture
    (struct
      [id unsigned]
      [width int]
      [height int]
      [mipmaps int]
      [format int]))
  (define (make-texture id width height mipmaps format)
    (let ([struct (make-ftype-pointer
                    Texture
                    (foreign-alloc (ftype-sizeof Texture)))])
      (ftype-set! Texture (id) struct id)
      (ftype-set! Texture (width) struct width)
      (ftype-set! Texture (height) struct height)
      (ftype-set! Texture (mipmaps) struct mipmaps)
      (ftype-set! Texture (format) struct format)
      struct))
  (define-ftype Render-Texture
    (struct [id unsigned] [texture Texture] [depth Texture]))
  (define-ftype Npatch-Info
    (struct
      [source Rectangle]
      [left int]
      [top int]
      [right int]
      [bottom int]
      [layout int]))
  (define-ftype Glyph-Info
    (struct
      [value int]
      [offset-x int]
      [offset-y int]
      [advance-x int]
      [image Image]))
  (define-ftype Font
    (struct
      [base-size int]
      [glyph-count int]
      [glyph-padding int]
      [texture Texture]
      [recs (* Rectangle)]
      [glyphs (* Glyph-Info)]))
  (define-ftype Camera-3D
    (struct
      [position Vector-3]
      [target Vector-3]
      [up Vector-3]
      [fovy float]
      [projection int]))
  (define-ftype Camera-2D
    (struct
      [offset Vector-2]
      [target Vector-2]
      [rotation float]
      [zoom float]))
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
  (define-ftype Shader (struct [id unsigned] [locs (* int)]))
  (define-ftype Material-Map
    (struct [texture Texture] [color Color] [value float]))
  (define-ftype Material
    (struct
      [shader Shader]
      [maps (* Material-Map)]
      [params (array 4 float)]))
  (define-ftype Transform
    (struct
      [translation Vector-3]
      [rotation Vector-4]
      [scale Vector-3]))
  (define-ftype Bone-Info
    (struct [name (array 32 char)] [parent int]))
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
  (define-ftype Model-Animation
    (struct
      [bone-count int]
      [frame-count int]
      [bones (* Bone-Info)]
      [frame-poses (* (* Transform))]))
  (define-ftype Ray
    (struct [position Vector-3] [direction Vector-3]))
  (define-ftype Ray-Collision
    (struct
      [hit boolean]
      [distance float]
      [point Vector-3]
      [normal Vector-3]))
  (define-ftype Bounding-Box
    (struct [min Vector-3] [max Vector-3]))
  (define-ftype Wave
    (struct
      [frame-count unsigned]
      [sample-rate unsigned]
      [sample-size unsigned]
      [channels unsigned]
      [data void*]))
  (define-ftype Audio-Stream
    (struct
      [buffer void*]
      [processor void*]
      [sample-rate unsigned]
      [sample-size unsigned]
      [channels unsigned]))
  (define-ftype Sound
    (struct [stream Audio-Stream] [frame-count unsigned]))
  (define-ftype Music
    (struct
      [stream Audio-Stream]
      [frame-count unsigned]
      [looping boolean]
      [ctx-type int]
      [ctx-data void*]))
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
  (define-ftype File-Path-List
    (struct
      [capacity unsigned]
      [count unsigned]
      [paths (* (* char))]))
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
  (define (init-window width height title)
    ((foreign-procedure "InitWindow" (int int string) void)
      width
      height
      title))
  (define (window-should-close)
    ((foreign-procedure "WindowShouldClose" () boolean)))
  (define (close-window)
    ((foreign-procedure "CloseWindow" () void)))
  (define (is-window-ready)
    ((foreign-procedure "IsWindowReady" () boolean)))
  (define (is-window-fullscreen)
    ((foreign-procedure "IsWindowFullscreen" () boolean)))
  (define (is-window-hidden)
    ((foreign-procedure "IsWindowHidden" () boolean)))
  (define (is-window-minimized)
    ((foreign-procedure "IsWindowMinimized" () boolean)))
  (define (is-window-maximized)
    ((foreign-procedure "IsWindowMaximized" () boolean)))
  (define (is-window-focused)
    ((foreign-procedure "IsWindowFocused" () boolean)))
  (define (is-window-resized)
    ((foreign-procedure "IsWindowResized" () boolean)))
  (define (is-window-state flag)
    ((foreign-procedure "IsWindowState" (unsigned) boolean)
      flag))
  (define (set-window-state flags)
    ((foreign-procedure "SetWindowState" (unsigned) void)
      flags))
  (define (clear-window-state flags)
    ((foreign-procedure "ClearWindowState" (unsigned) void)
      flags))
  (define (toggle-fullscreen)
    ((foreign-procedure "ToggleFullscreen" () void)))
  (define (maximize-window)
    ((foreign-procedure "MaximizeWindow" () void)))
  (define (minimize-window)
    ((foreign-procedure "MinimizeWindow" () void)))
  (define (restore-window)
    ((foreign-procedure "RestoreWindow" () void)))
  (define (set-window-icon image)
    ((foreign-procedure "SetWindowIcon" ((& Image)) void)
      image))
  (define (set-window-title title)
    ((foreign-procedure "SetWindowTitle" (string) void) title))
  (define (set-window-position x y)
    ((foreign-procedure "SetWindowPosition" (int int) void)
      x
      y))
  (define (set-window-monitor monitor)
    ((foreign-procedure "SetWindowMonitor" (int) void) monitor))
  (define (set-window-min-size width height)
    ((foreign-procedure "SetWindowMinSize" (int int) void)
      width
      height))
  (define (set-window-size width height)
    ((foreign-procedure "SetWindowSize" (int int) void)
      width
      height))
  (define (set-window-opacity opacity)
    ((foreign-procedure "SetWindowOpacity" (float) void)
      opacity))
  (define (get-window-handle)
    ((foreign-procedure "GetWindowHandle" () void*)))
  (define (get-screen-width)
    ((foreign-procedure "GetScreenWidth" () int)))
  (define (get-screen-height)
    ((foreign-procedure "GetScreenHeight" () int)))
  (define (get-render-width)
    ((foreign-procedure "GetRenderWidth" () int)))
  (define (get-render-height)
    ((foreign-procedure "GetRenderHeight" () int)))
  (define (get-monitor-count)
    ((foreign-procedure "GetMonitorCount" () int)))
  (define (get-current-monitor)
    ((foreign-procedure "GetCurrentMonitor" () int)))
  (define (get-monitor-position monitor)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetMonitorPosition" (int) (& Vector-2))
        ret
        monitor)
      ret))
  (define (get-monitor-width monitor)
    ((foreign-procedure "GetMonitorWidth" (int) int) monitor))
  (define (get-monitor-height monitor)
    ((foreign-procedure "GetMonitorHeight" (int) int) monitor))
  (define (get-monitor-physical-width monitor)
    ((foreign-procedure "GetMonitorPhysicalWidth" (int) int)
      monitor))
  (define (get-monitor-physical-height monitor)
    ((foreign-procedure "GetMonitorPhysicalHeight" (int) int)
      monitor))
  (define (get-monitor-refresh-rate monitor)
    ((foreign-procedure "GetMonitorRefreshRate" (int) int)
      monitor))
  (define (get-window-position)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetWindowPosition" () (& Vector-2))
        ret)
      ret))
  (define (get-window-scale-dpi)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetWindowScaleDPI" () (& Vector-2))
        ret)
      ret))
  (define (get-monitor-name monitor)
    ((foreign-procedure "GetMonitorName" (int) string) monitor))
  (define (set-clipboard-text text)
    ((foreign-procedure "SetClipboardText" (string) void) text))
  (define (get-clipboard-text)
    ((foreign-procedure "GetClipboardText" () string)))
  (define (enable-event-waiting)
    ((foreign-procedure "EnableEventWaiting" () void)))
  (define (disable-event-waiting)
    ((foreign-procedure "DisableEventWaiting" () void)))
  (define (swap-screen-buffer)
    ((foreign-procedure "SwapScreenBuffer" () void)))
  (define (poll-input-events)
    ((foreign-procedure "PollInputEvents" () void)))
  (define (wait-time seconds)
    ((foreign-procedure "WaitTime" (double) void) seconds))
  (define (show-cursor)
    ((foreign-procedure "ShowCursor" () void)))
  (define (hide-cursor)
    ((foreign-procedure "HideCursor" () void)))
  (define (is-cursor-hidden)
    ((foreign-procedure "IsCursorHidden" () boolean)))
  (define (enable-cursor)
    ((foreign-procedure "EnableCursor" () void)))
  (define (disable-cursor)
    ((foreign-procedure "DisableCursor" () void)))
  (define (is-cursor-on-screen)
    ((foreign-procedure "IsCursorOnScreen" () boolean)))
  (define (clear-background color)
    ((foreign-procedure "ClearBackground" ((& Color)) void)
      color))
  (define (begin-drawing)
    ((foreign-procedure "BeginDrawing" () void)))
  (define (end-drawing)
    ((foreign-procedure "EndDrawing" () void)))
  (define (begin-mode-2d camera)
    ((foreign-procedure "BeginMode2D" ((& Camera-2D)) void)
      camera))
  (define (end-mode-2d)
    ((foreign-procedure "EndMode2D" () void)))
  (define (begin-mode-3d camera)
    ((foreign-procedure "BeginMode3D" ((& Camera-3D)) void)
      camera))
  (define (end-mode-3d)
    ((foreign-procedure "EndMode3D" () void)))
  (define (begin-texture-mode target)
    ((foreign-procedure "BeginTextureMode"
       ((& Render-Texture))
       void)
      target))
  (define (end-texture-mode)
    ((foreign-procedure "EndTextureMode" () void)))
  (define (begin-shader-mode shader)
    ((foreign-procedure "BeginShaderMode" ((& Shader)) void)
      shader))
  (define (end-shader-mode)
    ((foreign-procedure "EndShaderMode" () void)))
  (define (begin-blend-mode mode)
    ((foreign-procedure "BeginBlendMode" (int) void) mode))
  (define (end-blend-mode)
    ((foreign-procedure "EndBlendMode" () void)))
  (define (begin-scissor-mode x y width height)
    ((foreign-procedure "BeginScissorMode"
       (int int int int)
       void)
      x
      y
      width
      height))
  (define (end-scissor-mode)
    ((foreign-procedure "EndScissorMode" () void)))
  (define (begin-vr-stereo-mode config)
    ((foreign-procedure "BeginVrStereoMode"
       ((& Vr-Stereo-Config))
       void)
      config))
  (define (end-vr-stereo-mode)
    ((foreign-procedure "EndVrStereoMode" () void)))
  (define (load-vr-stereo-config device)
    (let ([ret (make-ftype-pointer
                 Vr-Stereo-Config
                 (foreign-alloc (ftype-sizeof Vr-Stereo-Config)))])
      ((foreign-procedure "LoadVrStereoConfig"
         ((& Vr-Device-Info))
         (& Vr-Stereo-Config))
        ret
        device)
      ret))
  (define (unload-vr-stereo-config config)
    ((foreign-procedure "UnloadVrStereoConfig"
       ((& Vr-Stereo-Config))
       void)
      config))
  (define (load-shader vs-file-name fs-file-name)
    (let ([ret (make-ftype-pointer
                 Shader
                 (foreign-alloc (ftype-sizeof Shader)))])
      ((foreign-procedure "LoadShader" (string string) (& Shader))
        ret
        vs-file-name
        fs-file-name)
      ret))
  (define (load-shader-from-memory vs-code fs-code)
    (let ([ret (make-ftype-pointer
                 Shader
                 (foreign-alloc (ftype-sizeof Shader)))])
      ((foreign-procedure "LoadShaderFromMemory"
         (string string)
         (& Shader))
        ret
        vs-code
        fs-code)
      ret))
  (define (get-shader-location shader uniform-name)
    ((foreign-procedure "GetShaderLocation"
       ((& Shader) string)
       int)
      shader
      uniform-name))
  (define (get-shader-location-attrib shader attrib-name)
    ((foreign-procedure "GetShaderLocationAttrib"
       ((& Shader) string)
       int)
      shader
      attrib-name))
  (define (set-shader-value shader loc-index value
           uniform-type)
    ((foreign-procedure "SetShaderValue"
       ((& Shader) int void* int)
       void)
      shader
      loc-index
      value
      uniform-type))
  (define (set-shader-value-v shader loc-index value
           uniform-type count)
    ((foreign-procedure "SetShaderValueV"
       ((& Shader) int void* int int)
       void) shader loc-index value uniform-type count))
  (define (set-shader-value-matrix shader loc-index mat)
    ((foreign-procedure "SetShaderValueMatrix"
       ((& Shader) int (& Matrix))
       void)
      shader
      loc-index
      mat))
  (define (set-shader-value-texture shader loc-index texture)
    ((foreign-procedure "SetShaderValueTexture"
       ((& Shader) int (& Texture))
       void)
      shader
      loc-index
      texture))
  (define (unload-shader shader)
    ((foreign-procedure "UnloadShader" ((& Shader)) void)
      shader))
  (define (get-mouse-ray mouse-position camera)
    (let ([ret (make-ftype-pointer
                 Ray
                 (foreign-alloc (ftype-sizeof Ray)))])
      ((foreign-procedure "GetMouseRay"
         ((& Vector-2) (& Camera-3D))
         (& Ray))
        ret
        mouse-position
        camera)
      ret))
  (define (get-camera-matrix camera)
    (let ([ret (make-ftype-pointer
                 Matrix
                 (foreign-alloc (ftype-sizeof Matrix)))])
      ((foreign-procedure "GetCameraMatrix"
         ((& Camera-3D))
         (& Matrix))
        ret
        camera)
      ret))
  (define (get-camera-matrix-2d camera)
    (let ([ret (make-ftype-pointer
                 Matrix
                 (foreign-alloc (ftype-sizeof Matrix)))])
      ((foreign-procedure "GetCameraMatrix2D"
         ((& Camera-2D))
         (& Matrix))
        ret
        camera)
      ret))
  (define (get-world-to-screen position camera)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetWorldToScreen"
         ((& Vector-3) (& Camera-3D))
         (& Vector-2))
        ret
        position
        camera)
      ret))
  (define (get-screen-to-world-2d position camera)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetScreenToWorld2D"
         ((& Vector-2) (& Camera-2D))
         (& Vector-2))
        ret
        position
        camera)
      ret))
  (define (get-world-to-screen-ex position camera width
           height)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetWorldToScreenEx"
         ((& Vector-3) (& Camera-3D) int int)
         (& Vector-2)) ret position camera width height)
      ret))
  (define (get-world-to-screen-2d position camera)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetWorldToScreen2D"
         ((& Vector-2) (& Camera-2D))
         (& Vector-2))
        ret
        position
        camera)
      ret))
  (define (set-target-fps fps)
    ((foreign-procedure "SetTargetFPS" (int) void) fps))
  (define (get-fps) ((foreign-procedure "GetFPS" () int)))
  (define (get-frame-time)
    ((foreign-procedure "GetFrameTime" () float)))
  (define (get-time)
    ((foreign-procedure "GetTime" () double)))
  (define (get-random-value min max)
    ((foreign-procedure "GetRandomValue" (int int) int)
      min
      max))
  (define (set-random-seed seed)
    ((foreign-procedure "SetRandomSeed" (unsigned) void) seed))
  (define (take-screenshot file-name)
    ((foreign-procedure "TakeScreenshot" (string) void)
      file-name))
  (define (set-config-flags flags)
    ((foreign-procedure "SetConfigFlags" (unsigned) void)
      flags))
  (define (set-trace-log-level log-level)
    ((foreign-procedure "SetTraceLogLevel" (int) void)
      log-level))
  (define (mem-alloc size)
    ((foreign-procedure "MemAlloc" (unsigned) void*) size))
  (define (mem-realloc ptr size)
    ((foreign-procedure "MemRealloc" (void* unsigned) void*)
      ptr
      size))
  (define (mem-free ptr)
    ((foreign-procedure "MemFree" (void*) void) ptr))
  (define (open-url url)
    ((foreign-procedure "OpenURL" (string) void) url))
  (define (set-trace-log-callback callback)
    ((foreign-procedure "SetTraceLogCallback" (void*) void)
      callback))
  (define (set-load-file-data-callback callback)
    ((foreign-procedure "SetLoadFileDataCallback" (void*) void)
      callback))
  (define (set-save-file-data-callback callback)
    ((foreign-procedure "SetSaveFileDataCallback" (void*) void)
      callback))
  (define (set-load-file-text-callback callback)
    ((foreign-procedure "SetLoadFileTextCallback" (void*) void)
      callback))
  (define (set-save-file-text-callback callback)
    ((foreign-procedure "SetSaveFileTextCallback" (void*) void)
      callback))
  (define (load-file-data file-name bytes-read)
    ((foreign-procedure "LoadFileData"
       (string (* unsigned))
       (* unsigned-8))
      file-name
      bytes-read))
  (define (unload-file-data data)
    ((foreign-procedure "UnloadFileData" ((* unsigned-8)) void)
      data))
  (define (save-file-data file-name data bytes-to-write)
    ((foreign-procedure "SaveFileData"
       (string void* unsigned)
       boolean)
      file-name
      data
      bytes-to-write))
  (define (export-data-as-code data size file-name)
    ((foreign-procedure "ExportDataAsCode"
       (string unsigned string)
       boolean)
      data
      size
      file-name))
  (define (load-file-text file-name)
    ((foreign-procedure "LoadFileText" (string) string)
      file-name))
  (define (unload-file-text text)
    ((foreign-procedure "UnloadFileText" (string) void) text))
  (define (save-file-text file-name text)
    ((foreign-procedure "SaveFileText" (string string) boolean)
      file-name
      text))
  (define (file-exists file-name)
    ((foreign-procedure "FileExists" (string) boolean)
      file-name))
  (define (directory-exists dir-path)
    ((foreign-procedure "DirectoryExists" (string) boolean)
      dir-path))
  (define (is-file-extension file-name ext)
    ((foreign-procedure "IsFileExtension"
       (string string)
       boolean)
      file-name
      ext))
  (define (get-file-length file-name)
    ((foreign-procedure "GetFileLength" (string) int)
      file-name))
  (define (get-file-extension file-name)
    ((foreign-procedure "GetFileExtension" (string) string)
      file-name))
  (define (get-file-name file-path)
    ((foreign-procedure "GetFileName" (string) string)
      file-path))
  (define (get-file-name-without-ext file-path)
    ((foreign-procedure "GetFileNameWithoutExt" (string) string)
      file-path))
  (define (get-directory-path file-path)
    ((foreign-procedure "GetDirectoryPath" (string) string)
      file-path))
  (define (get-prev-directory-path dir-path)
    ((foreign-procedure "GetPrevDirectoryPath" (string) string)
      dir-path))
  (define (get-working-directory)
    ((foreign-procedure "GetWorkingDirectory" () string)))
  (define (get-application-directory)
    ((foreign-procedure "GetApplicationDirectory" () string)))
  (define (change-directory dir)
    ((foreign-procedure "ChangeDirectory" (string) boolean)
      dir))
  (define (is-path-file path)
    ((foreign-procedure "IsPathFile" (string) boolean) path))
  (define (load-directory-files dir-path)
    (let ([ret (make-ftype-pointer
                 File-Path-List
                 (foreign-alloc (ftype-sizeof File-Path-List)))])
      ((foreign-procedure "LoadDirectoryFiles"
         (string)
         (& File-Path-List))
        ret
        dir-path)
      ret))
  (define (load-directory-files-ex base-path filter
           scan-subdirs)
    (let ([ret (make-ftype-pointer
                 File-Path-List
                 (foreign-alloc (ftype-sizeof File-Path-List)))])
      ((foreign-procedure "LoadDirectoryFilesEx"
         (string string boolean)
         (& File-Path-List))
        ret
        base-path
        filter
        scan-subdirs)
      ret))
  (define (unload-directory-files files)
    ((foreign-procedure "UnloadDirectoryFiles"
       ((& File-Path-List))
       void)
      files))
  (define (is-file-dropped)
    ((foreign-procedure "IsFileDropped" () boolean)))
  (define (load-dropped-files)
    (let ([ret (make-ftype-pointer
                 File-Path-List
                 (foreign-alloc (ftype-sizeof File-Path-List)))])
      ((foreign-procedure "LoadDroppedFiles"
         ()
         (& File-Path-List))
        ret)
      ret))
  (define (unload-dropped-files files)
    ((foreign-procedure "UnloadDroppedFiles"
       ((& File-Path-List))
       void)
      files))
  (define (get-file-mod-time file-name)
    ((foreign-procedure "GetFileModTime" (string) long)
      file-name))
  (define (compress-data data data-size comp-data-size)
    ((foreign-procedure "CompressData"
       ((* unsigned-8) int (* int))
       (* unsigned-8))
      data
      data-size
      comp-data-size))
  (define (decompress-data comp-data comp-data-size data-size)
    ((foreign-procedure "DecompressData"
       ((* unsigned-8) int (* int))
       (* unsigned-8))
      comp-data
      comp-data-size
      data-size))
  (define (encode-data-base-64 data data-size output-size)
    ((foreign-procedure "EncodeDataBase64"
       ((* unsigned-8) int (* int))
       string)
      data
      data-size
      output-size))
  (define (decode-data-base-64 data output-size)
    ((foreign-procedure "DecodeDataBase64"
       ((* unsigned-8) (* int))
       (* unsigned-8))
      data
      output-size))
  (define (is-key-pressed key)
    ((foreign-procedure "IsKeyPressed" (int) boolean) key))
  (define (is-key-down key)
    ((foreign-procedure "IsKeyDown" (int) boolean) key))
  (define (is-key-released key)
    ((foreign-procedure "IsKeyReleased" (int) boolean) key))
  (define (is-key-up key)
    ((foreign-procedure "IsKeyUp" (int) boolean) key))
  (define (set-exit-key key)
    ((foreign-procedure "SetExitKey" (int) void) key))
  (define (get-key-pressed)
    ((foreign-procedure "GetKeyPressed" () int)))
  (define (get-char-pressed)
    ((foreign-procedure "GetCharPressed" () int)))
  (define (is-gamepad-available gamepad)
    ((foreign-procedure "IsGamepadAvailable" (int) boolean)
      gamepad))
  (define (get-gamepad-name gamepad)
    ((foreign-procedure "GetGamepadName" (int) string) gamepad))
  (define (is-gamepad-button-pressed gamepad button)
    ((foreign-procedure "IsGamepadButtonPressed"
       (int int)
       boolean)
      gamepad
      button))
  (define (is-gamepad-button-down gamepad button)
    ((foreign-procedure "IsGamepadButtonDown" (int int) boolean)
      gamepad
      button))
  (define (is-gamepad-button-released gamepad button)
    ((foreign-procedure "IsGamepadButtonReleased"
       (int int)
       boolean)
      gamepad
      button))
  (define (is-gamepad-button-up gamepad button)
    ((foreign-procedure "IsGamepadButtonUp" (int int) boolean)
      gamepad
      button))
  (define (get-gamepad-button-pressed)
    ((foreign-procedure "GetGamepadButtonPressed" () int)))
  (define (get-gamepad-axis-count gamepad)
    ((foreign-procedure "GetGamepadAxisCount" (int) int)
      gamepad))
  (define (get-gamepad-axis-movement gamepad axis)
    ((foreign-procedure "GetGamepadAxisMovement"
       (int int)
       float)
      gamepad
      axis))
  (define (set-gamepad-mappings mappings)
    ((foreign-procedure "SetGamepadMappings" (string) int)
      mappings))
  (define (is-mouse-button-pressed button)
    ((foreign-procedure "IsMouseButtonPressed" (int) boolean)
      button))
  (define (is-mouse-button-down button)
    ((foreign-procedure "IsMouseButtonDown" (int) boolean)
      button))
  (define (is-mouse-button-released button)
    ((foreign-procedure "IsMouseButtonReleased" (int) boolean)
      button))
  (define (is-mouse-button-up button)
    ((foreign-procedure "IsMouseButtonUp" (int) boolean)
      button))
  (define (get-mouse-x)
    ((foreign-procedure "GetMouseX" () int)))
  (define (get-mouse-y)
    ((foreign-procedure "GetMouseY" () int)))
  (define (get-mouse-position)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetMousePosition" () (& Vector-2)) ret)
      ret))
  (define (get-mouse-delta)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetMouseDelta" () (& Vector-2)) ret)
      ret))
  (define (set-mouse-position x y)
    ((foreign-procedure "SetMousePosition" (int int) void) x y))
  (define (set-mouse-offset offset-x offset-y)
    ((foreign-procedure "SetMouseOffset" (int int) void)
      offset-x
      offset-y))
  (define (set-mouse-scale scale-x scale-y)
    ((foreign-procedure "SetMouseScale" (float float) void)
      scale-x
      scale-y))
  (define (get-mouse-wheel-move)
    ((foreign-procedure "GetMouseWheelMove" () float)))
  (define (get-mouse-wheel-move-v)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetMouseWheelMoveV" () (& Vector-2))
        ret)
      ret))
  (define (set-mouse-cursor cursor)
    ((foreign-procedure "SetMouseCursor" (int) void) cursor))
  (define (get-touch-x)
    ((foreign-procedure "GetTouchX" () int)))
  (define (get-touch-y)
    ((foreign-procedure "GetTouchY" () int)))
  (define (get-touch-position index)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetTouchPosition" (int) (& Vector-2))
        ret
        index)
      ret))
  (define (get-touch-point-id index)
    ((foreign-procedure "GetTouchPointId" (int) int) index))
  (define (get-touch-point-count)
    ((foreign-procedure "GetTouchPointCount" () int)))
  (define (set-gestures-enabled flags)
    ((foreign-procedure "SetGesturesEnabled" (unsigned) void)
      flags))
  (define (is-gesture-detected gesture)
    ((foreign-procedure "IsGestureDetected" (int) boolean)
      gesture))
  (define (get-gesture-detected)
    ((foreign-procedure "GetGestureDetected" () int)))
  (define (get-gesture-hold-duration)
    ((foreign-procedure "GetGestureHoldDuration" () float)))
  (define (get-gesture-drag-vector)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetGestureDragVector" () (& Vector-2))
        ret)
      ret))
  (define (get-gesture-drag-angle)
    ((foreign-procedure "GetGestureDragAngle" () float)))
  (define (get-gesture-pinch-vector)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "GetGesturePinchVector" () (& Vector-2))
        ret)
      ret))
  (define (get-gesture-pinch-angle)
    ((foreign-procedure "GetGesturePinchAngle" () float)))
  (define (set-camera-mode camera mode)
    ((foreign-procedure "SetCameraMode"
       ((& Camera-3D) int)
       void)
      camera
      mode))
  (define (update-camera camera)
    ((foreign-procedure "UpdateCamera" ((* Camera-3D)) void)
      camera))
  (define (set-camera-pan-control key-pan)
    ((foreign-procedure "SetCameraPanControl" (int) void)
      key-pan))
  (define (set-camera-alt-control key-alt)
    ((foreign-procedure "SetCameraAltControl" (int) void)
      key-alt))
  (define (set-camera-smooth-zoom-control key-smooth-zoom)
    ((foreign-procedure "SetCameraSmoothZoomControl" (int) void)
      key-smooth-zoom))
  (define (set-camera-move-controls key-front key-back
           key-right key-left key-up key-down)
    ((foreign-procedure "SetCameraMoveControls"
       (int int int int int int)
       void) key-front key-back key-right key-left key-up
      key-down))
  (define (set-shapes-texture texture source)
    ((foreign-procedure "SetShapesTexture"
       ((& Texture) (& Rectangle))
       void)
      texture
      source))
  (define (draw-pixel pos-x pos-y color)
    ((foreign-procedure "DrawPixel" (int int (& Color)) void)
      pos-x
      pos-y
      color))
  (define (draw-pixel-v position color)
    ((foreign-procedure "DrawPixelV"
       ((& Vector-2) (& Color))
       void)
      position
      color))
  (define (draw-line start-pos-x start-pos-y end-pos-x
           end-pos-y color)
    ((foreign-procedure "DrawLine"
       (int int int int (& Color))
       void) start-pos-x start-pos-y end-pos-x end-pos-y color))
  (define (draw-line-v start-pos end-pos color)
    ((foreign-procedure "DrawLineV"
       ((& Vector-2) (& Vector-2) (& Color))
       void)
      start-pos
      end-pos
      color))
  (define (draw-line-ex start-pos end-pos thick color)
    ((foreign-procedure "DrawLineEx"
       ((& Vector-2) (& Vector-2) float (& Color))
       void)
      start-pos
      end-pos
      thick
      color))
  (define (draw-line-bezier start-pos end-pos thick color)
    ((foreign-procedure "DrawLineBezier"
       ((& Vector-2) (& Vector-2) float (& Color))
       void)
      start-pos
      end-pos
      thick
      color))
  (define (draw-line-bezier-quad start-pos end-pos control-pos
           thick color)
    ((foreign-procedure "DrawLineBezierQuad"
       ((& Vector-2) (& Vector-2) (& Vector-2) float (& Color))
       void) start-pos end-pos control-pos thick color))
  (define (draw-line-bezier-cubic start-pos end-pos
           start-control-pos end-control-pos thick color)
    ((foreign-procedure "DrawLineBezierCubic"
       ((& Vector-2)
        (& Vector-2)
        (& Vector-2)
        (& Vector-2)
        float
        (& Color))
       void) start-pos end-pos start-control-pos end-control-pos
      thick color))
  (define (draw-line-strip points point-count color)
    ((foreign-procedure "DrawLineStrip"
       ((* Vector-2) int (& Color))
       void)
      points
      point-count
      color))
  (define (draw-circle center-x center-y radius color)
    ((foreign-procedure "DrawCircle"
       (int int float (& Color))
       void)
      center-x
      center-y
      radius
      color))
  (define (draw-circle-sector center radius start-angle
           end-angle segments color)
    ((foreign-procedure "DrawCircleSector"
       ((& Vector-2) float float float int (& Color))
       void) center radius start-angle end-angle segments color))
  (define (draw-circle-sector-lines center radius start-angle
           end-angle segments color)
    ((foreign-procedure "DrawCircleSectorLines"
       ((& Vector-2) float float float int (& Color))
       void) center radius start-angle end-angle segments color))
  (define (draw-circle-gradient center-x center-y radius
           color-1 color-2)
    ((foreign-procedure "DrawCircleGradient"
       (int int float (& Color) (& Color))
       void) center-x center-y radius color-1 color-2))
  (define (draw-circle-v center radius color)
    ((foreign-procedure "DrawCircleV"
       ((& Vector-2) float (& Color))
       void)
      center
      radius
      color))
  (define (draw-circle-lines center-x center-y radius color)
    ((foreign-procedure "DrawCircleLines"
       (int int float (& Color))
       void)
      center-x
      center-y
      radius
      color))
  (define (draw-ellipse center-x center-y radius-h radius-v
           color)
    ((foreign-procedure "DrawEllipse"
       (int int float float (& Color))
       void) center-x center-y radius-h radius-v color))
  (define (draw-ellipse-lines center-x center-y radius-h
           radius-v color)
    ((foreign-procedure "DrawEllipseLines"
       (int int float float (& Color))
       void) center-x center-y radius-h radius-v color))
  (define (draw-ring center inner-radius outer-radius
           start-angle end-angle segments color)
    ((foreign-procedure "DrawRing"
       ((& Vector-2) float float float float int (& Color))
       void) center inner-radius outer-radius start-angle end-angle
      segments color))
  (define (draw-ring-lines center inner-radius outer-radius
           start-angle end-angle segments color)
    ((foreign-procedure "DrawRingLines"
       ((& Vector-2) float float float float int (& Color))
       void) center inner-radius outer-radius start-angle end-angle
      segments color))
  (define (draw-rectangle pos-x pos-y width height color)
    ((foreign-procedure "DrawRectangle"
       (int int int int (& Color))
       void) pos-x pos-y width height color))
  (define (draw-rectangle-v position size color)
    ((foreign-procedure "DrawRectangleV"
       ((& Vector-2) (& Vector-2) (& Color))
       void)
      position
      size
      color))
  (define (draw-rectangle-rec rec color)
    ((foreign-procedure "DrawRectangleRec"
       ((& Rectangle) (& Color))
       void)
      rec
      color))
  (define (draw-rectangle-pro rec origin rotation color)
    ((foreign-procedure "DrawRectanglePro"
       ((& Rectangle) (& Vector-2) float (& Color))
       void)
      rec
      origin
      rotation
      color))
  (define (draw-rectangle-gradient-v pos-x pos-y width height
           color-1 color-2)
    ((foreign-procedure "DrawRectangleGradientV"
       (int int int int (& Color) (& Color))
       void) pos-x pos-y width height color-1 color-2))
  (define (draw-rectangle-gradient-h pos-x pos-y width height
           color-1 color-2)
    ((foreign-procedure "DrawRectangleGradientH"
       (int int int int (& Color) (& Color))
       void) pos-x pos-y width height color-1 color-2))
  (define (draw-rectangle-gradient-ex rec col-1 col-2 col-3
           col-4)
    ((foreign-procedure "DrawRectangleGradientEx"
       ((& Rectangle) (& Color) (& Color) (& Color) (& Color))
       void) rec col-1 col-2 col-3 col-4))
  (define (draw-rectangle-lines pos-x pos-y width height
           color)
    ((foreign-procedure "DrawRectangleLines"
       (int int int int (& Color))
       void) pos-x pos-y width height color))
  (define (draw-rectangle-lines-ex rec line-thick color)
    ((foreign-procedure "DrawRectangleLinesEx"
       ((& Rectangle) float (& Color))
       void)
      rec
      line-thick
      color))
  (define (draw-rectangle-rounded rec roundness segments
           color)
    ((foreign-procedure "DrawRectangleRounded"
       ((& Rectangle) float int (& Color))
       void)
      rec
      roundness
      segments
      color))
  (define (draw-rectangle-rounded-lines rec roundness segments
           line-thick color)
    ((foreign-procedure "DrawRectangleRoundedLines"
       ((& Rectangle) float int float (& Color))
       void) rec roundness segments line-thick color))
  (define (draw-triangle v1 v2 v3 color)
    ((foreign-procedure "DrawTriangle"
       ((& Vector-2) (& Vector-2) (& Vector-2) (& Color))
       void)
      v1
      v2
      v3
      color))
  (define (draw-triangle-lines v1 v2 v3 color)
    ((foreign-procedure "DrawTriangleLines"
       ((& Vector-2) (& Vector-2) (& Vector-2) (& Color))
       void)
      v1
      v2
      v3
      color))
  (define (draw-triangle-fan points point-count color)
    ((foreign-procedure "DrawTriangleFan"
       ((* Vector-2) int (& Color))
       void)
      points
      point-count
      color))
  (define (draw-triangle-strip points point-count color)
    ((foreign-procedure "DrawTriangleStrip"
       ((* Vector-2) int (& Color))
       void)
      points
      point-count
      color))
  (define (draw-poly center sides radius rotation color)
    ((foreign-procedure "DrawPoly"
       ((& Vector-2) int float float (& Color))
       void) center sides radius rotation color))
  (define (draw-poly-lines center sides radius rotation color)
    ((foreign-procedure "DrawPolyLines"
       ((& Vector-2) int float float (& Color))
       void) center sides radius rotation color))
  (define (draw-poly-lines-ex center sides radius rotation
           line-thick color)
    ((foreign-procedure "DrawPolyLinesEx"
       ((& Vector-2) int float float float (& Color))
       void) center sides radius rotation line-thick color))
  (define (check-collision-recs rec-1 rec-2)
    ((foreign-procedure "CheckCollisionRecs"
       ((& Rectangle) (& Rectangle))
       boolean)
      rec-1
      rec-2))
  (define (check-collision-circles center-1 radius-1 center-2
           radius-2)
    ((foreign-procedure "CheckCollisionCircles"
       ((& Vector-2) float (& Vector-2) float)
       boolean)
      center-1
      radius-1
      center-2
      radius-2))
  (define (check-collision-circle-rec center radius rec)
    ((foreign-procedure "CheckCollisionCircleRec"
       ((& Vector-2) float (& Rectangle))
       boolean)
      center
      radius
      rec))
  (define (check-collision-point-rec point rec)
    ((foreign-procedure "CheckCollisionPointRec"
       ((& Vector-2) (& Rectangle))
       boolean)
      point
      rec))
  (define (check-collision-point-circle point center radius)
    ((foreign-procedure "CheckCollisionPointCircle"
       ((& Vector-2) (& Vector-2) float)
       boolean)
      point
      center
      radius))
  (define (check-collision-point-triangle point p1 p2 p3)
    ((foreign-procedure "CheckCollisionPointTriangle"
       ((& Vector-2) (& Vector-2) (& Vector-2) (& Vector-2))
       boolean)
      point
      p1
      p2
      p3))
  (define (check-collision-point-poly point points
           point-count)
    ((foreign-procedure "CheckCollisionPointPoly"
       ((& Vector-2) (* Vector-2) int)
       boolean)
      point
      points
      point-count))
  (define (check-collision-lines start-pos-1 end-pos-1
           start-pos-2 end-pos-2 collision-point)
    ((foreign-procedure "CheckCollisionLines"
       ((& Vector-2)
        (& Vector-2)
        (& Vector-2)
        (& Vector-2)
        (* Vector-2))
       boolean) start-pos-1 end-pos-1 start-pos-2 end-pos-2
      collision-point))
  (define (check-collision-point-line point p1 p2 threshold)
    ((foreign-procedure "CheckCollisionPointLine"
       ((& Vector-2) (& Vector-2) (& Vector-2) int)
       boolean)
      point
      p1
      p2
      threshold))
  (define (get-collision-rec rec-1 rec-2)
    (let ([ret (make-ftype-pointer
                 Rectangle
                 (foreign-alloc (ftype-sizeof Rectangle)))])
      ((foreign-procedure "GetCollisionRec"
         ((& Rectangle) (& Rectangle))
         (& Rectangle))
        ret
        rec-1
        rec-2)
      ret))
  (define (load-image file-name)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "LoadImage" (string) (& Image))
        ret
        file-name)
      ret))
  (define (load-image-raw file-name width height format
           header-size)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "LoadImageRaw"
         (string int int int int)
         (& Image)) ret file-name width height format header-size)
      ret))
  (define (load-image-anim file-name frames)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "LoadImageAnim"
         (string (* int))
         (& Image))
        ret
        file-name
        frames)
      ret))
  (define (load-image-from-memory file-type file-data
           data-size)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "LoadImageFromMemory"
         (string (* unsigned-8) int)
         (& Image))
        ret
        file-type
        file-data
        data-size)
      ret))
  (define (load-image-from-texture texture)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "LoadImageFromTexture"
         ((& Texture))
         (& Image))
        ret
        texture)
      ret))
  (define (load-image-from-screen)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "LoadImageFromScreen" () (& Image)) ret)
      ret))
  (define (unload-image image)
    ((foreign-procedure "UnloadImage" ((& Image)) void) image))
  (define (export-image image file-name)
    ((foreign-procedure "ExportImage"
       ((& Image) string)
       boolean)
      image
      file-name))
  (define (export-image-as-code image file-name)
    ((foreign-procedure "ExportImageAsCode"
       ((& Image) string)
       boolean)
      image
      file-name))
  (define (gen-image-color width height color)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "GenImageColor"
         (int int (& Color))
         (& Image))
        ret
        width
        height
        color)
      ret))
  (define (gen-image-gradient-v width height top bottom)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "GenImageGradientV"
         (int int (& Color) (& Color))
         (& Image)) ret width height top bottom)
      ret))
  (define (gen-image-gradient-h width height left right)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "GenImageGradientH"
         (int int (& Color) (& Color))
         (& Image)) ret width height left right)
      ret))
  (define (gen-image-gradient-radial width height density
           inner outer)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "GenImageGradientRadial"
         (int int float (& Color) (& Color))
         (& Image)) ret width height density inner outer)
      ret))
  (define (gen-image-checked width height checks-x checks-y
           col-1 col-2)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "GenImageChecked"
         (int int int int (& Color) (& Color))
         (& Image)) ret width height checks-x checks-y col-1 col-2)
      ret))
  (define (gen-image-white-noise width height factor)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "GenImageWhiteNoise"
         (int int float)
         (& Image))
        ret
        width
        height
        factor)
      ret))
  (define (gen-image-perlin-noise width height offset-x
           offset-y scale)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "GenImagePerlinNoise"
         (int int int int float)
         (& Image)) ret width height offset-x offset-y scale)
      ret))
  (define (gen-image-cellular width height tile-size)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "GenImageCellular"
         (int int int)
         (& Image))
        ret
        width
        height
        tile-size)
      ret))
  (define (image-copy image)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "ImageCopy" ((& Image)) (& Image))
        ret
        image)
      ret))
  (define (image-from-image image rec)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "ImageFromImage"
         ((& Image) (& Rectangle))
         (& Image))
        ret
        image
        rec)
      ret))
  (define (image-text text font-size color)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "ImageText"
         (string int (& Color))
         (& Image))
        ret
        text
        font-size
        color)
      ret))
  (define (image-text-ex font text font-size spacing tint)
    (let ([ret (make-ftype-pointer
                 Image
                 (foreign-alloc (ftype-sizeof Image)))])
      ((foreign-procedure "ImageTextEx"
         ((& Font) string float float (& Color))
         (& Image)) ret font text font-size spacing tint)
      ret))
  (define (image-format image new-format)
    ((foreign-procedure "ImageFormat" ((* Image) int) void)
      image
      new-format))
  (define (image-to-pot image fill)
    ((foreign-procedure "ImageToPOT" ((* Image) (& Color)) void)
      image
      fill))
  (define (image-crop image crop)
    ((foreign-procedure "ImageCrop"
       ((* Image) (& Rectangle))
       void)
      image
      crop))
  (define (image-alpha-crop image threshold)
    ((foreign-procedure "ImageAlphaCrop" ((* Image) float) void)
      image
      threshold))
  (define (image-alpha-clear image color threshold)
    ((foreign-procedure "ImageAlphaClear"
       ((* Image) (& Color) float)
       void)
      image
      color
      threshold))
  (define (image-alpha-mask image alpha-mask)
    ((foreign-procedure "ImageAlphaMask"
       ((* Image) (& Image))
       void)
      image
      alpha-mask))
  (define (image-alpha-premultiply image)
    ((foreign-procedure "ImageAlphaPremultiply"
       ((* Image))
       void)
      image))
  (define (image-resize image new-width new-height)
    ((foreign-procedure "ImageResize" ((* Image) int int) void)
      image
      new-width
      new-height))
  (define (image-resize-nn image new-width new-height)
    ((foreign-procedure "ImageResizeNN"
       ((* Image) int int)
       void)
      image
      new-width
      new-height))
  (define (image-resize-canvas image new-width new-height
           offset-x offset-y fill)
    ((foreign-procedure "ImageResizeCanvas"
       ((* Image) int int int int (& Color))
       void) image new-width new-height offset-x offset-y fill))
  (define (image-mipmaps image)
    ((foreign-procedure "ImageMipmaps" ((* Image)) void) image))
  (define (image-dither image rbpp gbpp bbpp abpp)
    ((foreign-procedure "ImageDither"
       ((* Image) int int int int)
       void) image rbpp gbpp bbpp abpp))
  (define (image-flip-vertical image)
    ((foreign-procedure "ImageFlipVertical" ((* Image)) void)
      image))
  (define (image-flip-horizontal image)
    ((foreign-procedure "ImageFlipHorizontal" ((* Image)) void)
      image))
  (define (image-rotate-cw image)
    ((foreign-procedure "ImageRotateCW" ((* Image)) void)
      image))
  (define (image-rotate-ccw image)
    ((foreign-procedure "ImageRotateCCW" ((* Image)) void)
      image))
  (define (image-color-tint image color)
    ((foreign-procedure "ImageColorTint"
       ((* Image) (& Color))
       void)
      image
      color))
  (define (image-color-invert image)
    ((foreign-procedure "ImageColorInvert" ((* Image)) void)
      image))
  (define (image-color-grayscale image)
    ((foreign-procedure "ImageColorGrayscale" ((* Image)) void)
      image))
  (define (image-color-contrast image contrast)
    ((foreign-procedure "ImageColorContrast"
       ((* Image) float)
       void)
      image
      contrast))
  (define (image-color-brightness image brightness)
    ((foreign-procedure "ImageColorBrightness"
       ((* Image) int)
       void)
      image
      brightness))
  (define (image-color-replace image color replace)
    ((foreign-procedure "ImageColorReplace"
       ((* Image) (& Color) (& Color))
       void)
      image
      color
      replace))
  (define (load-image-colors image)
    ((foreign-procedure "LoadImageColors" ((& Image)) (* Color))
      image))
  (define (load-image-palette image max-palette-size
           color-count)
    ((foreign-procedure "LoadImagePalette"
       ((& Image) int (* int))
       (* Color))
      image
      max-palette-size
      color-count))
  (define (unload-image-colors colors)
    ((foreign-procedure "UnloadImageColors" ((* Color)) void)
      colors))
  (define (unload-image-palette colors)
    ((foreign-procedure "UnloadImagePalette" ((* Color)) void)
      colors))
  (define (get-image-alpha-border image threshold)
    (let ([ret (make-ftype-pointer
                 Rectangle
                 (foreign-alloc (ftype-sizeof Rectangle)))])
      ((foreign-procedure "GetImageAlphaBorder"
         ((& Image) float)
         (& Rectangle))
        ret
        image
        threshold)
      ret))
  (define (get-image-color image x y)
    (let ([ret (make-ftype-pointer
                 Color
                 (foreign-alloc (ftype-sizeof Color)))])
      ((foreign-procedure "GetImageColor"
         ((& Image) int int)
         (& Color))
        ret
        image
        x
        y)
      ret))
  (define (image-clear-background dst color)
    ((foreign-procedure "ImageClearBackground"
       ((* Image) (& Color))
       void)
      dst
      color))
  (define (image-draw-pixel dst pos-x pos-y color)
    ((foreign-procedure "ImageDrawPixel"
       ((* Image) int int (& Color))
       void)
      dst
      pos-x
      pos-y
      color))
  (define (image-draw-pixel-v dst position color)
    ((foreign-procedure "ImageDrawPixelV"
       ((* Image) (& Vector-2) (& Color))
       void)
      dst
      position
      color))
  (define (image-draw-line dst start-pos-x start-pos-y
           end-pos-x end-pos-y color)
    ((foreign-procedure "ImageDrawLine"
       ((* Image) int int int int (& Color))
       void) dst start-pos-x start-pos-y end-pos-x end-pos-y
      color))
  (define (image-draw-line-v dst start end color)
    ((foreign-procedure "ImageDrawLineV"
       ((* Image) (& Vector-2) (& Vector-2) (& Color))
       void)
      dst
      start
      end
      color))
  (define (image-draw-circle dst center-x center-y radius
           color)
    ((foreign-procedure "ImageDrawCircle"
       ((* Image) int int int (& Color))
       void) dst center-x center-y radius color))
  (define (image-draw-circle-v dst center radius color)
    ((foreign-procedure "ImageDrawCircleV"
       ((* Image) (& Vector-2) int (& Color))
       void)
      dst
      center
      radius
      color))
  (define (image-draw-circle-lines dst center-x center-y
           radius color)
    ((foreign-procedure "ImageDrawCircleLines"
       ((* Image) int int int (& Color))
       void) dst center-x center-y radius color))
  (define (image-draw-circle-lines-v dst center radius color)
    ((foreign-procedure "ImageDrawCircleLinesV"
       ((* Image) (& Vector-2) int (& Color))
       void)
      dst
      center
      radius
      color))
  (define (image-draw-rectangle dst pos-x pos-y width height
           color)
    ((foreign-procedure "ImageDrawRectangle"
       ((* Image) int int int int (& Color))
       void) dst pos-x pos-y width height color))
  (define (image-draw-rectangle-v dst position size color)
    ((foreign-procedure "ImageDrawRectangleV"
       ((* Image) (& Vector-2) (& Vector-2) (& Color))
       void)
      dst
      position
      size
      color))
  (define (image-draw-rectangle-rec dst rec color)
    ((foreign-procedure "ImageDrawRectangleRec"
       ((* Image) (& Rectangle) (& Color))
       void)
      dst
      rec
      color))
  (define (image-draw-rectangle-lines dst rec thick color)
    ((foreign-procedure "ImageDrawRectangleLines"
       ((* Image) (& Rectangle) int (& Color))
       void)
      dst
      rec
      thick
      color))
  (define (image-draw dst src src-rec dst-rec tint)
    ((foreign-procedure "ImageDraw"
       ((* Image) (& Image) (& Rectangle) (& Rectangle) (& Color))
       void) dst src src-rec dst-rec tint))
  (define (image-draw-text dst text pos-x pos-y font-size
           color)
    ((foreign-procedure "ImageDrawText"
       ((* Image) string int int int (& Color))
       void) dst text pos-x pos-y font-size color))
  (define (image-draw-text-ex dst font text position font-size
           spacing tint)
    ((foreign-procedure "ImageDrawTextEx"
       ((* Image)
        (& Font)
        string
        (& Vector-2)
        float
        float
        (& Color))
       void) dst font text position font-size spacing tint))
  (define (load-texture file-name)
    (let ([ret (make-ftype-pointer
                 Texture
                 (foreign-alloc (ftype-sizeof Texture)))])
      ((foreign-procedure "LoadTexture" (string) (& Texture))
        ret
        file-name)
      ret))
  (define (load-texture-from-image image)
    (let ([ret (make-ftype-pointer
                 Texture
                 (foreign-alloc (ftype-sizeof Texture)))])
      ((foreign-procedure "LoadTextureFromImage"
         ((& Image))
         (& Texture))
        ret
        image)
      ret))
  (define (load-texture-cubemap image layout)
    (let ([ret (make-ftype-pointer
                 Texture
                 (foreign-alloc (ftype-sizeof Texture)))])
      ((foreign-procedure "LoadTextureCubemap"
         ((& Image) int)
         (& Texture))
        ret
        image
        layout)
      ret))
  (define (load-render-texture width height)
    (let ([ret (make-ftype-pointer
                 Render-Texture
                 (foreign-alloc (ftype-sizeof Render-Texture)))])
      ((foreign-procedure "LoadRenderTexture"
         (int int)
         (& Render-Texture))
        ret
        width
        height)
      ret))
  (define (unload-texture texture)
    ((foreign-procedure "UnloadTexture" ((& Texture)) void)
      texture))
  (define (unload-render-texture target)
    ((foreign-procedure "UnloadRenderTexture"
       ((& Render-Texture))
       void)
      target))
  (define (update-texture texture pixels)
    ((foreign-procedure "UpdateTexture"
       ((& Texture) void*)
       void)
      texture
      pixels))
  (define (update-texture-rec texture rec pixels)
    ((foreign-procedure "UpdateTextureRec"
       ((& Texture) (& Rectangle) void*)
       void)
      texture
      rec
      pixels))
  (define (gen-texture-mipmaps texture)
    ((foreign-procedure "GenTextureMipmaps" ((* Texture)) void)
      texture))
  (define (set-texture-filter texture filter)
    ((foreign-procedure "SetTextureFilter"
       ((& Texture) int)
       void)
      texture
      filter))
  (define (set-texture-wrap texture wrap)
    ((foreign-procedure "SetTextureWrap" ((& Texture) int) void)
      texture
      wrap))
  (define (draw-texture texture pos-x pos-y tint)
    ((foreign-procedure "DrawTexture"
       ((& Texture) int int (& Color))
       void)
      texture
      pos-x
      pos-y
      tint))
  (define (draw-texture-v texture position tint)
    ((foreign-procedure "DrawTextureV"
       ((& Texture) (& Vector-2) (& Color))
       void)
      texture
      position
      tint))
  (define (draw-texture-ex texture position rotation scale
           tint)
    ((foreign-procedure "DrawTextureEx"
       ((& Texture) (& Vector-2) float float (& Color))
       void) texture position rotation scale tint))
  (define (draw-texture-rec texture source position tint)
    ((foreign-procedure "DrawTextureRec"
       ((& Texture) (& Rectangle) (& Vector-2) (& Color))
       void)
      texture
      source
      position
      tint))
  (define (draw-texture-quad texture tiling offset quad tint)
    ((foreign-procedure "DrawTextureQuad"
       ((& Texture)
        (& Vector-2)
        (& Vector-2)
        (& Rectangle)
        (& Color))
       void) texture tiling offset quad tint))
  (define (draw-texture-tiled texture source dest origin
           rotation scale tint)
    ((foreign-procedure "DrawTextureTiled"
       ((& Texture)
        (& Rectangle)
        (& Rectangle)
        (& Vector-2)
        float
        float
        (& Color))
       void) texture source dest origin rotation scale tint))
  (define (draw-texture-pro texture source dest origin
           rotation tint)
    ((foreign-procedure "DrawTexturePro"
       ((& Texture)
        (& Rectangle)
        (& Rectangle)
        (& Vector-2)
        float
        (& Color))
       void) texture source dest origin rotation tint))
  (define (draw-texture-npatch texture npatch-info dest origin
           rotation tint)
    ((foreign-procedure "DrawTextureNPatch"
       ((& Texture)
        (& Npatch-Info)
        (& Rectangle)
        (& Vector-2)
        float
        (& Color))
       void) texture npatch-info dest origin rotation tint))
  (define (draw-texture-poly texture center points texcoords
           point-count tint)
    ((foreign-procedure "DrawTexturePoly"
       ((& Texture)
        (& Vector-2)
        (* Vector-2)
        (* Vector-2)
        int
        (& Color))
       void) texture center points texcoords point-count tint))
  (define (fade color alpha)
    (let ([ret (make-ftype-pointer
                 Color
                 (foreign-alloc (ftype-sizeof Color)))])
      ((foreign-procedure "Fade" ((& Color) float) (& Color))
        ret
        color
        alpha)
      ret))
  (define (color-to-int color)
    ((foreign-procedure "ColorToInt" ((& Color)) int) color))
  (define (color-normalize color)
    (let ([ret (make-ftype-pointer
                 Vector-4
                 (foreign-alloc (ftype-sizeof Vector-4)))])
      ((foreign-procedure "ColorNormalize"
         ((& Color))
         (& Vector-4))
        ret
        color)
      ret))
  (define (color-from-normalized normalized)
    (let ([ret (make-ftype-pointer
                 Color
                 (foreign-alloc (ftype-sizeof Color)))])
      ((foreign-procedure "ColorFromNormalized"
         ((& Vector-4))
         (& Color))
        ret
        normalized)
      ret))
  (define (color-to-hsv color)
    (let ([ret (make-ftype-pointer
                 Vector-3
                 (foreign-alloc (ftype-sizeof Vector-3)))])
      ((foreign-procedure "ColorToHSV" ((& Color)) (& Vector-3))
        ret
        color)
      ret))
  (define (color-from-hsv hue saturation value)
    (let ([ret (make-ftype-pointer
                 Color
                 (foreign-alloc (ftype-sizeof Color)))])
      ((foreign-procedure "ColorFromHSV"
         (float float float)
         (& Color))
        ret
        hue
        saturation
        value)
      ret))
  (define (color-alpha color alpha)
    (let ([ret (make-ftype-pointer
                 Color
                 (foreign-alloc (ftype-sizeof Color)))])
      ((foreign-procedure "ColorAlpha"
         ((& Color) float)
         (& Color))
        ret
        color
        alpha)
      ret))
  (define (color-alpha-blend dst src tint)
    (let ([ret (make-ftype-pointer
                 Color
                 (foreign-alloc (ftype-sizeof Color)))])
      ((foreign-procedure "ColorAlphaBlend"
         ((& Color) (& Color) (& Color))
         (& Color))
        ret
        dst
        src
        tint)
      ret))
  (define (get-color hex-value)
    (let ([ret (make-ftype-pointer
                 Color
                 (foreign-alloc (ftype-sizeof Color)))])
      ((foreign-procedure "GetColor" (unsigned) (& Color))
        ret
        hex-value)
      ret))
  (define (get-pixel-color src-ptr format)
    (let ([ret (make-ftype-pointer
                 Color
                 (foreign-alloc (ftype-sizeof Color)))])
      ((foreign-procedure "GetPixelColor" (void* int) (& Color))
        ret
        src-ptr
        format)
      ret))
  (define (set-pixel-color dst-ptr color format)
    ((foreign-procedure "SetPixelColor"
       (void* (& Color) int)
       void)
      dst-ptr
      color
      format))
  (define (get-pixel-data-size width height format)
    ((foreign-procedure "GetPixelDataSize" (int int int) int)
      width
      height
      format))
  (define (get-font-default)
    (let ([ret (make-ftype-pointer
                 Font
                 (foreign-alloc (ftype-sizeof Font)))])
      ((foreign-procedure "GetFontDefault" () (& Font)) ret)
      ret))
  (define (load-font file-name)
    (let ([ret (make-ftype-pointer
                 Font
                 (foreign-alloc (ftype-sizeof Font)))])
      ((foreign-procedure "LoadFont" (string) (& Font))
        ret
        file-name)
      ret))
  (define (load-font-ex file-name font-size font-chars
           glyph-count)
    (let ([ret (make-ftype-pointer
                 Font
                 (foreign-alloc (ftype-sizeof Font)))])
      ((foreign-procedure "LoadFontEx"
         (string int (* int) int)
         (& Font)) ret file-name font-size font-chars glyph-count)
      ret))
  (define (load-font-from-image image key first-char)
    (let ([ret (make-ftype-pointer
                 Font
                 (foreign-alloc (ftype-sizeof Font)))])
      ((foreign-procedure "LoadFontFromImage"
         ((& Image) (& Color) int)
         (& Font))
        ret
        image
        key
        first-char)
      ret))
  (define (load-font-from-memory file-type file-data data-size
           font-size font-chars glyph-count)
    (let ([ret (make-ftype-pointer
                 Font
                 (foreign-alloc (ftype-sizeof Font)))])
      ((foreign-procedure "LoadFontFromMemory"
         (string (* unsigned-8) int int (* int) int)
         (& Font)) ret file-type file-data data-size font-size
        font-chars glyph-count)
      ret))
  (define (load-font-data file-data data-size font-size
           font-chars glyph-count type)
    ((foreign-procedure "LoadFontData"
       ((* unsigned-8) int int (* int) int int)
       (* Glyph-Info)) file-data data-size font-size font-chars
      glyph-count type))
  (define (unload-font-data chars glyph-count)
    ((foreign-procedure "UnloadFontData"
       ((* Glyph-Info) int)
       void)
      chars
      glyph-count))
  (define (unload-font font)
    ((foreign-procedure "UnloadFont" ((& Font)) void) font))
  (define (export-font-as-code font file-name)
    ((foreign-procedure "ExportFontAsCode"
       ((& Font) string)
       boolean)
      font
      file-name))
  (define (draw-fps pos-x pos-y)
    ((foreign-procedure "DrawFPS" (int int) void) pos-x pos-y))
  (define (draw-text text pos-x pos-y font-size color)
    ((foreign-procedure "DrawText"
       (string int int int (& Color))
       void) text pos-x pos-y font-size color))
  (define (draw-text-ex font text position font-size spacing
           tint)
    ((foreign-procedure "DrawTextEx"
       ((& Font) string (& Vector-2) float float (& Color))
       void) font text position font-size spacing tint))
  (define (draw-text-pro font text position origin rotation
           font-size spacing tint)
    ((foreign-procedure "DrawTextPro"
       ((& Font)
        string
        (& Vector-2)
        (& Vector-2)
        float
        float
        float
        (& Color))
       void) font text position origin rotation font-size spacing
      tint))
  (define (draw-text-codepoint font codepoint position
           font-size tint)
    ((foreign-procedure "DrawTextCodepoint"
       ((& Font) int (& Vector-2) float (& Color))
       void) font codepoint position font-size tint))
  (define (draw-text-codepoints font codepoints count position
           font-size spacing tint)
    ((foreign-procedure "DrawTextCodepoints"
       ((& Font) (* int) int (& Vector-2) float float (& Color))
       void) font codepoints count position font-size spacing
      tint))
  (define (measure-text text font-size)
    ((foreign-procedure "MeasureText" (string int) int)
      text
      font-size))
  (define (measure-text-ex font text font-size spacing)
    (let ([ret (make-ftype-pointer
                 Vector-2
                 (foreign-alloc (ftype-sizeof Vector-2)))])
      ((foreign-procedure "MeasureTextEx"
         ((& Font) string float float)
         (& Vector-2)) ret font text font-size spacing)
      ret))
  (define (get-glyph-index font codepoint)
    ((foreign-procedure "GetGlyphIndex" ((& Font) int) int)
      font
      codepoint))
  (define (get-glyph-info font codepoint)
    (let ([ret (make-ftype-pointer
                 Glyph-Info
                 (foreign-alloc (ftype-sizeof Glyph-Info)))])
      ((foreign-procedure "GetGlyphInfo"
         ((& Font) int)
         (& Glyph-Info))
        ret
        font
        codepoint)
      ret))
  (define (get-glyph-atlas-rec font codepoint)
    (let ([ret (make-ftype-pointer
                 Rectangle
                 (foreign-alloc (ftype-sizeof Rectangle)))])
      ((foreign-procedure "GetGlyphAtlasRec"
         ((& Font) int)
         (& Rectangle))
        ret
        font
        codepoint)
      ret))
  (define (load-utf8 codepoints length)
    ((foreign-procedure "LoadUTF8" ((* int) int) string)
      codepoints
      length))
  (define (unload-utf8 text)
    ((foreign-procedure "UnloadUTF8" (string) void) text))
  (define (load-codepoints text count)
    ((foreign-procedure "LoadCodepoints"
       (string (* int))
       (* int))
      text
      count))
  (define (unload-codepoints codepoints)
    ((foreign-procedure "UnloadCodepoints" ((* int)) void)
      codepoints))
  (define (get-codepoint-count text)
    ((foreign-procedure "GetCodepointCount" (string) int) text))
  (define (get-codepoint text codepoint-size)
    ((foreign-procedure "GetCodepoint" (string (* int)) int)
      text
      codepoint-size))
  (define (get-codepoint-next text codepoint-size)
    ((foreign-procedure "GetCodepointNext" (string (* int)) int)
      text
      codepoint-size))
  (define (get-codepoint-previous text codepoint-size)
    ((foreign-procedure "GetCodepointPrevious"
       (string (* int))
       int)
      text
      codepoint-size))
  (define (codepoint-to-utf8 codepoint utf-8size)
    ((foreign-procedure "CodepointToUTF8" (int (* int)) string)
      codepoint
      utf-8size))
  (define (text-copy dst src)
    ((foreign-procedure "TextCopy" (string string) int)
      dst
      src))
  (define (text-is-equal text-1 text-2)
    ((foreign-procedure "TextIsEqual" (string string) boolean)
      text-1
      text-2))
  (define (text-length text)
    ((foreign-procedure "TextLength" (string) unsigned) text))
  (define (text-subtext text position length)
    ((foreign-procedure "TextSubtext" (string int int) string)
      text
      position
      length))
  (define (text-replace text replace by)
    ((foreign-procedure "TextReplace"
       (string string string)
       string)
      text
      replace
      by))
  (define (text-insert text insert position)
    ((foreign-procedure "TextInsert" (string string int) string)
      text
      insert
      position))
  (define (text-append text append position)
    ((foreign-procedure "TextAppend"
       (string string (* int))
       void)
      text
      append
      position))
  (define (text-find-index text find)
    ((foreign-procedure "TextFindIndex" (string string) int)
      text
      find))
  (define (text-to-upper text)
    ((foreign-procedure "TextToUpper" (string) string) text))
  (define (text-to-lower text)
    ((foreign-procedure "TextToLower" (string) string) text))
  (define (text-to-pascal text)
    ((foreign-procedure "TextToPascal" (string) string) text))
  (define (text-to-integer text)
    ((foreign-procedure "TextToInteger" (string) int) text))
  (define (draw-line-3d start-pos end-pos color)
    ((foreign-procedure "DrawLine3D"
       ((& Vector-3) (& Vector-3) (& Color))
       void)
      start-pos
      end-pos
      color))
  (define (draw-point-3d position color)
    ((foreign-procedure "DrawPoint3D"
       ((& Vector-3) (& Color))
       void)
      position
      color))
  (define (draw-circle-3d center radius rotation-axis
           rotation-angle color)
    ((foreign-procedure "DrawCircle3D"
       ((& Vector-3) float (& Vector-3) float (& Color))
       void) center radius rotation-axis rotation-angle color))
  (define (draw-triangle-3d v1 v2 v3 color)
    ((foreign-procedure "DrawTriangle3D"
       ((& Vector-3) (& Vector-3) (& Vector-3) (& Color))
       void)
      v1
      v2
      v3
      color))
  (define (draw-triangle-strip-3d points point-count color)
    ((foreign-procedure "DrawTriangleStrip3D"
       ((* Vector-3) int (& Color))
       void)
      points
      point-count
      color))
  (define (draw-cube position width height length color)
    ((foreign-procedure "DrawCube"
       ((& Vector-3) float float float (& Color))
       void) position width height length color))
  (define (draw-cube-v position size color)
    ((foreign-procedure "DrawCubeV"
       ((& Vector-3) (& Vector-3) (& Color))
       void)
      position
      size
      color))
  (define (draw-cube-wires position width height length color)
    ((foreign-procedure "DrawCubeWires"
       ((& Vector-3) float float float (& Color))
       void) position width height length color))
  (define (draw-cube-wires-v position size color)
    ((foreign-procedure "DrawCubeWiresV"
       ((& Vector-3) (& Vector-3) (& Color))
       void)
      position
      size
      color))
  (define (draw-cube-texture texture position width height
           length color)
    ((foreign-procedure "DrawCubeTexture"
       ((& Texture) (& Vector-3) float float float (& Color))
       void) texture position width height length color))
  (define (draw-cube-texture-rec texture source position width
           height length color)
    ((foreign-procedure "DrawCubeTextureRec"
       ((& Texture)
        (& Rectangle)
        (& Vector-3)
        float
        float
        float
        (& Color))
       void) texture source position width height length color))
  (define (draw-sphere center-pos radius color)
    ((foreign-procedure "DrawSphere"
       ((& Vector-3) float (& Color))
       void)
      center-pos
      radius
      color))
  (define (draw-sphere-ex center-pos radius rings slices
           color)
    ((foreign-procedure "DrawSphereEx"
       ((& Vector-3) float int int (& Color))
       void) center-pos radius rings slices color))
  (define (draw-sphere-wires center-pos radius rings slices
           color)
    ((foreign-procedure "DrawSphereWires"
       ((& Vector-3) float int int (& Color))
       void) center-pos radius rings slices color))
  (define (draw-cylinder position radius-top radius-bottom
           height slices color)
    ((foreign-procedure "DrawCylinder"
       ((& Vector-3) float float float int (& Color))
       void) position radius-top radius-bottom height slices
      color))
  (define (draw-cylinder-ex start-pos end-pos start-radius
           end-radius sides color)
    ((foreign-procedure "DrawCylinderEx"
       ((& Vector-3) (& Vector-3) float float int (& Color))
       void) start-pos end-pos start-radius end-radius sides
      color))
  (define (draw-cylinder-wires position radius-top
           radius-bottom height slices color)
    ((foreign-procedure "DrawCylinderWires"
       ((& Vector-3) float float float int (& Color))
       void) position radius-top radius-bottom height slices
      color))
  (define (draw-cylinder-wires-ex start-pos end-pos
           start-radius end-radius sides color)
    ((foreign-procedure "DrawCylinderWiresEx"
       ((& Vector-3) (& Vector-3) float float int (& Color))
       void) start-pos end-pos start-radius end-radius sides
      color))
  (define (draw-plane center-pos size color)
    ((foreign-procedure "DrawPlane"
       ((& Vector-3) (& Vector-2) (& Color))
       void)
      center-pos
      size
      color))
  (define (draw-ray ray color)
    ((foreign-procedure "DrawRay" ((& Ray) (& Color)) void)
      ray
      color))
  (define (draw-grid slices spacing)
    ((foreign-procedure "DrawGrid" (int float) void)
      slices
      spacing))
  (define (load-model file-name)
    (let ([ret (make-ftype-pointer
                 Model
                 (foreign-alloc (ftype-sizeof Model)))])
      ((foreign-procedure "LoadModel" (string) (& Model))
        ret
        file-name)
      ret))
  (define (load-model-from-mesh mesh)
    (let ([ret (make-ftype-pointer
                 Model
                 (foreign-alloc (ftype-sizeof Model)))])
      ((foreign-procedure "LoadModelFromMesh"
         ((& Mesh))
         (& Model))
        ret
        mesh)
      ret))
  (define (unload-model model)
    ((foreign-procedure "UnloadModel" ((& Model)) void) model))
  (define (unload-model-keep-meshes model)
    ((foreign-procedure "UnloadModelKeepMeshes"
       ((& Model))
       void)
      model))
  (define (get-model-bounding-box model)
    (let ([ret (make-ftype-pointer
                 Bounding-Box
                 (foreign-alloc (ftype-sizeof Bounding-Box)))])
      ((foreign-procedure "GetModelBoundingBox"
         ((& Model))
         (& Bounding-Box))
        ret
        model)
      ret))
  (define (draw-model model position scale tint)
    ((foreign-procedure "DrawModel"
       ((& Model) (& Vector-3) float (& Color))
       void)
      model
      position
      scale
      tint))
  (define (draw-model-ex model position rotation-axis
           rotation-angle scale tint)
    ((foreign-procedure "DrawModelEx"
       ((& Model)
        (& Vector-3)
        (& Vector-3)
        float
        (& Vector-3)
        (& Color))
       void) model position rotation-axis rotation-angle scale
      tint))
  (define (draw-model-wires model position scale tint)
    ((foreign-procedure "DrawModelWires"
       ((& Model) (& Vector-3) float (& Color))
       void)
      model
      position
      scale
      tint))
  (define (draw-model-wires-ex model position rotation-axis
           rotation-angle scale tint)
    ((foreign-procedure "DrawModelWiresEx"
       ((& Model)
        (& Vector-3)
        (& Vector-3)
        float
        (& Vector-3)
        (& Color))
       void) model position rotation-axis rotation-angle scale
      tint))
  (define (draw-bounding-box box color)
    ((foreign-procedure "DrawBoundingBox"
       ((& Bounding-Box) (& Color))
       void)
      box
      color))
  (define (draw-billboard camera texture position size tint)
    ((foreign-procedure "DrawBillboard"
       ((& Camera-3D) (& Texture) (& Vector-3) float (& Color))
       void) camera texture position size tint))
  (define (draw-billboard-rec camera texture source position
           size tint)
    ((foreign-procedure "DrawBillboardRec"
       ((& Camera-3D)
        (& Texture)
        (& Rectangle)
        (& Vector-3)
        (& Vector-2)
        (& Color))
       void) camera texture source position size tint))
  (define (draw-billboard-pro camera texture source position
           up size origin rotation tint)
    ((foreign-procedure "DrawBillboardPro"
       ((& Camera-3D)
        (& Texture)
        (& Rectangle)
        (& Vector-3)
        (& Vector-3)
        (& Vector-2)
        (& Vector-2)
        float
        (& Color))
       void) camera texture source position up size origin rotation
      tint))
  (define (upload-mesh mesh dynamic)
    ((foreign-procedure "UploadMesh" ((* Mesh) boolean) void)
      mesh
      dynamic))
  (define (update-mesh-buffer mesh index data data-size
           offset)
    ((foreign-procedure "UpdateMeshBuffer"
       ((& Mesh) int void* int int)
       void) mesh index data data-size offset))
  (define (unload-mesh mesh)
    ((foreign-procedure "UnloadMesh" ((& Mesh)) void) mesh))
  (define (draw-mesh mesh material transform)
    ((foreign-procedure "DrawMesh"
       ((& Mesh) (& Material) (& Matrix))
       void)
      mesh
      material
      transform))
  (define (draw-mesh-instanced mesh material transforms
           instances)
    ((foreign-procedure "DrawMeshInstanced"
       ((& Mesh) (& Material) (* Matrix) int)
       void)
      mesh
      material
      transforms
      instances))
  (define (export-mesh mesh file-name)
    ((foreign-procedure "ExportMesh" ((& Mesh) string) boolean)
      mesh
      file-name))
  (define (get-mesh-bounding-box mesh)
    (let ([ret (make-ftype-pointer
                 Bounding-Box
                 (foreign-alloc (ftype-sizeof Bounding-Box)))])
      ((foreign-procedure "GetMeshBoundingBox"
         ((& Mesh))
         (& Bounding-Box))
        ret
        mesh)
      ret))
  (define (gen-mesh-tangents mesh)
    ((foreign-procedure "GenMeshTangents" ((* Mesh)) void)
      mesh))
  (define (gen-mesh-poly sides radius)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshPoly" (int float) (& Mesh))
        ret
        sides
        radius)
      ret))
  (define (gen-mesh-plane width length res-x res-z)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshPlane"
         (float float int int)
         (& Mesh)) ret width length res-x res-z)
      ret))
  (define (gen-mesh-cube width height length)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshCube"
         (float float float)
         (& Mesh))
        ret
        width
        height
        length)
      ret))
  (define (gen-mesh-sphere radius rings slices)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshSphere"
         (float int int)
         (& Mesh))
        ret
        radius
        rings
        slices)
      ret))
  (define (gen-mesh-hemi-sphere radius rings slices)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshHemiSphere"
         (float int int)
         (& Mesh))
        ret
        radius
        rings
        slices)
      ret))
  (define (gen-mesh-cylinder radius height slices)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshCylinder"
         (float float int)
         (& Mesh))
        ret
        radius
        height
        slices)
      ret))
  (define (gen-mesh-cone radius height slices)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshCone"
         (float float int)
         (& Mesh))
        ret
        radius
        height
        slices)
      ret))
  (define (gen-mesh-torus radius size rad-seg sides)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshTorus"
         (float float int int)
         (& Mesh)) ret radius size rad-seg sides)
      ret))
  (define (gen-mesh-knot radius size rad-seg sides)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshKnot"
         (float float int int)
         (& Mesh)) ret radius size rad-seg sides)
      ret))
  (define (gen-mesh-heightmap heightmap size)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshHeightmap"
         ((& Image) (& Vector-3))
         (& Mesh))
        ret
        heightmap
        size)
      ret))
  (define (gen-mesh-cubicmap cubicmap cube-size)
    (let ([ret (make-ftype-pointer
                 Mesh
                 (foreign-alloc (ftype-sizeof Mesh)))])
      ((foreign-procedure "GenMeshCubicmap"
         ((& Image) (& Vector-3))
         (& Mesh))
        ret
        cubicmap
        cube-size)
      ret))
  (define (load-materials file-name material-count)
    ((foreign-procedure "LoadMaterials"
       (string (* int))
       (* Material))
      file-name
      material-count))
  (define (load-material-default)
    (let ([ret (make-ftype-pointer
                 Material
                 (foreign-alloc (ftype-sizeof Material)))])
      ((foreign-procedure "LoadMaterialDefault" () (& Material))
        ret)
      ret))
  (define (unload-material material)
    ((foreign-procedure "UnloadMaterial" ((& Material)) void)
      material))
  (define (set-material-texture material map-type texture)
    ((foreign-procedure "SetMaterialTexture"
       ((* Material) int (& Texture))
       void)
      material
      map-type
      texture))
  (define (set-model-mesh-material model mesh-id material-id)
    ((foreign-procedure "SetModelMeshMaterial"
       ((* Model) int int)
       void)
      model
      mesh-id
      material-id))
  (define (load-model-animations file-name anim-count)
    ((foreign-procedure "LoadModelAnimations"
       (string (* unsigned))
       (* Model-Animation))
      file-name
      anim-count))
  (define (update-model-animation model anim frame)
    ((foreign-procedure "UpdateModelAnimation"
       ((& Model) (& Model-Animation) int)
       void)
      model
      anim
      frame))
  (define (unload-model-animation anim)
    ((foreign-procedure "UnloadModelAnimation"
       ((& Model-Animation))
       void)
      anim))
  (define (unload-model-animations animations count)
    ((foreign-procedure "UnloadModelAnimations"
       ((* Model-Animation) unsigned)
       void)
      animations
      count))
  (define (is-model-animation-valid model anim)
    ((foreign-procedure "IsModelAnimationValid"
       ((& Model) (& Model-Animation))
       boolean)
      model
      anim))
  (define (check-collision-spheres center-1 radius-1 center-2
           radius-2)
    ((foreign-procedure "CheckCollisionSpheres"
       ((& Vector-3) float (& Vector-3) float)
       boolean)
      center-1
      radius-1
      center-2
      radius-2))
  (define (check-collision-boxes box-1 box-2)
    ((foreign-procedure "CheckCollisionBoxes"
       ((& Bounding-Box) (& Bounding-Box))
       boolean)
      box-1
      box-2))
  (define (check-collision-box-sphere box center radius)
    ((foreign-procedure "CheckCollisionBoxSphere"
       ((& Bounding-Box) (& Vector-3) float)
       boolean)
      box
      center
      radius))
  (define (get-ray-collision-sphere ray center radius)
    (let ([ret (make-ftype-pointer
                 Ray-Collision
                 (foreign-alloc (ftype-sizeof Ray-Collision)))])
      ((foreign-procedure "GetRayCollisionSphere"
         ((& Ray) (& Vector-3) float)
         (& Ray-Collision))
        ret
        ray
        center
        radius)
      ret))
  (define (get-ray-collision-box ray box)
    (let ([ret (make-ftype-pointer
                 Ray-Collision
                 (foreign-alloc (ftype-sizeof Ray-Collision)))])
      ((foreign-procedure "GetRayCollisionBox"
         ((& Ray) (& Bounding-Box))
         (& Ray-Collision))
        ret
        ray
        box)
      ret))
  (define (get-ray-collision-mesh ray mesh transform)
    (let ([ret (make-ftype-pointer
                 Ray-Collision
                 (foreign-alloc (ftype-sizeof Ray-Collision)))])
      ((foreign-procedure "GetRayCollisionMesh"
         ((& Ray) (& Mesh) (& Matrix))
         (& Ray-Collision))
        ret
        ray
        mesh
        transform)
      ret))
  (define (get-ray-collision-triangle ray p1 p2 p3)
    (let ([ret (make-ftype-pointer
                 Ray-Collision
                 (foreign-alloc (ftype-sizeof Ray-Collision)))])
      ((foreign-procedure "GetRayCollisionTriangle"
         ((& Ray) (& Vector-3) (& Vector-3) (& Vector-3))
         (& Ray-Collision)) ret ray p1 p2 p3)
      ret))
  (define (get-ray-collision-quad ray p1 p2 p3 p4)
    (let ([ret (make-ftype-pointer
                 Ray-Collision
                 (foreign-alloc (ftype-sizeof Ray-Collision)))])
      ((foreign-procedure "GetRayCollisionQuad"
         ((& Ray)
          (& Vector-3)
          (& Vector-3)
          (& Vector-3)
          (& Vector-3))
         (& Ray-Collision)) ret ray p1 p2 p3 p4)
      ret))
  (define (init-audio-device)
    ((foreign-procedure "InitAudioDevice" () void)))
  (define (close-audio-device)
    ((foreign-procedure "CloseAudioDevice" () void)))
  (define (is-audio-device-ready)
    ((foreign-procedure "IsAudioDeviceReady" () boolean)))
  (define (set-master-volume volume)
    ((foreign-procedure "SetMasterVolume" (float) void) volume))
  (define (load-wave file-name)
    (let ([ret (make-ftype-pointer
                 Wave
                 (foreign-alloc (ftype-sizeof Wave)))])
      ((foreign-procedure "LoadWave" (string) (& Wave))
        ret
        file-name)
      ret))
  (define (load-wave-from-memory file-type file-data
           data-size)
    (let ([ret (make-ftype-pointer
                 Wave
                 (foreign-alloc (ftype-sizeof Wave)))])
      ((foreign-procedure "LoadWaveFromMemory"
         (string (* unsigned-8) int)
         (& Wave))
        ret
        file-type
        file-data
        data-size)
      ret))
  (define (load-sound file-name)
    (let ([ret (make-ftype-pointer
                 Sound
                 (foreign-alloc (ftype-sizeof Sound)))])
      ((foreign-procedure "LoadSound" (string) (& Sound))
        ret
        file-name)
      ret))
  (define (load-sound-from-wave wave)
    (let ([ret (make-ftype-pointer
                 Sound
                 (foreign-alloc (ftype-sizeof Sound)))])
      ((foreign-procedure "LoadSoundFromWave"
         ((& Wave))
         (& Sound))
        ret
        wave)
      ret))
  (define (update-sound sound data sample-count)
    ((foreign-procedure "UpdateSound"
       ((& Sound) void* int)
       void)
      sound
      data
      sample-count))
  (define (unload-wave wave)
    ((foreign-procedure "UnloadWave" ((& Wave)) void) wave))
  (define (unload-sound sound)
    ((foreign-procedure "UnloadSound" ((& Sound)) void) sound))
  (define (export-wave wave file-name)
    ((foreign-procedure "ExportWave" ((& Wave) string) boolean)
      wave
      file-name))
  (define (export-wave-as-code wave file-name)
    ((foreign-procedure "ExportWaveAsCode"
       ((& Wave) string)
       boolean)
      wave
      file-name))
  (define (play-sound sound)
    ((foreign-procedure "PlaySound" ((& Sound)) void) sound))
  (define (stop-sound sound)
    ((foreign-procedure "StopSound" ((& Sound)) void) sound))
  (define (pause-sound sound)
    ((foreign-procedure "PauseSound" ((& Sound)) void) sound))
  (define (resume-sound sound)
    ((foreign-procedure "ResumeSound" ((& Sound)) void) sound))
  (define (play-sound-multi sound)
    ((foreign-procedure "PlaySoundMulti" ((& Sound)) void)
      sound))
  (define (stop-sound-multi)
    ((foreign-procedure "StopSoundMulti" () void)))
  (define (get-sounds-playing)
    ((foreign-procedure "GetSoundsPlaying" () int)))
  (define (is-sound-playing sound)
    ((foreign-procedure "IsSoundPlaying" ((& Sound)) boolean)
      sound))
  (define (set-sound-volume sound volume)
    ((foreign-procedure "SetSoundVolume" ((& Sound) float) void)
      sound
      volume))
  (define (set-sound-pitch sound pitch)
    ((foreign-procedure "SetSoundPitch" ((& Sound) float) void)
      sound
      pitch))
  (define (set-sound-pan sound pan)
    ((foreign-procedure "SetSoundPan" ((& Sound) float) void)
      sound
      pan))
  (define (wave-copy wave)
    (let ([ret (make-ftype-pointer
                 Wave
                 (foreign-alloc (ftype-sizeof Wave)))])
      ((foreign-procedure "WaveCopy" ((& Wave)) (& Wave))
        ret
        wave)
      ret))
  (define (wave-crop wave init-sample final-sample)
    ((foreign-procedure "WaveCrop" ((* Wave) int int) void)
      wave
      init-sample
      final-sample))
  (define (wave-format wave sample-rate sample-size channels)
    ((foreign-procedure "WaveFormat"
       ((* Wave) int int int)
       void)
      wave
      sample-rate
      sample-size
      channels))
  (define (load-wave-samples wave)
    ((foreign-procedure "LoadWaveSamples" ((& Wave)) (* float))
      wave))
  (define (unload-wave-samples samples)
    ((foreign-procedure "UnloadWaveSamples" ((* float)) void)
      samples))
  (define (load-music-stream file-name)
    (let ([ret (make-ftype-pointer
                 Music
                 (foreign-alloc (ftype-sizeof Music)))])
      ((foreign-procedure "LoadMusicStream" (string) (& Music))
        ret
        file-name)
      ret))
  (define (load-music-stream-from-memory file-type data
           data-size)
    (let ([ret (make-ftype-pointer
                 Music
                 (foreign-alloc (ftype-sizeof Music)))])
      ((foreign-procedure "LoadMusicStreamFromMemory"
         (string (* unsigned-8) int)
         (& Music))
        ret
        file-type
        data
        data-size)
      ret))
  (define (unload-music-stream music)
    ((foreign-procedure "UnloadMusicStream" ((& Music)) void)
      music))
  (define (play-music-stream music)
    ((foreign-procedure "PlayMusicStream" ((& Music)) void)
      music))
  (define (is-music-stream-playing music)
    ((foreign-procedure "IsMusicStreamPlaying"
       ((& Music))
       boolean)
      music))
  (define (update-music-stream music)
    ((foreign-procedure "UpdateMusicStream" ((& Music)) void)
      music))
  (define (stop-music-stream music)
    ((foreign-procedure "StopMusicStream" ((& Music)) void)
      music))
  (define (pause-music-stream music)
    ((foreign-procedure "PauseMusicStream" ((& Music)) void)
      music))
  (define (resume-music-stream music)
    ((foreign-procedure "ResumeMusicStream" ((& Music)) void)
      music))
  (define (seek-music-stream music position)
    ((foreign-procedure "SeekMusicStream"
       ((& Music) float)
       void)
      music
      position))
  (define (set-music-volume music volume)
    ((foreign-procedure "SetMusicVolume" ((& Music) float) void)
      music
      volume))
  (define (set-music-pitch music pitch)
    ((foreign-procedure "SetMusicPitch" ((& Music) float) void)
      music
      pitch))
  (define (set-music-pan music pan)
    ((foreign-procedure "SetMusicPan" ((& Music) float) void)
      music
      pan))
  (define (get-music-time-length music)
    ((foreign-procedure "GetMusicTimeLength" ((& Music)) float)
      music))
  (define (get-music-time-played music)
    ((foreign-procedure "GetMusicTimePlayed" ((& Music)) float)
      music))
  (define (load-audio-stream sample-rate sample-size channels)
    (let ([ret (make-ftype-pointer
                 Audio-Stream
                 (foreign-alloc (ftype-sizeof Audio-Stream)))])
      ((foreign-procedure "LoadAudioStream"
         (unsigned unsigned unsigned)
         (& Audio-Stream))
        ret
        sample-rate
        sample-size
        channels)
      ret))
  (define (unload-audio-stream stream)
    ((foreign-procedure "UnloadAudioStream"
       ((& Audio-Stream))
       void)
      stream))
  (define (update-audio-stream stream data frame-count)
    ((foreign-procedure "UpdateAudioStream"
       ((& Audio-Stream) void* int)
       void)
      stream
      data
      frame-count))
  (define (is-audio-stream-processed stream)
    ((foreign-procedure "IsAudioStreamProcessed"
       ((& Audio-Stream))
       boolean)
      stream))
  (define (play-audio-stream stream)
    ((foreign-procedure "PlayAudioStream"
       ((& Audio-Stream))
       void)
      stream))
  (define (pause-audio-stream stream)
    ((foreign-procedure "PauseAudioStream"
       ((& Audio-Stream))
       void)
      stream))
  (define (resume-audio-stream stream)
    ((foreign-procedure "ResumeAudioStream"
       ((& Audio-Stream))
       void)
      stream))
  (define (is-audio-stream-playing stream)
    ((foreign-procedure "IsAudioStreamPlaying"
       ((& Audio-Stream))
       boolean)
      stream))
  (define (stop-audio-stream stream)
    ((foreign-procedure "StopAudioStream"
       ((& Audio-Stream))
       void)
      stream))
  (define (set-audio-stream-volume stream volume)
    ((foreign-procedure "SetAudioStreamVolume"
       ((& Audio-Stream) float)
       void)
      stream
      volume))
  (define (set-audio-stream-pitch stream pitch)
    ((foreign-procedure "SetAudioStreamPitch"
       ((& Audio-Stream) float)
       void)
      stream
      pitch))
  (define (set-audio-stream-pan stream pan)
    ((foreign-procedure "SetAudioStreamPan"
       ((& Audio-Stream) float)
       void)
      stream
      pan))
  (define (set-audio-stream-buffer-size-default size)
    ((foreign-procedure "SetAudioStreamBufferSizeDefault"
       (int)
       void)
      size))
  (define (set-audio-stream-callback stream callback)
    ((foreign-procedure "SetAudioStreamCallback"
       ((& Audio-Stream) void*)
       void)
      stream
      callback))
  (define (attach-audio-stream-processor stream processor)
    ((foreign-procedure "AttachAudioStreamProcessor"
       ((& Audio-Stream) void*)
       void)
      stream
      processor))
  (define (detach-audio-stream-processor stream processor)
    ((foreign-procedure "DetachAudioStreamProcessor"
       ((& Audio-Stream) void*)
       void)
      stream
      processor))
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
  (let load-loop ([libs (library-directories)])
    (when (null? libs) (error #f "Raylib not found"))
    (let ([libpath (string-append
                     (caar libs)
                     "/raylib/raylib.dll")])
      (if (file-exists? libpath)
          (load-shared-object libpath)
          (load-loop (cdr libs))))))
