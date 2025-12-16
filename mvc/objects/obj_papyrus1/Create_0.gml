if(global.plot >= 39) instance_destroy();
else  {
    conversation= 0;
    image_yscale= 999;
    sans= instance_create(240, 110, 1033/* obj_sans_actor */);
    papyrus= instance_create(240, 130, 1032/* obj_papyrus_actor */);
    papyrus.sprite_index= 1327/* spr_papyrus_ut */;
    sans.sprite_index= 1355/* spr_sans_dt */;
}
murder= 0;
if(scr_murderlv() >= 2) murder= 1;
if(global.flag[27] == 1) murder= 0;
look= 0;
spinagain= 0;

/* */
/*  */
