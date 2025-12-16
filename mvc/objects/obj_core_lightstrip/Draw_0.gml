if(instance_exists(1183/* obj_kitchenforcefield */))
    depth= obj_kitchenforcefield.depth + 1;
if(powered == 1) siner++;
else  siner= 0;
if(image_xscale == 1) draw_sprite(926/* spr_core_wallstrip_l */, siner / 6, x, y);
else  draw_sprite(928/* spr_core_wallstrip_r */, siner / 6, x - 20, y);

/* */
/*  */
