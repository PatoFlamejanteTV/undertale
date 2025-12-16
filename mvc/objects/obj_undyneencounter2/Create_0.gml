cn= 0;
active= 0;
if(global.plot < 110) {
    undyne= instance_create(-40, 90, 1117/* obj_undynea_actor */);
    mkid= instance_create(360, 100, 1115/* obj_mkid_actor */);
    undyne.dsprite= 1436;
    undyne.sprite_index= 1436/* spr_undyne_starkd */;
    active= 1;
}

/* */
/*  */
