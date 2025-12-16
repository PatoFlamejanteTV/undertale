if(drawamt < sprite_width) {
    drawamt+= 8;
    snd_play(92/* snd_chug */);
    alarm[5]= 15;
}
if(drawamt >= sprite_width) {
    drawamt= sprite_width;
    alarm[5]= -1;
    justdoit= 6;
}

/* */
/*  */
