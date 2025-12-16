if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 743, 0, 1))
    event_user(11);
if(collision_rectangle(x + 2, y + 2, x + 22, y + 22, 739, 0, 1)) {
    if(instance_exists(402/* obj_ratingsmaster */))
        global.ratings+= 20;
    g= collision_rectangle(x + 2, y + 2, x + 22, y + 22, 739, 0, 1);
    snd_play(128/* snd_mtt_burst */);
    with(g) instance_destroy();
    bp= instance_create(x, y, 425/* obj_brokenpiece */);
    if(instance_exists(bp)) bp.sprite_index= sprite_index;
    instance_destroy();
}
s++;
x= xstart + sin(s / sp) * sf;

/* */
/*  */
