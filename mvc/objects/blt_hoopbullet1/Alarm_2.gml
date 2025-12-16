if(sterile == 0) {
    iii= instance_create(xstart, ystart, 616/* blt_hoopbullet1 */);
    iii.dmg= dmg;
    iii.bullettype= 1;
    iii.gravity= gravitystart;
    iii.gravity_direction= gravity_direction;
    iii.sterile= 1;
}

/* */
/*  */
