if(sprite_index == 1120) {
    image_index= 0;
    image_speed= 0;
    sprite_index= 1121/* spr_chairempty */;
    instance_create(x + 28, y + 3, 861/* obj_toroverworld3 */);
    // obj_toroverworld3
    with(861) facing= 1;
    // obj_toroverworld3
    with(861) path_start(23/* path_torielwalkhouse1 */, 5, 0, 0/* path_action_stop */);
    global.plot= 21;
    // obj_mainchara
    with(1570) uncan= 0;
    global.interact= 0;
    instance_create(x, y, 869/* obj_chairiel */);
    instance_destroy();
}

/* */
/*  */
