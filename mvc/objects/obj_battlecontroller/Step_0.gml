SCR_BORDERSETUP(0, 0, 0, 0, 0);
currentplace= global.bmenuno;
if(global.monster[0] == 0 && global.monster[1] == 0 && global.monster[2] == 0 && won == 0) {
    won= 1;
    global.xp+= global.xpreward[3];
    global.gold+= global.goldreward[3];
    tlvl= global.lv;
    script_execute(55/* scr_levelup */);
    if(global.flag[15] == 0) {
        caster_stop(global.batmusic);
        caster_free(global.batmusic);
    }
    global.msg[0]= "* YOU WON!&* You earned ";
    global.msg[0]+= string(global.xpreward[3]) + " XP and ";
    global.msg[0]+= string(global.goldreward[3]) + " gold.";
    if(tlvl != global.lv) {
        global.msg[0]+= "&* Your LOVE increased.";
        snd_play(49/* snd_levelup */);
    }
    global.msg[0]+= "/%";
    if(global.extraintro == 2) {
        global.typer= 5;
        caster_free(global.currentsong);
        audio_stop_sound(234);
        global.currentsong= caster_load("music/toomuch.ogg");
        caster_loop(global.currentsong, 1, 1);
        global.flag[221]= 1;
        global.msg[0]= global.msg[2];
        global.myfight= 0;
        global.mnfight= 2;
        obj_heart.x= -200;
    }
    global.msc= 0;
    instance_create(global.idealborder[0], global.idealborder[2], 782/* OBJ_WRITER */);
    exit;
} else  {
    global.inv= 30;
    if(instance_exists(282/* obj_undyne_ex */)) global.inv= 30 - global.lv;
    if(instance_exists(360/* obj_spiderb */) && global.armor != 44)
        global.inv+= 20;
    if(global.armor == 44) global.inv+= 30;
    if(global.armor == 64) global.inv+= 15;
    if(global.weapon == 45) global.inv+= 15;
    if(global.inv < 15) global.inv= 15;
    if(global.armor == 46 || global.armor == 64) {
        if(global.mnfight == 0 && global.myfight == 0) {
            if((global.turn + 1) % 2 == 0 && healed == 0) {
                healed= 1;
                if(global.hp < global.maxhp) global.hp++;
                snd_play(109/* snd_power */);
            }
        } else  healed= 0;
    }
    if(global.mnfight == 0 && global.myfight == 0) {
        global.typer= 1;
        if(active == 1 && keyboard_multicheck_pressed(16/* SHIFT */) == 0 && keyboard_multicheck_pressed(13/* ENTER */)) {
            if(global.bmenuno == 0) {
                global.talked= -1;
                global.bmenucoord[2]= 0;
                global.bmenuno= global.bmenucoord[0] + 1;
                if(instance_exists(751/* obj_talkbt */) && obj_talkbt.spec == 1 && global.bmenuno == 2) {
                    global.rmsg= global.msg[0];
                    global.mytarget= 0;
                    // OBJ_WRITER
                    with(782) halt= 3;
                    // OBJ_INSTAWRITER
                    with(785) halt= 3;
                    global.bmenuno= 10;
                    global.msc= 1000 + global.monstertype[global.mytarget];
                    instance_create(global.idealborder[0], global.idealborder[2], 785/* OBJ_INSTAWRITER */);
                    keyboard_clear(13/* ENTER */);
                    SCR_TEXT(global.msc);
                    if(global.choices[global.bmenucoord[2]] == 0) global.bmenucoord[2]= 0;
                }
                if(global.bmenuno == 1 || global.bmenuno == 2 || global.bmenuno == 11) {
                    global.msc= 3;
                    if(global.monster[global.bmenucoord[1]] == 0)
                        global.bmenucoord[1]++;
                    if(global.monster[global.bmenucoord[1]] == 0)
                        global.bmenucoord[1]++;
                    if(global.monster[0] == 0 && global.monster[2] == 0)
                        global.bmenucoord[1]= 1;
                    if(global.bmenucoord[1] > 2) {
                        global.bmenucoord[1]= 0;
                        if(global.monster[0] == 0) global.bmenucoord[1]= 1;
                        if(global.monster[1] == 0) global.bmenucoord[1]= 2;
                        if(global.monster[2] == 0) global.bmenucoord[1]= 0;
                    }
                }
                if(global.bmenuno == 3) {
                    if(global.item[0] != 0) {
                        global.bmenucoord[3]= 0;
                        script_execute(75/* scr_itemnameb */);
                        global.msc= 9;
                    } else  global.bmenuno= 0;
                }
                if(global.bmenuno == 4) global.msc= 7;
                global.tmsg= global.msg[0];
                snd_play(111/* snd_select */);
                // OBJ_WRITER
                with(782) halt= 3;
                // OBJ_INSTAWRITER
                with(785) halt= 3;
                instance_create(global.idealborder[0], global.idealborder[2], 785/* OBJ_INSTAWRITER */);
                keyboard_clear(13/* ENTER */);
                exit;
            } else  {
                if(global.bmenuno == 1) {
                    global.mytarget= global.bmenucoord[1];
                    OBJ_WRITER.halt= 3;
                    OBJ_INSTAWRITER.halt= 3;
                    global.myfight= 1;
                    obj_heart.x= -200;
                    snd_play(111/* snd_select */);
                    script_execute(161/* scr_attack */);
                    keyboard_clear(13/* ENTER */);
                }
                if(global.bmenuno == 10) {
                    global.talked= global.bmenucoord[2];
                    global.mntrg= global.monsterinstance[global.mytarget];
                    with(global.mntrg) whatiheard= global.talked;
                    OBJ_WRITER.halt= 3;
                    OBJ_INSTAWRITER.halt= 3;
                    snd_play(111/* snd_select */);
                    global.myfight= 2;
                    obj_heart.x= -200;
                    keyboard_clear(13/* ENTER */);
                }
                if(global.bmenuno == 2) {
                    global.mytarget= global.bmenucoord[1];
                    OBJ_WRITER.halt= 3;
                    OBJ_INSTAWRITER.halt= 3;
                    global.bmenuno= 10;
                    global.msc= 1000 + global.monstertype[global.mytarget];
                    instance_create(global.idealborder[0], global.idealborder[2], 785/* OBJ_INSTAWRITER */);
                    keyboard_clear(13/* ENTER */);
                    SCR_TEXT(global.msc);
                    if(global.choices[global.bmenucoord[2]] == 0) global.bmenucoord[2]= 0;
                }
                if(global.bmenuno == 3 || global.bmenuno == 3.5) {
                    if(keyboard_check(39/* RIGHT */) == 0 && keyboard_check(37/* LEFT */) == 0) {
                        OBJ_WRITER.halt= 3;
                        itempos= global.bmenucoord[3] + (global.bmenuno - 3) * 8;
                        thisitemid= global.item[itempos];
                        script_execute(73/* scr_itemuseb */, itempos, thisitemid);
                        global.talked= 91;
                        global.myfight= 4;
                        obj_heart.x= -200;
                        snd_play(111/* snd_select */);
                    }
                    keyboard_clear(13/* ENTER */);
                }
                if(global.bmenuno == 4) {
                    OBJ_WRITER.halt= 3;
                    global.mercyuse= global.bmenucoord[4];
                    if(global.mercyuse == 1) {
                        script_execute(166/* scr_runaway */);
                        global.talked= 90;
                    }
                    if(runaway == 0) snd_play(111/* snd_select */);
                    global.myfight= 4;
                    obj_heart.x= -200;
                    keyboard_clear(13/* ENTER */);
                }
            }
        }
        if(active == 1 && keyboard_multicheck_pressed(16/* SHIFT */)) {
            if(global.bmenuno != 0 && global.bmenuno < 6) {
                OBJ_WRITER.halt= 3;
                OBJ_INSTAWRITER.halt= 3;
                global.bmenuno= 0;
                global.typer= 1;
                global.msg[0]= global.tmsg;
                global.msc= 0;
                instance_create(global.idealborder[0], global.idealborder[2], 782/* OBJ_WRITER */);
                keyboard_clear(16/* SHIFT */);
            }
            if(global.bmenuno == 10) {
                OBJ_WRITER.halt= 3;
                OBJ_INSTAWRITER.halt= 3;
                global.bmenuno= 2;
                global.typer= 1;
                global.msc= 3;
                if(instance_exists(751/* obj_talkbt */) && obj_talkbt.spec == 1) {
                    global.bmenuno= 0;
                    global.typer= 1;
                    global.msg[0]= global.rmsg;
                    global.msc= 0;
                }
                instance_create(global.idealborder[0], global.idealborder[2], 785/* OBJ_INSTAWRITER */);
                keyboard_clear(16/* SHIFT */);
            }
            if(global.bmenuno == 11) {
                OBJ_WRITER.halt= 3;
                OBJ_INSTAWRITER.halt= 3;
                global.bmenuno= 3;
                global.typer= 1;
                global.msc= 0;
                instance_create(global.idealborder[0], global.idealborder[2], 785/* OBJ_INSTAWRITER */);
                keyboard_clear(16/* SHIFT */);
            }
        }
        if(global.bmenuno == 1 || global.bmenuno == 2 || global.bmenuno == 11) {
            obj_heart.x= global.idealborder[0] + 32;
            obj_heart.y= global.idealborder[2] + 28 + global.bmenucoord[1] * 32;
        }
        if(global.bmenuno == 10) {
            if(global.bmenucoord[2] <= 2) obj_heart.x= global.idealborder[0] + 32;
            else  obj_heart.x= global.idealborder[0] + 292;
            if(global.bmenucoord[2] <= 2)
                obj_heart.y= global.idealborder[2] + 28 + global.bmenucoord[2] * 32;
            else 
                obj_heart.y= global.idealborder[2] + 28 + (global.bmenucoord[2] - 3) * 32;
        }
        if(global.bmenuno == 3 || global.bmenuno == 3.5) {
            if(global.bmenucoord[3] <= 1) obj_heart.y= global.idealborder[2] + 28;
            else  obj_heart.y= global.idealborder[2] + 60;
            if(global.bmenucoord[3] == 0 || global.bmenucoord[3] == 2)
                obj_heart.x= global.idealborder[0] + 32;
            else  obj_heart.x= global.idealborder[0] + 280;
        }
        if(global.bmenuno == 4) {
            obj_heart.x= global.idealborder[0] + 32;
            obj_heart.y= global.idealborder[2] + 28 + global.bmenucoord[4] * 32;
        }
    }
    if(active == 1 && keyboard_multicheck_pressed(16/* SHIFT */) && global.mnfight == 0 && global.flag[21] == 0) {
        if(instance_number(782) > 0)
            OBJ_WRITER.stringpos= string_length(OBJ_WRITER.originalstring);
        keyboard_clear(16/* SHIFT */);
    }
    if(global.myfight == 1 || global.myfight == 2 || global.mnfight == 3)
        obj_heart.x= -400;
    if(global.mnfight == 3) {
        global.border= 0;
        script_execute(168/* SCR_BORDERSETUP */);
        if(obj_lborder.x == global.idealborder[0]) {
            global.typer= 1;
            global.msc= 0;
            instance_create(global.idealborder[0], global.idealborder[2], 782/* OBJ_WRITER */);
            global.bmenuno= 0;
            global.myfight= 0;
            global.mnfight= 0;
            global.turn++;
            global.mercyuse= -1;
        }
    }
    if(global.myfight == 3 && instance_exists(782/* OBJ_WRITER */) && OBJ_WRITER.halt > 0) {
        obj_heart.x= global.idealborder[0] + 32 + global.bmenucoord[6] * 252;
        obj_heart.y= global.idealborder[2] + 92;
        if(keyboard_multicheck_pressed(13/* ENTER */)) {
            global.heard= 0;
            global.talked= 6 + global.bmenucoord[6];
            with(global.monsterinstance[global.mytarget])
                whatiheard= global.talked;
            obj_heart.x= -200;
            OBJ_WRITER.halt= 3;
            global.myfight= 2;
        }
    }
    if(global.myfight == 4 && runaway == 0) {
        obj_heart.x= -200;
        if(!instance_exists(782/* OBJ_WRITER */)) {
            global.myfight= 0;
            global.mnfight= 1;
            keyboard_clear(13/* ENTER */);
        }
    }
    if(global.hp <= 0) script_execute(158/* scr_gameoverb */);
    if(currentplace < global.bmenuno && snd_isplaying(111/* snd_select */) != 1)
        snd_play(111/* snd_select */);
    if(global.debug == 1 && keyboard_multicheck_pressed(32/* SPACE */) == 1)
        global.turntimer= 2;
    exit;
}

/* */
/*  */
