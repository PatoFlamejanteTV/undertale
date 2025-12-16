scr_depth(0, 0, 0, 0, 0);
if(!instance_exists(779/* obj_dialoguer */) && conversation == 1) {
    global.interact= 0;
    conversation= 2;
    myinteract= 0;
    path_start(41/* path_walkright */, 4, 2, 0/* path_action_stop */);
    instance_create(7, 0, 898/* obj_plotwall3 */);
    image_speed= 0.3;
    global.plot= 8.5;
    global.currentsong= caster_load("music/tension.ogg");
    caster_loop(global.currentsong, 1, 1);
}
scr_npcdir(0);

/* */
/*  */
