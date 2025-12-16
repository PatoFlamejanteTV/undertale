type= choose(0, 1);
snd_play(30/* snd_break2 */);
instance_create(0, 0, 118/* obj_flasher */);
if(type == 0) cc= instance_create(x, y, 375/* obj_skymoon */);
if(type == 1) cc= instance_create(x, y, 376/* obj_sunmoon */);
cc.dmg= dmg;
instance_destroy();

/* */
/*  */
