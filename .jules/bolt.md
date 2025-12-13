## 2024-05-24 - GML Text Rendering Loop
**Learning:** The text rendering logic in `OBJ_WRITER` re-parses and re-draws the entire string from the beginning every frame in the Draw event (Event 8). This is O(N^2) complexity with respect to the number of frames because `n` starts at 1 and goes up to `stringpos` which increments every frame.
**Action:** Optimize this by drawing onto a surface or only drawing the new character and keeping the old ones, though surfaces might be volatile. A simpler optimization is to minimize the logic inside the draw loop.
