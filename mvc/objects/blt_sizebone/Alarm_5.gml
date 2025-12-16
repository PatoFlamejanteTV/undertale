if(!instance_exists(782/* OBJ_WRITER */)) {
    with(blcon) instance_destroy();
    instance_create(0, 0, 149/* obj_unfader */);
    alarm[6]= 50;
    snd_play(90/* snd_txtasg */);
}
if(!instance_exists(782/* OBJ_WRITER */)) alarm[5]= 2;

/* */
/*  */
