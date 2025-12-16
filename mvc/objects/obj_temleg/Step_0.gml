if(control == 1) {
    if(keyboard_check(39/* RIGHT */)) hspeed+= 0.2;
    if(keyboard_check(37/* LEFT */)) hspeed-= 0.2;
    if(keyboard_check(40/* DOWN */) && height > 4) {
        height--;
        y++;
    }
    if(keyboard_check(38/* UP */)) {
        height++;
        y--;
    }
}
siner-= hspeed;
if(global.turntimer < 1) instance_destroy();

/* */
/*  */
