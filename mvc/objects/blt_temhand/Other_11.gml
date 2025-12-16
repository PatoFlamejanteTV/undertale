if(global.invc < 1) {
    dmgamt= round(dmg - (global.df + global.adef) / 5);
    if(dmgamt < 1) dmgamt= 1;
    global.hp-= dmgamt;
    snd_play(53/* snd_hurt1 */);
    global.hshake= 2;
    global.shakespeed= 2;
    global.vshake= 2;
    instance_create(0, 0, 184/* obj_shaker */);
    global.invc= global.inv * 2;
    if(global.battlegroup == 22 && global.hp < 1)
        obj_torielboss.sprite_index= 726/* spr_torielboss_mouthcover */;
}

/* */
/*  */
