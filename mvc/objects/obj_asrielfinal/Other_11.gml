global.msg[0]= "* You called out to your&  friends with all your&  heart./";
global.msg[1]= "* From somewhere^1, you felt&  their support.../^";
if(global.hp < global.maxhp) {
    global.hp= global.maxhp;
    snd_play(155/* snd_heal_c */);
}

/* */
/*  */
