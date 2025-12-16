if(global.flag[7] == 1) instance_create(x + 3, y + 56, 789/* obj_door_s_musfade */);
else  {
    instance_create(35, 150, 13/* obj_sul */);
    instance_create(35, 130, 2/* obj_solidsmall */);
    instance_destroy();
}

/* */
/*  */
