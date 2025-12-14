# Bolt's Journal

## 2024-05-22 - [Optimized Text Type Dispatch]
**Learning:** GameMaker's `script_execute` is slower than direct script calls because it interprets the script index at runtime. Massive `if/else` chains for integer matching are significantly slower than `switch` statements, which GML compiles to jump tables.
**Action:** When encountering large dispatch scripts in GML (like dialogue or state machines), convert linear `if` chains to `switch` blocks and replace `script_execute` with direct function calls where possible. Always preserve argument counts exactly, even if they look like typos, to maintain identical behavior.
