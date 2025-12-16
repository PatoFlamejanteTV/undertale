if(visible == 1) {
    // other
    with(-2) instance_destroy();
}
if(visible == 1) {
    if(instance_exists(402/* obj_ratingsmaster */))
        global.ratings+= 20;
    snd_play(128/* snd_mtt_burst */);
    bp= instance_create(x, y, 425/* obj_brokenpiece */);
    if(instance_exists(bp)) bp.sprite_index= sprite_index;
    visible= 0;
}

/* */
/*  */
