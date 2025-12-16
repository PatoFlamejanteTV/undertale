if(myinteract == 453748) {
    if(snd_isplaying(112/* snd_movemenu */) == 0) snd_play(112/* snd_movemenu */);
    if(image_index == 0) {
        image_index= 1;
        glow= 1;
    } else  {
        image_index= 0;
        glow= 0;
    }
    myinteract= 0;
}
if(myinteract == 1) {
    global.interact= 1;
    caster_pause(global.currentsong);
    image_index= 1;
    alarm[4]= 15;
    myinteract= 0;
}
if(bluh == 1) {
    snd_play(23/* snd_bluh */);
    image_index= 2;
    bluh= 2;
    alarm[4]= 35;
}
if(bluh == 3) {
    global.interact= 0;
    image_index= 0;
    caster_resume(global.currentsong);
    bluh= 0;
}

/* */
/*  */
