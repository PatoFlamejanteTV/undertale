if(poffed == 0) {
    image_index--;
    image_speed= 0;
    obj_pofftrigger.t= 5;
    obj_pofftrigger.alarm[4]= 60;
    poffed= 1;
}
if(sprite_index == 1273) {
    image_speed= 0;
    sprite_index= 1275/* spr_dogbuttwalk */;
    obj_pofftrigger.alarm[4]= 40;
}

/* */
/*  */
