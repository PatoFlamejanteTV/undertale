if(col == 0) {
    snd_play(11/* snd_glassbreak */);
    oo= 1068;
    j= instance_create(oo.x, oo.y, 1067/* obj_undynewindow_foreground */);
    oo.image_index= 1;
    repeat(10)  instance_create(oo.x + 11, oo.y + 30, 1066/* obj_glassshard */);
    col= 1;
}

/* */
/*  */
