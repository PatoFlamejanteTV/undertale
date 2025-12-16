global.currentroom= room;
instance_create(0, 0, 147/* obj_fader */);
if(room == 5) {
    room_goto(307);
    room_persistent= 1;
}
if(room == 77) room_goto(317);
if(instance_exists(1307/* obj_alabdoor_l */)) room_goto(318);

/* */
/*  */
