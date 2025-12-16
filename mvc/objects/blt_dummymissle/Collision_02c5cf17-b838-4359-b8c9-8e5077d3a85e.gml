if(normal == 1 && destroy == 0) {
    snd_play(21/* snd_impact */);
    destroy= 1;
    normal= 0;
    scr_damagestandard_x();
}

/* */
/*  */
