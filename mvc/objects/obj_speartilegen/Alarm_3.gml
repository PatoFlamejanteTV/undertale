alarm[3]= tums;
instance_create(0, 0, 1048/* obj_speartile */);
instance_create(0, 0, 1048/* obj_speartile */);
instance_create(0, 0, 1048/* obj_speartile */);
instance_create(0, 0, 1048/* obj_speartile */);
instance_create(0, 0, 1048/* obj_speartile */);
instance_create(0, 0, 1048/* obj_speartile */);
instance_create(0, 0, 1048/* obj_speartile */);
g= instance_create(0, 0, 1048/* obj_speartile */);
g.duty= 1;
if(tums > 35) tums-= 0.75;
if(tums <= 35 && tums > 28) tums-= 0.25;
if(tums > 15 && tums <= 28) tums-= 0.5;
snd_play(13/* snd_spearappear */);
if(tums <= 15) {
    snd_play(114/* snd_squeak */);
    if(room == 111) global.flag[285]= 1;
}

/* */
/*  */
