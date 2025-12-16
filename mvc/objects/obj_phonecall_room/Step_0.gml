if(t == 1 && !instance_exists(782/* OBJ_WRITER */)) {
    exception= 0;
    if(exception == 0) instance_destroy();
    global.interact= 0;
    if(room == 149) {
        snd_play(132/* snd_switchpull_n */);
        obj_bluelaser_o.active= 2;
        instance_destroy();
    }
}

/* */
/*  */
