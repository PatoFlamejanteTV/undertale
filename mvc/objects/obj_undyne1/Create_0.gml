if(global.plot > 105) instance_destroy();
else  {
    con= 0;
    image_yscale= 999;
    mkid= instance_create(260, 275, 1115/* obj_mkid_actor */);
    undyne= instance_create(260, 100, 1117/* obj_undynea_actor */);
    undyne.sprite_index= 1467/* spr_undynea_starku */;
    mkid.sprite_index= 1397/* spr_mkid_r */;
    papyrus= instance_create(60, 110, 1162/* obj_papyrus_undyne1_actor */);
    if(global.flag[67] == 1) {
        with(papyrus) visible= 0;
    }
    stk= instance_create(0, 0, 1093/* obj_starker */);
    stk.subject= undyne;
    stk.sprite_index= 1443/* spr_undyne_shad */;
}
look= 0;
spinagain= 0;
helltrigger= 0;

/* */
/*  */
