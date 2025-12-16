instance_create(300, -10, 1597/* obj_floweyslice */);
snd_play(157/* snd_laz_c */);
alarm[7]= 30;
if(instance_exists(1599/* obj_floweydmgwriter */)) {
    // obj_floweydmgwriter
    with(1599) instance_destroy();
}

/* */
/*  */
