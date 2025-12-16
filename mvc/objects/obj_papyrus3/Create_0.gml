if(global.plot >= 46) instance_destroy();
else  {
    conversation= 0;
    image_yscale= 999;
    sans= instance_create(240, 94, 1033/* obj_sans_actor */);
    papyrus= instance_create(240, 120, 1032/* obj_papyrus_actor */);
    papyrus.sprite_index= 1327/* spr_papyrus_ut */;
    sans.sprite_index= 1355/* spr_sans_dt */;
}
look= 0;
spinagain= 0;
murder= 0;
if(scr_murderlv() >= 3) murder= 1;

/* */
/*  */
