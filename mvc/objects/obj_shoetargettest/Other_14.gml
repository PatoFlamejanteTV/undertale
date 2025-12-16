newtarg= instance_create(x - wherex, y, 721/* obj_xtarget */);
newtarg.hspeed= 10;
if(global.weapon == 49) newtarg.hspeed= 15;
newtarg.priority= instance_number(719) - 1;
newtarg.fatalx= fatalx;

/* */
/*  */
