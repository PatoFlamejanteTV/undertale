if(conversation == 1 && !instance_exists(779/* obj_dialoguer */)) {
    global.interact= 0;
    conversation= 2;
    with(toriel) path_start(41/* path_walkright */, 4, 0, 0/* path_action_stop */);
    global.plot= 18;
    instance_destroy();
}

/* */
/*  */
