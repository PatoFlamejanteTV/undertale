hspeed= 0;
speedfactor= 6;
choice= 1;
if(instance_exists(363/* obj_purpleheart */))
    choice= ceil(random(obj_purpleheart.yamt));
side= choose(0, 1);
alarm[0]= 1;
visible= 0;
dmg= 0;

/* */
/*  */
