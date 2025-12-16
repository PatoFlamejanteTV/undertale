if(cl == 4) {
    if(vspeed > 0 && y > w_d) {
        y= w_d;
        if(cl == 0) direction+= 90;
        else  direction-= 90;
    }
    if(hspeed > 0 && x > w_r) {
        x= w_r;
        if(cl == 0) direction+= 90;
        else  direction-= 90;
    }
    if(vspeed < 0 && y < w_u) {
        y= w_u;
        if(cl == 0) direction+= 90;
        else  direction-= 90;
    }
    if(hspeed < 0 && x < w_l) {
        x= w_l;
        if(cl == 0) direction+= 90;
        else  direction-= 90;
    }
}
if(keyboard_check(37/* LEFT */)) x= w_l;
if(keyboard_check(39/* RIGHT */)) x= w_r;
if(keyboard_check(38/* UP */)) y= w_u;
if(keyboard_check(40/* DOWN */)) y= w_d;

/* */
/*  */
