depth= obj_mainchara.depth;
snd_play(29/* snd_b */);
alarm[0]= 15 + random(5);
global.interact= 3;
if(scr_murderlv() >= 8 && global.flag[27] == 0) sprite_index= 1053/* spr_exc_f */;
action_move_to(obj_mainchara.x, obj_mainchara.y - 11);

/* */
/*  */
