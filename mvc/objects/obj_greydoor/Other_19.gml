global.interact= 3;
instance_create(0, 0, 149/* obj_unfader */);
audio_stop_all();
if(touched == 0) {
    snd_play(437/* mus_dooropen */);
    alarm[2]= 14;
    touched= 1;
}

/* */
/*  */
