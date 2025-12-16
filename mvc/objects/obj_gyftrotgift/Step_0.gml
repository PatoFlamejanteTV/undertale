if(active == 1) {
    if(instance_exists(236/* obj_gyftrothead */) && gift != 1 && gift != 7 && gift != 9) {
        x= obj_gyftrothead.x;
        y= obj_gyftrothead.y;
    } else  {
        if(instance_exists(235/* obj_gyftrot */)) {
            x= obj_gyftrot.x;
            y= obj_gyftrot.y;
        }
    }
}

/* */
/*  */
