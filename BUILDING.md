# Building `today`

`today.c` is 1986-vintage K&R-style C: it calls `exit`, `unlink`,
`strlen`, `strcpy`, and `atoi` without including their headers
(`<stdlib.h>`, `<unistd.h>`, `<string.h>`), relying on the old rule that
an undeclared function is assumed to return `int`. That was legal C in
1986. Modern compilers treat it as a hard error by default. The source is
left untouched here — see [README.md](README.md) for why it's preserved
as-is — so getting a clean build means passing compiler flags that
restore the old, permissive behavior instead of fixing the code.

Both command lines below produce a working binary with **zero warnings
and zero errors**, confirmed by direct testing.

## Building with LLVM/Clang

```
cc -o today today.c \
  -Wno-implicit-function-declaration \
  -Wno-deprecated-declarations \
  -Wno-empty-body \
  -Wno-format-security
```

Confirmed working on:

```
Apple clang version 17.0.0 (clang-1700.4.4.1)
Target: x86_64-apple-darwin24.6.0
```

## Building with GCC

```
gcc-15 -o today today.c \
  -Wno-implicit-function-declaration \
  -Wno-deprecated-declarations \
  -Wno-empty-body \
  -Wno-format-security \
  -Wno-builtin-declaration-mismatch
```

Confirmed working on:

```
gcc-15 (Homebrew GCC 15.2.0_1) 15.2.0
```

GCC needs one flag Clang doesn't: `-Wno-builtin-declaration-mismatch`.
GCC recognizes `exit`, `strlen`, and `strcpy` as compiler builtins and
separately warns when a prototype-less call doesn't match the builtin's
known signature — a warning category Clang doesn't have. Otherwise the
two compilers needed the identical set of `-Wno-*` flags.

## What each flag is silencing

| Flag | Silences |
|---|---|
| `-Wno-implicit-function-declaration` | Hard errors for `exit`, `unlink`, `strlen`, `strcpy`, `atoi` called without prototypes in scope (both compilers now error on this by default; it was legal, if sloppy, C in 1986) |
| `-Wno-deprecated-declarations` | `tmpnam()` deprecation warnings (3x) |
| `-Wno-empty-body` | `if (event);` — see **Known bug** below; this is masking a real bug, not just a style nit |
| `-Wno-format-security` | `printf(buffer)` instead of `printf("%s", buffer)` (3x) — passing a variable directly as a format string |
| `-Wno-builtin-declaration-mismatch` | (GCC only) prototype-less calls to functions GCC recognizes as builtins |

## Known bug: "On this day..." always prints, even with no events

[`today.c:133`](today/today.c) reads:

```c
if (event);
    printevent();
```

The trailing semicolon after `if (event)` terminates the `if` statement
right there, turning it into a no-op — the indented `printevent();` on
the next line is **not** conditional on it and always executes,
regardless of whether `event` was ever set to 1. Compare this to the
`birthday` and `reminder` checks immediately above and below it in
`main()`, which don't have the stray semicolon and behave correctly:

```c
if (birthday)
    printbirthday();
if (event);
    printevent();
if (reminder)
    printreminder();
```

**Effect**: every run prints the "On this day..." header, even on a date
with zero `S`-type records in that month's data file. It just prints the
header with nothing under it.

This has been present in the code since at least July 1986 (Kincaid's
original release) — it's the same bug in every copy examined in
[README.md](README.md) Section III, including Hugo Fiennes's `arcbbs`
copy and Rebecca Heineman's `KitchenSink` C++ port. Silencing it with
`-Wno-empty-body` (as this document does, in keeping with a flags-only
build) hides the compiler's warning about it, but does not fix the
underlying behavior. Fixing it would mean changing `if (event);` to
`if (event)` in the source — deliberately not done here.
