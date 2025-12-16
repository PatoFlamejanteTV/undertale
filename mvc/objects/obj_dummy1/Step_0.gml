if(myinteract == 1 && global.plot < 6) {
    global.flag[10]= 0;
    global.flag[11]= 0;
    global.flag[12]= 0;
    global.flag[13]= 0;
    global.entrance= 0;
    global.battlegroup= 2;
    obj_mainchara.depth= -600;
    if(!instance_exists(142/* obj_battler */)) instance_create(0, 0, 142/* obj_battler */);
    global.plot= 6;
    myinteract= 0;
}
script_execute(113/* scr_depth */);

/* */
/*  */
