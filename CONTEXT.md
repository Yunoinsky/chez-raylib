# Chez-Raylib λ-0.3

Auto-generated Scheme bindings for raylib 6.x, with a small hand-written
raymath layer that interops with a Scheme `(matrix)` library.

## Language

**Binding**:
A Chez procedure that wraps a raylib C function. Defined automatically
by the binding generator from the rlparser sexpr source.

**Wrapper struct**:
A raylib struct (e.g. `Vector2`, `Texture`) for which the generator emits
a Scheme-level record type alongside the C ftype. Wrapper structs are
limited to those whose every field is a scalar or fixed-size scalar
array — they are the structs users routinely peek at.

_Avoid_: opaque handle (a struct whose fields include pointers and
whose contents are raylib-managed).

**Opaque handle**:
A raylib struct whose fields include pointers (e.g. `Model`, `Mesh`,
`Image`, `Font`, `Material`). The generator emits only a predicate for
these so users can `guard` against invalid values, never a record type.

_Avoid_: full record (records on handles would expose noise).

**Predicate vs record**:
Predicate = `(lambda (p) (and (ftype-pointer? p) ...))`; answers
"is this a ftype-pointer to the right type?". Record = full
`define-record-type`; answers "is this one of my Scheme structs, with
field-accessors I can call directly?". The two are different layers;
the predicate works on raw C values, the record only on Scheme-allocated
copies.

**ftype-name**:
The CamelCase-with-hyphens Scheme identifier bound by `define-ftype`
that mirrors the raylib.h struct name — e.g. `Vector-2`. Kept for
backward compatibility with the existing macro layer
(`Vector-2-ref&`) and so users reading the source can map directly to
raylib.h.

**record-name**:
The lowercase-kebab Scheme identifier bound by `define-record-type`
that exposes the same struct on the Scheme side — e.g. `vector-2`,
`glyph-info`, `vr-device-info`. Auto-generated name; the case difference
makes it distinct from the ftype-name under R6RS case-sensitive rules.

**record-type-equal-procedure**:
A R6RS procedure installed on a record-type descriptor so that the
stock `equal?` primitive compares instances field-by-field. Without it,
`(equal? v1 v2)` falls back to identity (`eq?`).

_Avoid_: a separate `vector-2=?` predicate — duplicates the role of
`equal?` and splits the user's vocabulary.

## Glossary TODO

(pending more grilling)
