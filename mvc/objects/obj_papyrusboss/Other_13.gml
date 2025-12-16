alarm[10]= 30;
global.hurtanim[myself]= 0;
with(mypart1) instance_destroy();
visible= 0;
dh= instance_create(x + 41, y, 229/* obj_papyrusdeadhead */);
db= instance_create(x, y, 230/* obj_papyrusdeadbody */);
caster_free(global.batmusic);
caster_free(global.batmusic2);

/* */
/*  */
