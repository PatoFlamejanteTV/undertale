/**
 * scr_load
 *
 * Loads the game state from a save file.
 * Reads variables in the exact same order they were written in scr_saveprocess.
 * Also performs necessary initialization after loading (like setting room persistence).
 */

// Backup file choice before loading
filechoicebk= global.filechoice;

// Reset persistence of current room to prevent weird state carry-over
room_set_persistent(global.currentroom, 0);

// Initialize game start variables (resets some globals)
script_execute(62/* SCR_GAMESTART */);

// Restore file choice
global.filechoice= filechoicebk;

// Open the save file for reading
file= "file" + string(global.filechoice);
myfileid= file_text_open_read(file);

// 1. Character Name
global.charname= file_text_read_string(myfileid);
file_text_readln(myfileid);

// 2. LV
global.lv= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 3. Max HP
global.maxhp= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 4. Max EN
global.maxen= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 5. AT
global.at= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 6. Weapon Strength
global.wstrength= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 7. DF
global.df= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 8. Armor Defense
global.adef= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 9. SP
global.sp= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 10. XP
global.xp= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 11. Gold
global.gold= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 12. Kills
global.kills= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 13. Inventory (Items and Phone)
i= 0;
while(i < 8) {
    global.item[i]= file_text_read_real(myfileid);
    file_text_readln(myfileid);
    global.phone[i]= file_text_read_real(myfileid);
    file_text_readln(myfileid);
    i++;
}

// 14. Equipped Weapon
global.weapon= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 15. Equipped Armor
global.armor= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 16. Flags
i= 0;
while(i < 512) {
    global.flag[i]= file_text_read_real(myfileid);
    file_text_readln(myfileid);
    i++;
}

// 17. Plot
global.plot= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 18. Menu Choices
i= 0;
while(i < 3) {
    global.menuchoice[i]= file_text_read_real(myfileid);
    file_text_readln(myfileid);
    i++;
}

// Reset specific flag (likely related to menu state or temporary interaction)
global.flag[94]= 0;

// 19. Current Song
global.currentsong= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 20. Current Room
global.currentroom= file_text_read_real(myfileid);
file_text_readln(myfileid);

// 21. Game Time
obj_time.time= file_text_read_real(myfileid);
file_text_readln(myfileid);

// Update tracking variables
global.lastsavedkills= global.kills;
global.lastsavedtime= obj_time.time;
global.lastsavedlv= global.lv;

file_text_close(myfileid);

// Restore HP/EN to max on load
global.hp= global.maxhp;
global.en= global.maxen;

// Perform temporary save logic (possibly for checkpoints or resume)
script_execute(59/* scr_tempsave */);

// Set area based on room number
if(global.currentroom < 75) global.area= 0;
if(global.currentroom >= 75) global.area= 1;

// Reset specific flags (likely related to cutscenes or temporary room states)
global.flag[360]= 0;
global.flag[361]= 0;
global.flag[362]= 0;
global.flag[363]= 0;
global.flag[364]= 0;

// Dogcheck: Anti-piracy / Error handler / Easter egg check
// If dogcheck triggers (returns 1), reload the room (or handle error)
scr_dogcheck();
if(dogcheck == 1) room_goto(global.currentroom);
