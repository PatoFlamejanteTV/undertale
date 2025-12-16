if(x > xstart - 40 && keyboard_check(37/* LEFT */))
    x-= 4;
if(x < xstart + 40 && keyboard_check(39/* RIGHT */))
    x+= 4;
if(keyboard_check(38/* UP */)) y-= 4;
if(keyboard_check(40/* DOWN */)) y+= 4;
if(global.mnfight != 2) instance_destroy();

/* */
/*  */
