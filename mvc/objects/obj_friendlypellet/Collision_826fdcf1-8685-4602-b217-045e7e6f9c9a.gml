if(global.invc < 1) {
    global.hp-= 19;
    snd_play(53/* snd_hurt1 */);
    global.hshake= 8;
    global.shakespeed= 1.5;
    global.vshake= 2;
    instance_create(0, 0, 184/* obj_shaker */);
    global.invc= 30;
    obj_floweybattle1.conversation= 10;
    obj_friendlypellet.attackyou= 3;
    if(instance_exists(782/* OBJ_WRITER */)) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(instance_exists(187/* obj_blconwdflowey */)) {
        // obj_blconwdflowey
        with(187) instance_destroy();
    }
}

/* */
/*  */
