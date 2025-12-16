scr_depth(0, 0, 0, 0, 0);
scr_npc_anim();
script_execute(106/* scr_npcdir */, 2);
image_alpha= 0;
if(instance_exists(1570/* obj_mainchara */)) {
    dist= distance_to_object(1570);
    if(dist < 60) {
        disto= 5 / (dist + 2);
        if(disto > 1) disto= 1;
        image_alpha= disto;
    }
}

/* */
/*  */
