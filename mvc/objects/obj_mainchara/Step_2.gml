if(keyboard_check(37/* LEFT */) == 0 && keyboard_check(39/* RIGHT */) == 0 && keyboard_check(40/* DOWN */) == 0 && keyboard_check(38/* UP */) == 0)
    moving= 0;
if(global.interact > 0) {
    moving= 0;
    movement= 0;
} else  movement= 1;
if(xprevious != x || yprevious != y) moving= 1;
if(moving == 0) {
    image_speed= 0;
    image_index= 0;
}
if(global.interact == 0 && moving == 1)
    global.encounter++;
if(cutscene == 0 && !instance_exists(184/* obj_shaker */)) {
    __view_set( e__VW.XView, 0, round(x - __view_get( e__VW.WView, 0 ) / 2 + 10) );
    __view_set( e__VW.YView, 0, round(y - __view_get( e__VW.HView, 0 ) / 2 + 10) );
}
// stack
with(0) event_user(0);

/* */
/*  */
