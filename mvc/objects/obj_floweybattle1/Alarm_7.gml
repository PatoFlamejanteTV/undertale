sprite_index= 179/* spr_floweyevil */;
if(instance_exists(187/* obj_blconwdflowey */)) {
    // obj_blconwdflowey
    with(187) instance_destroy();
}
alarm[8]= 30;
caster_stop(floweysong);
caster_free(floweysong);

/* */
/*  */
