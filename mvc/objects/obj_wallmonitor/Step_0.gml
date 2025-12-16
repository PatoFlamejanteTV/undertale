if(active > 0 && instance_exists(1570/* obj_mainchara */) && lit == 0 && obj_mainchara.x > x - 20 && obj_mainchara.x < x + 50) {
    lit= 1;
    snd_play(114/* snd_squeak */);
    sprite_index= 2140/* spr_monitor_lit */;
    if(active == 2) sprite_index= 2141/* spr_monitor_lit_f */;
}

/* */
/*  */
