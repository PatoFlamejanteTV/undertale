/**
 * scr_saveprocess
 *
 * The core saving logic.
 * Writes global game state variables to a text file ("file0", "file1", etc.).
 * The order of writing is critical and must match scr_load.
 */

// Update last saved stats
global.lastsavedkills= global.kills;
global.lastsavedtime= obj_time.time;
global.lastsavedlv= global.lv;

// Open the save file for writing
file= "file" + string(global.filechoice);
myfileid= file_text_open_write(file);

// 1. Character Name
file_text_write_string(myfileid, global.charname);
file_text_writeln(myfileid);

// 2. LV (Level of Violence)
file_text_write_real(myfileid, global.lv);
file_text_writeln(myfileid);

// 3. Max HP
file_text_write_real(myfileid, global.maxhp);
file_text_writeln(myfileid);

// 4. Max EN (Energy?) - Possibly unused or mechanic specific
file_text_write_real(myfileid, global.maxen);
file_text_writeln(myfileid);

// 5. Attack (AT)
file_text_write_real(myfileid, global.at);
file_text_writeln(myfileid);

// 6. Weapon Strength
file_text_write_real(myfileid, global.wstrength);
file_text_writeln(myfileid);

// 7. Defense (DF)
file_text_write_real(myfileid, global.df);
file_text_writeln(myfileid);

// 8. Armor Defense
file_text_write_real(myfileid, global.adef);
file_text_writeln(myfileid);

// 9. Speed (SP) - Possibly unused
file_text_write_real(myfileid, global.sp);
file_text_writeln(myfileid);

// 10. XP (Experience Points)
file_text_write_real(myfileid, global.xp);
file_text_writeln(myfileid);

// 11. Gold
file_text_write_real(myfileid, global.gold);
file_text_writeln(myfileid);

// 12. Kills
file_text_write_real(myfileid, global.kills);
file_text_writeln(myfileid);

// 13. Inventory (Items and Phone)
// Writes 8 slots for items and 8 slots for phone entries
i= 0;
while(i < 8) {
    file_text_write_real(myfileid, global.item[i]);
    file_text_writeln(myfileid);
    file_text_write_real(myfileid, global.phone[i]);
    file_text_writeln(myfileid);
    i++;
}

// 14. Equipped Weapon
file_text_write_real(myfileid, global.weapon);
file_text_writeln(myfileid);

// 15. Equipped Armor
file_text_write_real(myfileid, global.armor);
file_text_writeln(myfileid);

// 16. Flags (0 to 511)
// Stores various game states, events, and persistent data
i= 0;
while(i < 512) {
    file_text_write_real(myfileid, global.flag[i]);
    file_text_writeln(myfileid);
    i++;
}

// 17. Plot progress
file_text_write_real(myfileid, global.plot);
file_text_writeln(myfileid);

// 18. Menu Choices (3 slots)
i= 0;
while(i < 3) {
    file_text_write_real(myfileid, global.menuchoice[i]);
    file_text_writeln(myfileid);
    i++;
}

// 19. Current Song
file_text_write_real(myfileid, global.currentsong);
file_text_writeln(myfileid);

// 20. Current Room
file_text_write_real(myfileid, global.currentroom);
file_text_writeln(myfileid);

// 21. Game Time
file_text_write_real(myfileid, obj_time.time);

// Close the file
file_text_close(myfileid);
