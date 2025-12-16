if(conversation == 0 && (obj_mainchara.x > 140 || obj_mainchara.y < 170)) {
    global.msc= 204;
    global.typer= 4;
    global.interact= 1;
    global.facechoice= 1;
    instance_create(0, 0, 779/* obj_dialoguer */);
    conversation= 1;
}
if(conversation == 1 && !instance_exists(779/* obj_dialoguer */)) {
    global.interact= 0;
    conversation= 2;
    // obj_toroverworld4
    with(862) path_start(8/* path_torielwalk3 */, 3.25, 0, 1/* path_action_restart */);
}
if(instance_exists(862/* obj_toroverworld4 */) && conversation == 2 && obj_toroverworld4.path_position == 1) {
    conversation= 2.5;
    // obj_toroverworld4
    with(862) path_end();
    if(global.plot < 4) {
        global.plot= 4;
        instance_create(obj_toroverworld4.x, obj_toroverworld4.y, 867/* obj_torinteractable1 */);
        // obj_toroverworld4
        with(862) instance_destroy();
    }
}
if(conversation == 2.5 && global.plot == 4.5) {
    conversation= 3;
    if(instance_exists(867/* obj_torinteractable1 */)) {
        instance_create(obj_torinteractable1.x, obj_torinteractable1.y, 862/* obj_toroverworld4 */);
        // obj_torinteractable1
        with(867) instance_destroy();
    }
    // obj_toroverworld4
    with(862) path_start(9/* path_torielwalk3_2 */, 3, 0, 1/* path_action_restart */);
}
if(instance_exists(862/* obj_toroverworld4 */) && conversation == 3 && obj_toroverworld4.path_position == 1) {
    conversation= 4;
    // obj_toroverworld4
    with(862) path_end();
    instance_create(obj_toroverworld4.x, obj_toroverworld4.y, 870/* obj_torinteractable2 */);
    // obj_toroverworld4
    with(862) instance_destroy();
}
if(conversation == 4 && global.plot == 5 && !instance_exists(184/* obj_shaker */)) {
    if(instance_exists(870/* obj_torinteractable2 */)) {
        instance_create(obj_torinteractable2.x, obj_torinteractable2.y, 862/* obj_toroverworld4 */);
        // obj_torinteractable2
        with(870) instance_destroy();
        // obj_toroverworld4
        with(862) facing= 3;
        // obj_toroverworld4
        with(862) sprite_index= lsprite;
    }
    global.msc= 210;
    global.typer= 4;
    global.interact= 1;
    global.facechoice= 1;
    instance_create(0, 0, 779/* obj_dialoguer */);
    conversation= 5;
}
if(conversation == 5 && !instance_exists(779/* obj_dialoguer */)) {
    conversation= 6;
    global.interact= 0;
    // obj_toroverworld4
    with(862) path_start(41/* path_walkright */, 3, 0, 0/* path_action_stop */);
    instance_destroy();
}

/* */
/*  */
