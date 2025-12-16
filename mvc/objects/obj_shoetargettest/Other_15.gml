newtarg= instance_create(x + sprite_width + wherex, y, 722/* obj_ztarget */);
newtarg.hspeed= -10;
if(global.weapon == 49) newtarg.hspeed= -15;
newtarg.priority= instance_number(719) - 1;
newtarg.fatalx= fatalx;

/* */
/*  */
