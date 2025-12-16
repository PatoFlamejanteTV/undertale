if(global.interact == 0 && global.flag[17] == 0) {
    snd_play(114/* snd_squeak */);
    global.interact= 5;
    global.menuno= 0;
    keyboard_clear(17/* CTRL */);
}

/* */
/*  */
