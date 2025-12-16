caster_resume(global.batmusic);
if(instance_exists(259/* obj_shyren */)) {
    if(obj_shyren.emotion == 2) obj_shyren.emotion= 1;
    // obj_shyren
    with(259) {
        caster_stop(longnote[0]);
        caster_stop(longnote[1]);
    }
}

/* */
/*  */
