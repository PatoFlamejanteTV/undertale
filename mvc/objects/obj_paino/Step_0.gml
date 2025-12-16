num= 0;
if(keyboard_check(37/* LEFT */) && num == 0) num++;
if(keyboard_check(40/* DOWN */) && num == 0) num+= 2;
if(keyboard_check(39/* RIGHT */) && num == 0) num+= 3;
if(keyboard_check(38/* UP */) && num == 0) num+= 4;
if(buffer < 1 && keyboard_multicheck_pressed(0/* NOKEY */)) {
    justplayed[num]= 6;
    played[num]= 20;
    caster_play(p[num], 0.5, 1.13);
    i= 29;
    while(i > 0) {
        pp[i]= pp[i - 1];
        i--;
    }
    pp[0]= num;
}
i= 0;
while(i < 10) {
    justplayed[i]--;
    played[i]--;
    i++;
}
global.interact= 1;
buffer--;
if(keyboard_multicheck(1/* ANYKEY */) == 0) coff= 0;
if(buffer < 0 && keyboard_multicheck(1/* ANYKEY */))
    coff++;
if(coff > 1) {
    global.interact= 0;
    instance_destroy();
}

/* */
/*  */
