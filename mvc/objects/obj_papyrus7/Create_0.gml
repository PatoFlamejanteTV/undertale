if(global.plot > 66) instance_destroy();
else  {
    conversation= 0;
    image_yscale= 999;
    sans= instance_create(820, 60, 1033/* obj_sans_actor */);
    papyrus= instance_create(820, 90, 1032/* obj_papyrus_actor */);
    papyrus.sprite_index= 1334/* spr_papyrus_lt */;
    sans.sprite_index= 1353/* spr_sans_d */;
}
look= 0;
spinagain= 0;
murder= 0;
if(scr_murderlv() >= 5 && global.flag[27] == 0) murder= 1;
image_yscale= 4;

/* */
/*  */
