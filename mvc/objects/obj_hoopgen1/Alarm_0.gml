r= round(random(1)) + 2;
script_execute(125/* SCR_BORDER */, r, 2);
x= xx;
y= yy;
if(bullettype == 0) {
    iii= instance_create(x, y, 616/* blt_hoopbullet1 */);
    if(instance_exists(iii)) {
        iii.dmg= global.monsteratk[myself];
        iii.bullettype= 0;
    }
} else  {
    r= round(random(3));
    script_execute(125/* SCR_BORDER */, r, 8);
    iii= instance_create(x, y, 620/* blt_hoopbullet2 */);
    if(instance_exists(iii))
        iii.dmg= global.monsteratk[myself];
}
alarm[0]= firingspeed;

/* */
/*  */
