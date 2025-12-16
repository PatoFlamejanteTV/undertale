image_angle+= aa;
if(y > room_height + 40) {
    if(!instance_exists(184/* obj_shaker */)) {
        snd_play(21/* snd_impact */);
        scr_shake(3, 3, 2);
    }
    instance_destroy();
}

/* */
/*  */
