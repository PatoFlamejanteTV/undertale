if(global.plot < 19.9) {
    if(instance_exists(765/* obj_face_torieltalk */))
        image_index= obj_face_torieltalk.image_index;
    else  image_index= 0;
    script_execute(106/* scr_npcdir */, 2);
}
if(global.plot == 19.9 && !instance_exists(779/* obj_dialoguer */)) {
    sprite_index= 1120/* spr_chairielgetup */;
    image_index= 0;
    image_speed= 0.2;
    global.interact= 1;
    global.plot= 20;
}

/* */
/*  */
