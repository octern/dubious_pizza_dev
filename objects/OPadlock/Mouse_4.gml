/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

if(worldGet("toolbox")=="unlocked") {
	instance_destroy();
	instance_destroy(dial1);
	instance_destroy(dial2);
	instance_destroy(dial3);
	instance_destroy(dial4);
} else {
	textRoomMinor(ds_map_find_value(global.roomStrings, "Padlock"));
}