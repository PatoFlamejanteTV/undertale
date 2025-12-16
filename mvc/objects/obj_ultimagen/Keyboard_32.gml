if(global.debug == 1) {
    ub= instance_create(x, y, 576/* obj_ultimabullet */);
    ub.side= choose(0, 1);
    with(ub) event_user(1);
}

/* */
/*  */
