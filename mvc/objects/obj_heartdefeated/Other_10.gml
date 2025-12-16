if(dingus == 1 && !instance_exists(782/* OBJ_WRITER */)) {
    dingus= 2;
    unfader= instance_create(0, 0, 149/* obj_unfader */);
    unfader.tspeed= 0.03;
    alarm[4]= 60;
}

/* */
/*  */
