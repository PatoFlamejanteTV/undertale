xx= __view_get( e__VW.XView, 0 );
yy= __view_get( e__VW.YView, 0 );
part1= instance_create(xx, yy + 20, 1227/* obj_mettnews_part */);
part1.sprite_index= 1788/* spr_mettbg_part1 */;
part2= instance_create(xx + 93, yy + 20, 1227/* obj_mettnews_part */);
part2.sprite_index= 1789/* spr_mettbg_part2 */;
part3= instance_create(xx + 93, yy + 67, 1227/* obj_mettnews_part */);
part3.sprite_index= 1790/* spr_mettbg_part3 */;
part4= instance_create(xx + 221, yy + 20, 1227/* obj_mettnews_part */);
part4.sprite_index= 1791/* spr_mettbg_part4 */;
floorpart= instance_create(xx, yy + 180, 1227/* obj_mettnews_part */);
floorpart.sprite_index= 1793/* spr_mettnewsfloor */;
logo= instance_create(xx + 60, yy + 20, 1227/* obj_mettnews_part */);
logo.sprite_index= 1794/* spr_mettnewslogo */;
scaff= instance_create(xx, yy, 1227/* obj_mettnews_part */);
scaff.sprite_index= 1786/* spr_scaffoldingplaceholder */;
obj_mettnews_part.depth= 200;
mett= instance_create(xx + 236, yy + 160 - 33, 1223/* obj_mettanchor */);
mett.depth= 170;
counter= instance_create(xx + 200, yy + 160, 1227/* obj_mettnews_part */);
counter.sprite_index= 1792/* spr_mettnewscounter */;
counter.depth= 180;
ticker= instance_create(xx, yy + 200, 1231/* obj_mettnews_ticker */);

/* */
/*  */
