if(instance_exists(254/* obj_drakehead */)) {
    draw_sprite_ext(209/* spr_snowdrake_legs */, 0, x, y, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(208/* spr_snowdrake_body */, 0, x, y + (obj_drakehead.y - ystart) / 3, 2, 2, 0, 16777215, 1);
} else  {
    draw_sprite_ext(209/* spr_snowdrake_legs */, 0, x, y, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(208/* spr_snowdrake_body */, 0, x, y, 2, 2, 0, 16777215, 1);
}

/* */
/*  */
