if(spec == 3 || spec == 5) {
    bone= instance_create(x + 50, y - 50, 1664/* obj_friendprotector */);
    bone.sprite_index= 2276/* spr_bonesaver */;
    if(spec == 5) bone.sprite_index= 2278/* spr_firesaver */;
    instance_destroy();
}
if(spec == 4 || spec == 6) {
    spear= instance_create(x - 70, y - 50, 1664/* obj_friendprotector */);
    spear.sprite_index= 2277/* spr_spearsaver */;
    if(spec == 6) spear.sprite_index= 2279/* spr_litsaver */;
    instance_destroy();
}

/* */
/*  */
