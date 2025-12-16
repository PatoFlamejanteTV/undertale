snd_play(21/* snd_impact */);
instance_create(0, 0, 118/* obj_flasher */);
scr_shake(4, 4, 2);
if(instance_exists(1063/* obj_undynedate_inside */)) {
    with(obj_undynedate_inside.table) image_index= 1;
}
speed= 0;
sprite_index= 1451/* spr_undynespear_stabbed */;
image_angle+= 90;

/* */
/*  */
