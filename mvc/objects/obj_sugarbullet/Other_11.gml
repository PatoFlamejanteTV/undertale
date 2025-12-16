i= 0;
while(i < 4) {
    sug= instance_create(x, y, 1178/* obj_sugarbullet_drop */);
    sug.image_index= i;
    sug.image_angle= image_angle;
    sug.ang= ang;
    i++;
}
instance_destroy();

/* */
/*  */
