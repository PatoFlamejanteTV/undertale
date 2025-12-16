draw_sprite_ext(sprite_index, anim, x + random(4), y + random(4), size + 1 + random(0.1), size + random(0.1) + 0.4, 0, 16777215, 1);
anim+= animspeed;
if(anim > animchoice + 1) animspeed= -animspeed;
if(anim < animchoice - 1) animspeed= -animspeed;
if(keyboard_check(32/* SPACE */)) {
    draw_sprite_ext(2206/* spr_noise */, random(3), x + random(4), y + random(4), size + 0.8 + random(0.1), size + random(0.1) + 0.4, 0, 16777215, 1);
    animchoice= round(random(100));
    anim= animchoice;
}

/* */
/*  */
