if(global.plot >= 63) {
    instance_create(x, y, 1370/* obj_iceevent */);
    if(!instance_exists(1376/* obj_fakebridge */))
        instance_create(x + 3, y, 1376/* obj_fakebridge */);
    instance_destroy();
}

/* */
/*  */
