b= argument0;
c= argument1;
d= argument2;

// Optimization: Skip drawing if invisible, but maintain the side-effect on 'a'
// Original code increments 'a' (1 + sprite_height) times.
if (image_alpha <= 0) {
    a += sprite_height + 1;
    return 0;
}

// Optimization: Pre-calculate inverse of b to replace division with multiplication
var inv_b = 1 / b;
var yy = y;

a++;
i= 0;
while(i < sprite_height) {
    a++;
    // Optimization: Removed redundant '1 *', used inv_b, and iterative Y addition
    draw_sprite_part_ext(sprite_index, image_index, 0, i, sprite_width, sin(a) * d, x + sin(a * inv_b) * c, yy, 2, 2, 16777215, image_alpha);
    i++;
    yy += 2;
}
