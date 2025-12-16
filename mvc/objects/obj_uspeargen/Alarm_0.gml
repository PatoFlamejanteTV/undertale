move= 0;
if(instance_exists(1117/* obj_undynea_actor */)) {
    move= obj_undynea_actor.hspeed;
    obj_undynea_actor.sprite_index= 1437/* spr_undyne_starkd_arm */;
    obj_undynea_actor.alarm[8]= 20;
    star= instance_create(x - 5, y + 5, 1040/* obj_magicstar */);
    star.hspeed= move;
    star.depth= obj_undynea_actor.depth - 1;
    snd_play(13/* snd_spearappear */);
}
xx= x;
yy= y;
if(room == 93) {
    xx= -100;
    yy= choose(240, 0);
}
repeat(3)  {
    a= instance_create(xx - 5, yy + 5, 1042/* obj_undynespear */);
    a.move= move;
}
if(spearamt < 35) {
    spearamt+= 0.3;
    if(spearamt > 13) spearamt+= 0.4;
} else  {
    snd_play(114/* snd_squeak */);
    if(room == 92) global.flag[284]= 1;
}
alarm[0]= 48;
alarm[0]-= spearamt;

/* */
/*  */
