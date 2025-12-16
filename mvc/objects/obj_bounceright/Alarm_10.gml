if(con == 0) {
    mydirection+= 90;
    myfacing++;
    if(myfacing >= 4) myfacing-= 4;
    if(mydirection >= 360) mydirection-= 360;
    if(myfacing == 0) sprite_index= 1821/* spr_venter_d */;
    if(myfacing == 1) sprite_index= 1824/* spr_venter_r */;
    if(myfacing == 2) sprite_index= 1823/* spr_venter_u */;
    if(myfacing == 3) sprite_index= 1822/* spr_venter_l */;
}
alarm[10]= fliptime;

/* */
/*  */
