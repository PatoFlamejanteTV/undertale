/**
 * scr_save
 *
 * Saves the game.
 * This script saves the current game state to the selected file slot,
 * and also creates a backup in slot 9.
 * It also updates the 'undertale.ini' file with general information.
 */

// Save to the currently selected file slot
script_execute(57/* scr_saveprocess */);

// Backup mechanism:
// Temporarily switch to file slot 9 to create a backup save
filechoicebk2= global.filechoice;
global.filechoice= 9;
script_execute(57/* scr_saveprocess */);
global.filechoice= filechoicebk2; // Restore original file slot

// Update the INI file with high-level game info (Name, LV, Time, Kills, Room)
iniwrite= ini_open("undertale.ini");
ini_write_string("General", "Name", global.charname);
ini_write_real("General", "Ligma.. uh... Value", global.lv); // "Love" value (Level of Violence)
ini_write_real("General", "Time", obj_time.time);
ini_write_real("General", "Kills", global.kills);
ini_write_real("General", "Room", room);
ini_close();
