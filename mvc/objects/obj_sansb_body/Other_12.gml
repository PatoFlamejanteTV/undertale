if(damageturn == 0) {
    snd_stop(53);
    snd_play(53/* snd_hurt1 */);
    global.hp--;
    damageturn= 1;
}

/* */
/*  */
