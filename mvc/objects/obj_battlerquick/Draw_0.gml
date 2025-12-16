if(clap < 3) {
    obj_mainchara.depth= depp;
    if(instance_exists(147/* obj_fader */)) {
        // obj_fader
        with(147) instance_destroy();
    }
}
if(heartdraw == 1)
    draw_sprite(49/* spr_heartsmall */, 0, obj_mainchara.x + 5, obj_mainchara.y + 17);

/* */
/*  */
