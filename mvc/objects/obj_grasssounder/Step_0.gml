if(sound == 1 && soundtimer < 0) {
    snd_play(22/* snd_splash */);
    sound= 0;
    soundtimer= 3;
}
soundtimer--;

/* */
/*  */
