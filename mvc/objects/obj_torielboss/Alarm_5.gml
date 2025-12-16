if(instance_exists(784/* OBJ_NOMSCWRITER */)) {
    with(blconwd) instance_destroy();
}
if(instance_exists(186/* obj_blconsm */)) {
    with(blcon) instance_destroy();
}
if(instance_exists(187/* obj_blconwdflowey */)) {
    // obj_blconwdflowey
    with(187) instance_destroy();
}
talked= 0;
whatiheard= -1;
global.mnfight= 2;
if(mycommand < 40 || global.hp < 3) global.border= 7;

/* */
/*  */
