if(conversation <= 15) {
    snd_stop(52);
    global.hshake= 3;
    global.shakespeed= 1.5;
    global.vshake= 3;
    snd_play(109/* snd_power */);
    global.hp= global.maxhp;
    instance_create(0, 0, 184/* obj_shaker */);
    if(instance_exists(610/* obj_fakepellet */)) obj_fakepellet.x= -800;
    conversation= 16;
    image_speed= 0;
    instance_create(x + 200, y + 10, 606/* obj_torielflame_X */);
    alarm[10]= 60;
}

/* */
/*  */
