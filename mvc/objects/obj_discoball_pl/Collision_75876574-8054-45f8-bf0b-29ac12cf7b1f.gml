// other
with(-2) instance_destroy();
if(type == 0) type= 1;
else  type= 0;
swaptimer= 3;
sprite_index= 532/* spr_discoball_invert_pl */;
if(soundtimer < 0) {
    snd_play(106/* snd_noise */);
    soundtimer= 2;
}
if(instance_exists(402/* obj_ratingsmaster */))
    global.ratings+= 5;

/* */
/*  */
