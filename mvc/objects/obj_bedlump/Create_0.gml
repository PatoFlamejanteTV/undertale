image_speed= 0;
moving= 0;
x1= 101;
y1= 60;
x2= 220 - sprite_width - 1;
y2= 115;
caster_free(-3);
beat= caster_load("music/coolbeat.ogg");
global.interact= 1;
if(instance_exists(1570/* obj_mainchara */)) obj_mainchara.visible= 0;
mc= instance_create(x, y, 1363/* obj_npc_marker */);
mc.sprite_index= 1051/* spr_mainchara_lie_2 */;
mc.depth= 500020;
mc.visible= 1;
canmove= 0;
playing= 0;
con= 0;
mclock= 1;
alarm[3]= 30;
GR= 0;

/* */
/*  */
