if(global.debug == 1) {
    if(keyboard_check_pressed(85/* U */)) turns--;
    if(keyboard_check_pressed(73/* I */)) turns++;
}
if(trcon >= 3) {
    if(instance_exists(557/* obj_screenwhiter */))
        depth= obj_screenwhiter.depth + 2;
    draw_set_color(0);
    draw_rectangle(-100, -100, 800, 800, 0);
}

/* */
/*  */
