snd_play(156/* snd_hurt1_c */);
global.my_hp= 0;
global.my_inv= 40;
instance_create(0, 0, 1582/* obj_vsflowey_shaker */);
obj_vsflowey_heart.move= 0;
obj_vsflowey_heart.alarm[5]= 5;
if(destroyer == 1) obj_vsflowey_heart.alarm[5]= 20;
if(destroyer > 30) {
    global.my_hp= 1;
    obj_vsflowey_heart.move= 0;
    obj_vsflowey_heart.alarm[5]= -1;
}

/* */
/*  */
