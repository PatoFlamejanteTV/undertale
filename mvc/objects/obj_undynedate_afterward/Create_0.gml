con= 0;
if(global.flag[389] == 3) {
    global.flag[20]= 0;
    con= 1;
    alarm[4]= 45;
    global.interact= 1;
    if(instance_exists(1570/* obj_mainchara */)) {
        obj_mainchara.x= 120;
        obj_mainchara.y= 160;
        global.interact= 1;
    }
    undyne= instance_create(150, 135, 1061/* obj_undyne_actor */);
    undyne.sprite_index= 1415/* spr_undyne_lt */;
    global.flag[390]= 0;
    exit;
} else  {
    instance_destroy();
    exit;
}

/* */
/*  */
