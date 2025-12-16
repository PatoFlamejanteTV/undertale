reds++;
if(sprite_index == 117) sprite_index= 112/* spr_dummybullet */;
else  sprite_index= 117/* spr_dummybullet_red */;
alarm[7]= 5;
if(reds > 4) {
    event_user(1);
    alarm[7]= -1;
    alarm[5]= 90;
    speed= 2;
    friction= -0.2;
}

/* */
/*  */
