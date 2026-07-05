# ADR 0001: Thin Scheme-record wrapping for simple raylib structs

## Status

Accepted. λ-0.3.

## Context

The raylib binding is consumed by Scheme code that wants to read
struct fields directly — `(vector-2-x cam)`, `(color-r c)`, etc.
Two layers already exist:

1. The `(raylib raylib (0 3))` library, generated from `raylib_api.sexpr`,
   with `define-ftype` plus accessor macros
   (`Vector-2-ref&`, `Vector-2-get`, `Vector-2-set!`).
2. The `(matrix)` library and the hand-written `(raylib raymath)`
   library, which inter-op row-of-Vector2 ↔ Scheme matrix rows.

The macros are convenient for raylib call sites but aren't idiomatic
Scheme: `(-Vector-2-get cam target)` doesn't feel like a `defstruct`.
For the 13 raylib structs whose fields are all scalars (Vector2/3/4,
Matrix, Color, Rectangle, Texture, GlyphInfo, BoneInfo, Sound,
VrDeviceInfo, VrStereoConfig, AutomationEvent), a thin `define-record-type`
layer alongside the existing ftype gives users natural
`vector-2-x`/`vector-2-x-set!`/`(equal? v1 v2)`/`vector-2?` ergonomics
without changing how the C side is called.

The 19 structs that mix scalar fields with pointers (`Image`, `Model`,
`Mesh`, `Shader`, `Material`, `Font`, `Camera2D/3D`, `Ray`, …) stay
ftype-only. raylib's design does not let users read those fields
directly and emitting record types for them would be hollow — a
record with no useful accessors would still pretend to be a record.

## Decision

The binding generator emits, for every struct:

- a `define-ftype` (unchanged) and the existing `Make*` / `*-set!` /
  `*-get` / `*-ref&` macros,
- a predicate `<name>?` (lowercase) that returns `#t` when given a
  ftype-pointer to that struct.

For the 13 wrapper structs additionally:

- a `(define-record-type <kebab-name> (fields …))` matching the C layout,
- a `(record-type-equal-procedure <kebab-name> (lambda (a b eql?) …))`
  so that R6RS `equal?` compares instances field-by-field.

The ftype-name keeps its CamelCase-with-hyphens shape (e.g. `Vector-2`)
for backward compatibility with the macro layer; the record-type
descriptor uses an all-lowercase kebab-cased name (e.g. `vector-2`).
R6RS libraries are case-sensitive by default, so both identifiers
co-exist without conflict.

## Consequences

**Positive**
- Existing demos keep working unchanged: `make-vector-2`, the
  `Vector-2-ref&` macros, and ftype-pointer passing to raylib
  functions all stay in place. The two layers are additive.
- Users gain a Scheme-native API for the most-used structs:
  `(vector-2-x v)`, `(vector-2-x-set! v 9.9)`,
  `(equal? v1 v2)`, `(vector-2? p)`.
- `record-type-equal-procedure` makes the stock `equal?`
  field-comparing without `vector-2=?`-style predicate duplication.

**Negative**
- Roughly 250 extra lines in the generated `raylib.sls`. Generator
  grows ~80 lines; new helper predicate per struct ~3 lines.
- The two-name Convention (PascalCase `Vector-2` for ftype, kebab-case
  `vector-2` for the record) is asymmetric. Acceptable because it lets
  the macro layer survive unchanged and preserves visual map to the
  raylib.h struct names.

## Alternatives considered

- `(define-record-type …)` for *all* structs including pointer-fields.
  Rejected because the opaque structs gain nothing from a record
  type while still incurring the cost.
- Library-wide `default-record-equal-procedure` parameter. Rejected
  because the parameter is process-global and would leak into other
  libraries the same process imports.
- A separate `vector-2=?` predicate instead of
  `record-type-equal-procedure`. Rejected because it duplicates the
  role of `equal?` and forces users to learn both forms.
- Full lowercase rename of the ftype (`vector-2` for both ftype and
  record). Rejected because macros like `Vector-2-ref&` are
  already shipped and would need rewriting; the case-sensitive
  R6RS library rule makes the hybrid scheme work without breakage.
