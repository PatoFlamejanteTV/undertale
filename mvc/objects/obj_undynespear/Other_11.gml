if(active == 1) {
    global.border= 3;
    global.flag[15]= 1;
    global.flag[16]= 1;
    global.flag[370]= 1;
    SCR_BORDERSETUP();
    instance_create(0, 0, 144/* obj_battlerquick */);
    obj_undynespear.active= 2;
    if(instance_exists(1036/* obj_undyneencounter1 */))
        obj_undyneencounter1.stopper= 1;
    if(instance_exists(1045/* obj_uspeargen */))
        obj_uspeargen.alarm[0]+= 20;
}

/* */
/*  */
