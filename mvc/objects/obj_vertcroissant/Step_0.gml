if(instance_exists(363/* obj_purpleheart */)) {
    op= 363;
    if(vspeed > 0 && y > 400) instance_destroy();
    image_angle+= 8;
    vspeed+= 0.3;
} else  instance_destroy();

/* */
/*  */
