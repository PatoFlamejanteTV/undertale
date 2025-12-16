ang= i * 18;
xx= lengthdir_x(radius, ang);
yy= lengthdir_y(radius, ang);
instance_create(xx + x, yy + y, 1665/* obj_spinbullet_friendscene */);
snd_play(92/* snd_chug */);
i++;
if(i < 20) {
    alarm[1]= 1;
    if(spec == 2) alarm[1]= 2;
}

/* */
/*  */
