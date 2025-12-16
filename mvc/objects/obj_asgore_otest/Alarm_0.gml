s++;
if(s == 1) sprite_index= 1900/* spr_asgore_l */;
if(s == 2) sprite_index= 1907/* spr_asgore_u */;
if(s == 3) sprite_index= 1904/* spr_asgore_d */;
if(s > 3) {
    s= 0;
    sprite_index= 1901/* spr_asgore_r */;
}
alarm[0]= 60;

/* */
/*  */
