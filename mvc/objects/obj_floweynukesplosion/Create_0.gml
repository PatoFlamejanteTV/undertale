counter= 0;
size= 1;
hspeed= 1;
caster_stop(139);
caster_play(139, 1, 1);
if(!instance_exists(1582/* obj_vsflowey_shaker */)) {
    shk= instance_create(0, 0, 1582/* obj_vsflowey_shaker */);
    shk.shakex= 6;
    shk.shakey= 6;
}

/* */
/*  */
