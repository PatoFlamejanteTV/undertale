if(on <= 0) image_index= 0;
if(on > 0) image_index= 1;
on--;
if(on > 0 && keyboard_multicheck_pressed(0/* NOKEY */))
    event_user(0);

/* */
/*  */
