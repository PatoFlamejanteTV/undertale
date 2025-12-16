if(barked < 2) {
    sprite_index= 103/* spr_tinypombark */;
    alarm[2]= 4;
    alarm[1]= 8;
    snd_play(41/* snd_pombark */);
    barked++;
} else  {
    alarm[3]= 10;
    sprite_index= 99/* spr_tinypomwalk */;
}

/* */
/*  */
