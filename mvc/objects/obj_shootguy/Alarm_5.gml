if(ammo < idealammo) {
    if(ammo < idealammo - 1) buffer+= 6;
    ammo++;
    snd_play(106/* snd_noise */);
    alarm[5]= 6;
}

/* */
/*  */
