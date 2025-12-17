b= argument0;
c= argument1;

// Optimization: Skip drawing if invisible, but maintain the side-effect on 'a'
// Original code increments 'a' (1 + sprite_height) times.
if (image_alpha <= 0) {
    a += sprite_height + 1;
    return 0;
}

// Initial increment (matches original code)
a++;

if (sprite_height <= 0) return 0;

var current_a = a;
var start_y = 0;
var batch_height = 0;
var batch_offset_val = 0;
var i = 0;
var threshold = 0.25; // Pixel tolerance for batching scanlines

while(i < sprite_height) {
    current_a++;
    var next_offset_val = sin(current_a / b) * c;

    if (batch_height == 0) {
        // Start a new batch
        batch_height = 1;
        start_y = i;
        batch_offset_val = next_offset_val;
    } else {
        // Check if we can group this line with the current batch
        if (abs(next_offset_val - batch_offset_val) < threshold) {
             batch_height++;
        } else {
             // Draw the completed batch
             draw_sprite_part_ext(sprite_index, image_index, 0, start_y, sprite_width, batch_height, x + batch_offset_val, y + start_y, 1, 1, 16777215, image_alpha);

             // Start a new batch
             batch_height = 1;
             start_y = i;
             batch_offset_val = next_offset_val;
        }
    }
    i++;
}

// Draw any remaining batch
if (batch_height > 0) {
    draw_sprite_part_ext(sprite_index, image_index, 0, start_y, sprite_width, batch_height, x + batch_offset_val, y + start_y, 1, 1, 16777215, image_alpha);
}

// Update instance variable 'a' to match the total increments
a = current_a;
