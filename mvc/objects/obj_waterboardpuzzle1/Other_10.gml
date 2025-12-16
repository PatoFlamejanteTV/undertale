block= instance_position(xx + 10, yy + 10, 820);
if(block != -4) {
    block.x= 0;
    block.y= 0;
}
new= instance_create(xx, yy, 1363/* obj_npc_marker */);
new.depth= 850000;
new.sprite_index= 1552/* spr_bridgeseed */;
new.image_speed= 0;
new.image_index= 6;
new.visible= 1;
new.image_speed= 0;

/* */
/*  */
