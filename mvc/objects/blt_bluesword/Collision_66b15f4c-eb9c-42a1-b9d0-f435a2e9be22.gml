if((abs(obj_heart.xprevious - obj_heart.x) > 0.01 || abs(obj_heart.yprevious - obj_heart.y) > 0.01) && global.invc < 1) {
    hurted= 1;
    dmgamt= round(dmg - (global.df + global.adef) / 5);
    if(dmgamt < 1) dmgamt= 1;
    global.hp-= dmgamt;
    snd_play(53/* snd_hurt1 */);
    global.hshake= 2;
    global.shakespeed= 2;
    global.vshake= 2;
    instance_create(0, 0, 184/* obj_shaker */);
    global.invc= global.inv;
    if(instance_exists(219/* obj_dogeparent */)) {
        obj_dogeparent.excited= 1;
        obj_dogeparent.mercymod= -50;
        if(instance_exists(248/* obj_movedogehead */)) {
            obj_movedogehead.excited= 1;
            obj_movedogehead.alarm[0]= 90;
            obj_movedogehead.alarm[1]= 2;
        }
    }
}

/* */
/*  */
