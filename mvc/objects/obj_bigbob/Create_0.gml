i= 0;
repeat(8)  {
    bobkid= instance_create(x, y, 427/* obj_bobskids */);
    bobkid.siner= degtorad(360) / 2 * i;
    bobkid.parent= id;
    i++;
}
vspeed= 1;

/* */
/*  */
