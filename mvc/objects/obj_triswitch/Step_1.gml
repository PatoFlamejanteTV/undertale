if(myinteract == 1 && on == 0 && instance_exists(1265/* obj_triswitchevent */)) {
    con= 1;
    on= 1;
    myinteract= 2;
    snd_play(106/* snd_noise */);
    sprite_index= 1854/* spr_onoffswitch_on */;
    alarm[3]= 90;
}
if(on == 1 && instance_exists(1265/* obj_triswitchevent */))
    obj_triswitchevent.switches++;

/* */
/*  */
