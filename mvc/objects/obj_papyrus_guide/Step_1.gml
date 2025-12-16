scr_depth(0, 0, 0, 0, 0);
if(fun == 0) {
    if(instance_exists(775/* obj_face_papyrus */))
        image_index= obj_face_papyrus.image_index;
    else  {
        if(speed == 0 && path_speed == 0) image_index= 0;
    }
}
if(speed == 0) scr_npc_watch(0);
if(instance_exists(1414/* obj_kitchenchecker */) && spot > 0 && obj_kitchenchecker.level == 0 && global.interact == 0) {
    if(spot == 2) {
        myscore++;
        if(myscore > 3) {
            snd_play(28/* snd_bell */);
            hspeed*= 1.1;
        }
    }
    spot= 1;
}
if(spot == 1) {
    solid= 0;
    if(hspeed == 0) hspeed= 5;
    if(hspeed < 0) hspeed= -hspeed;
    image_speed= 0.5;
    sprite_index= 1328/* spr_papyrus_r */;
    if(x > 183) {
        x= ceil(x);
        hspeed= 0;
        spot= 0;
        sprite_index= 1327/* spr_papyrus_ut */;
        solid= 1;
        if(myscore > 10) snd_play(49/* snd_levelup */);
        myscore= 0;
    }
}
if(instance_exists(1414/* obj_kitchenchecker */) && spot < 2 && obj_kitchenchecker.level == 1 && global.interact == 0) {
    if(spot == 1) {
        myscore++;
        if(myscore > 3) {
            snd_play(28/* snd_bell */);
            hspeed*= 1.1;
        }
    }
    spot= 2;
}
if(spot == 2) {
    solid= 0;
    if(hspeed == 0) hspeed= -5;
    if(hspeed > 0) hspeed= -hspeed;
    image_speed= 0.5;
    sprite_index= 1330/* spr_papyrus_l */;
    if(x < 27) {
        x= floor(x);
        hspeed= 0;
        spot= 3;
        sprite_index= 1335/* spr_papyrus_rt */;
        solid= 1;
        if(myscore > 10) snd_play(49/* snd_levelup */);
        myscore= 0;
    }
}
if(spot == 5 && y >= ystart) {
    y= ystart;
    vspeed= 0;
    spot= 3;
    sprite_index= 1335/* spr_papyrus_rt */;
}
if(myscore > 3 && workout == 0) workout= 1;
if(myscore > 10 && workout == 1) workout= 2;

/* */
/*  */
