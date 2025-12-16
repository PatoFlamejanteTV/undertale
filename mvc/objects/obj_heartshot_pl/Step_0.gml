if(y < 50) {
    if(instance_exists(402/* obj_ratingsmaster */))
        global.ratings-= 5;
    instance_destroy();
}

/* */
/*  */
