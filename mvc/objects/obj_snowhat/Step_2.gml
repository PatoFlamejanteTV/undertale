if(instance_exists(1570/* obj_mainchara */)) {
    x= obj_mainchara.x - 1;
    y= obj_mainchara.y - 15;
    d= 0;
    if(global.interact == 0) d= 1;
    if(d == 1) {
        instance_create(x + 10, y + 15, 1504/* obj_snowhatparticle */);
        repeat(3)  {
            grx= choose(1, -1) * random(7);
            gry= choose(1, -1) * random(4);
            instance_create(x + 10 + grx, y + 12 + gry, 1504/* obj_snowhatparticle */);
        }
        instance_destroy();
    }
}

/* */
/*  */
