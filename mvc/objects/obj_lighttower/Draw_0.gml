draw_sprite(992/* spr_lighttower */, 0, x, y);
draw_sprite(994/* spr_towersymbol_off */, ts / 6, x + 25, y + 11);
if(on == 1) {
    draw_sprite(993/* spr_towersymbol_on */, ts / 6, x + 25, y + 11);
    ts++;
}

/* */
/*  */
