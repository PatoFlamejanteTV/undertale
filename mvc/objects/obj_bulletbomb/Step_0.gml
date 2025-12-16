if(shot > 0) {
    x= nowx;
    y= nowy;
    image_speed= 1;
    shot2++;
    if(shot2 >= 5) {
        playdo= 0;
        audio_stop_sound(myloop);
        snd_play(125/* snd_bomb */);
        if(!instance_exists(184/* obj_shaker */)) scr_shake(3, 3, 2);
        instance_create(x, y, 441/* obj_plusbomb_explosion */);
        visible= 0;
        shot2= -1;
        shot= -1;
    }
}

/* */
/*  */
