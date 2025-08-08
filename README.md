# Programming 1 – Tutorial

## Overview
- Companion tutorial to the Programming 1 lecture.
- Goals: consolidate fundamentals (control flow, functions/procedures, basic data structures, testing/debugging) through examples and exercises.
- Slides concisely summarize each topic and include small, runnable code examples.
- Slides are written in Typst.

## Schedule
- The plan of the sessions is in `aufbau.md` (topics, order, materials, and links to slides/exercises).

## How to build
- Requirements:
    - Typst (recommended), or
    - Docker/Podman with a Typst image
- Local build:
    - `typst compile slides/01-Introduction-Einrichten.typ`
    - Output: `slides/01-Introduction-Einrichten.pdf`
- Docker example:
    - `docker run --rm -v "$PWD":/work -w /work ghcr.io/typst/typst:latest typst compile slides/01-Introduction-Einrichten.typ`
- Note: If slides are split per session, replace `01-Introduction-Einrichten.typ` with the desired file.

## Project structure
- `aufbau.md` — session plan
- `slides/` — Typst slide sources
- `slides/figures/` — images for slides