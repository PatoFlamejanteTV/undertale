if(conversation == 1 && !instance_exists(782/* OBJ_WRITER */)) {
    global.interact= 1;
    conversation= 2;
    // obj_toroverworld3
    with(861) path_start(6/* path_torielwalk2 */, 3, 0, 1/* path_action_restart */);
}
if(instance_exists(861/* obj_toroverworld3 */) && conversation == 2 && obj_toroverworld3.path_position == 1) {
    conversation= 2.5;
    // obj_wallswitchcut1
    with(925) on= 1;
    // obj_toroverworld3
    with(861) path_end();
    obj_toroverworld3.direction= 90;
    alarm[4]= 20;
}
if(conversation == 3 && !instance_exists(782/* OBJ_WRITER */)) {
    conversation= 4;
    global.interact= 0;
    global.plot= 3;
}
if(instance_exists(861/* obj_toroverworld3 */) && conversation == 4 && obj_toroverworld3.path_position == 1 && abs(obj_mainchara.y - obj_toroverworld3.y) < 50) {
    conversation= 5;
    // obj_toroverworld3
    with(861) path_start(39/* path_walkup */, 3, 0, 0/* path_action_stop */);
}

/* */
/*  */
