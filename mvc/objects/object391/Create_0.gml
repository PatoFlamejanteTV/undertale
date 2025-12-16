scr_monstersetup(0, 0, 0, 0, 0);
image_speed= 0;
mypart1= instance_create(x, y, 215/* obj_froghead */);
mypart2= instance_create(x, y, 214/* obj_froglegs */);
hurtanim= 0;
hurtsound= 43;
talked= 0;
whatiheard= -1;
attacked= 0;
killed= 0;
global.heard= 0;
takedamage= 0;
mercymod= 3;
global.flag[30]= 1;

/* */
/*  */
