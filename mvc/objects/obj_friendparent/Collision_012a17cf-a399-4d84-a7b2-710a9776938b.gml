if(shock == 0) {
    snd_play(51/* snd_damage */);
    shk= instance_create(x, y, 1669/* obj_objshake */);
    shk.obj= object_index;
    shock= 1;
}

/* */
/*  */
