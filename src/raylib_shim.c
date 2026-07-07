/* chez_raylib_shim.c — minimal shim for problematic struct returns.
 *
 * Chez 10.5's foreign-procedure interface doesn't handle struct-by-value
 * returns > 16 bytes on ARM64. We wrap the most common functions with
 * an explicit output parameter.
 *
 * Compile: cc -shared -fPIC -o chez_raylib_shim.dylib raylib_shim.c \
 *          -I<raylib src> -I<raylib src/external>
 */

#include "raylib.h"

/* Texture / Image loading (most commonly used in failing tests) */
void shim_LoadTexture(Texture *out, const char *fileName) { *out = LoadTexture(fileName); }
void shim_LoadTextureFromImage(Texture *out, Image image) { *out = LoadTextureFromImage(image); }
void shim_LoadImage(Image *out, const char *fileName) { *out = LoadImage(fileName); }
void shim_LoadImageFromTexture(Image *out, Texture texture) { *out = LoadImageFromTexture(texture); }
void shim_ImageCopy(Image *out, Image image) { *out = ImageCopy(image); }
void shim_ImageFromImage(Image *out, Image image, Rectangle rec) { *out = ImageFromImage(image, rec); }
void shim_ImageText(Image *out, const char *text, int fontSize, Color color) { *out = ImageText(text, fontSize, color); }

/* Audio: LoadSound (Sound) */
void shim_LoadSound(Sound *out, const char *fileName) { *out = LoadSound(fileName); }

/* Models */
void shim_LoadModel(Model *out, const char *fileName) { *out = LoadModel(fileName); }
void shim_LoadModelFromMesh(Model *out, Mesh mesh) { *out = LoadModelFromMesh(mesh); }

/* Camera projection (returns Matrix) */
void shim_GetCameraMatrix(Matrix *out, Camera3D camera) { *out = GetCameraMatrix(camera); }
void shim_GetCameraMatrix2D(Matrix *out, Camera2D camera) { *out = GetCameraMatrix2D(camera); }

/* Mouse/Window */
void shim_GetMousePosition(Vector2 *out) { *out = GetMousePosition(); }
void shim_GetMouseDelta(Vector2 *out) { *out = GetMouseDelta(); }
void shim_GetTouchPosition(Vector2 *out, int index) { *out = GetTouchPosition(index); }
void shim_GetWindowPosition(Vector2 *out) { *out = GetWindowPosition(); }
void shim_GetMonitorPosition(Vector2 *out, int monitor) { *out = GetMonitorPosition(monitor); }
void shim_GetWindowScaleDPI(Vector2 *out) { *out = GetWindowScaleDPI(); }

/* Color */
void shim_GetColor(Color *out, unsigned int hex) { *out = GetColor(hex); }
void shim_Fade(Color *out, Color color, float alpha) { *out = Fade(color, alpha); }
void shim_ColorAlpha(Color *out, Color color, float alpha) { *out = ColorAlpha(color, alpha); }
void shim_GetImageColor(Color *out, Image image, int x, int y) { *out = GetImageColor(image, x, y); }
void shim_ColorFromNormalized(Color *out, Vector4 normalized) { *out = ColorFromNormalized(normalized); }
void shim_ColorToHSV(Vector3 *out, Color color) { *out = ColorToHSV(color); }
void shim_ColorFromHSV(Color *out, float hue, float sat, float val) { *out = ColorFromHSV(hue, sat, val); }
void shim_ColorToInt(int *out, Color color) { *out = ColorToInt(color); }

/* Ray / Collision */
void shim_GetScreenToWorldRay(Ray *out, Vector2 position, Camera3D camera) { *out = GetScreenToWorldRay(position, camera); }
void shim_GetScreenToWorld2D(Vector2 *out, Vector2 position, Camera2D camera) { *out = GetScreenToWorld2D(position, camera); }
void shim_GetWorldToScreen2D(Vector2 *out, Vector2 position, Camera2D camera) { *out = GetWorldToScreen2D(position, camera); }
void shim_GetCollisionRec(Rectangle *out, Rectangle rec1, Rectangle rec2) { *out = GetCollisionRec(rec1, rec2); }
void shim_GetRayCollisionSphere(RayCollision *out, Ray ray, Vector3 center, float radius) { *out = GetRayCollisionSphere(ray, center, radius); }
void shim_GetRayCollisionBox(RayCollision *out, Ray ray, BoundingBox box) { *out = GetRayCollisionBox(ray, box); }
void shim_GetRayCollisionTriangle(RayCollision *out, Ray ray, Vector3 p1, Vector3 p2, Vector3 p3) { *out = GetRayCollisionTriangle(ray, p1, p2, p3); }
void shim_GetMeshBoundingBox(BoundingBox *out, Mesh mesh) { *out = GetMeshBoundingBox(mesh); }

/* RenderTexture */
void shim_LoadRenderTexture(RenderTexture *out, int width, int height) { *out = LoadRenderTexture(width, height); }
void shim_LoadTextureCubemap(TextureCubemap *out, Image image, int layout) { *out = LoadTextureCubemap(image, layout); }

/* Wave */
void shim_LoadWave(Wave *out, const char *fileName) { *out = LoadWave(fileName); }
void shim_LoadWaveFromMemory(Wave *out, const char *fileType, const unsigned char *data, int dataSize) { *out = LoadWaveFromMemory(fileType, data, dataSize); }
void shim_WaveCopy(Wave *out, Wave wave) { *out = WaveCopy(wave); }

/* AudioStream / Music */
void shim_LoadMusicStream(Music *out, const char *fileName) { *out = LoadMusicStream(fileName); }
void shim_LoadAudioStream(AudioStream *out, unsigned int sampleRate, unsigned int sampleSize, unsigned int channels) { *out = LoadAudioStream(sampleRate, sampleSize, channels); }
void shim_LoadSoundFromWave(Sound *out, Wave wave) { *out = LoadSoundFromWave(wave); }
void shim_LoadSoundAlias(Sound *out, Sound sound) { *out = LoadSoundAlias(sound); }

/* Image generation */
void shim_GenImageColor(Image *out, int width, int height, Color color) { *out = GenImageColor(width, height, color); }
void shim_GenImageGradientLinear(Image *out, int width, int height, int direction, Color start, Color end) { *out = GenImageGradientLinear(width, height, direction, start, end); }
void shim_GenImageGradientRadial(Image *out, int width, int height, float density, Color inner, Color outer) { *out = GenImageGradientRadial(width, height, density, inner, outer); }
void shim_GenImageGradientSquare(Image *out, int width, int height, float density, Color inner, Color outer) { *out = GenImageGradientSquare(width, height, density, inner, outer); }
void shim_GenImageChecked(Image *out, int width, int height, int checksX, int checksY, Color col1, Color col2) { *out = GenImageChecked(width, height, checksX, checksY, col1, col2); }
void shim_GenImageWhiteNoise(Image *out, int width, int height, float factor) { *out = GenImageWhiteNoise(width, height, factor); }
void shim_GenImagePerlinNoise(Image *out, int width, int height, int offsetX, int offsetY, float scale) { *out = GenImagePerlinNoise(width, height, offsetX, offsetY, scale); }
void shim_GenImageCellular(Image *out, int width, int height, int tileSize) { *out = GenImageCellular(width, height, tileSize); }
void shim_GenImageText(Image *out, int fontSize, const char *text) { *out = GenImageText(0, fontSize, text); }
void shim_ImageTextEx(Image *out, Font font, const char *text, float fontSize, float spacing, Color tint) { *out = ImageTextEx(font, text, fontSize, spacing, tint); }

/* Mesh generation */
void shim_GenMeshPlane(Mesh *out, float width, float length, int resX, int resZ) { *out = GenMeshPlane(width, length, resX, resZ); }
void shim_GenMeshCube(Mesh *out, float width, float height, float length) { *out = GenMeshCube(width, height, length); }
void shim_GenMeshSphere(Mesh *out, float radius, int rings, int slices) { *out = GenMeshSphere(radius, rings, slices); }
void shim_GenMeshHemiSphere(Mesh *out, float radius, int rings, int slices) { *out = GenMeshHemiSphere(radius, rings, slices); }
void shim_GenMeshCylinder(Mesh *out, float radius, float height, int slices) { *out = GenMeshCylinder(radius, height, slices); }
void shim_GenMeshTorus(Mesh *out, float radius, float size, int radSeg, int sides) { *out = GenMeshTorus(radius, size, radSeg, sides); }
void shim_GenMeshKnot(Mesh *out, float radius, float size, int radSeg, int sides) { *out = GenMeshKnot(radius, size, radSeg, sides); }
void shim_GenMeshHeightmap(Mesh *out, Image heightmap, Vector3 size) { *out = GenMeshHeightmap(heightmap, size); }
void shim_GenMeshCubicmap(Mesh *out, Image cubicmap, Vector3 cubeSize) { *out = GenMeshCubicmap(cubicmap, cubeSize); }
