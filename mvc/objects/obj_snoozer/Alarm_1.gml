snooze++;
zz[snooze]= instance_create(x, y, 1293/* obj_zzz */);
if(snooze > 1)
    zz[snooze].hspeed= zz[snooze - 1].hspeed;
if(snooze < 3) alarm[1]= 20;

/* */
/*  */
