alarm[1]= 40;
snd_play(31/* snd_break1 */);
sprite_index= 44/* spr_heartbreak */;
x-= 2;
if(global.flag[500] == 1) {
    alarm[1]= -1;
    heartcon= 5;
    thisx= x;
    thisy= y;
}

/* */
/*  */
