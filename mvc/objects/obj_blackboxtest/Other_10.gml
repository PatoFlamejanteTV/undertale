i= 0;
while(i < 4) {
    gel= instance_create(x, y, 676/* obj_blackboxpart */);
    gel.image_angle= image_angle + i * 90;
    i++;
}
snd= choose(0, 1, 2);
if(snd == 0) snd_play(150/* snd_breaka */);
if(snd == 1) snd_play(151/* snd_breakb */);
if(snd == 2) snd_play(152/* snd_breakc */);
instance_destroy();

/* */
/*  */
