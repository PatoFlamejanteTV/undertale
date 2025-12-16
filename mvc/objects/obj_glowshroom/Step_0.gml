if(myinteract == 1) {
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

/* */
/*  */
