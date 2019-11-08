/// @description Insert description here
// You can write your code in this editor

// initialization code is in step event bcs we want to set params externally
initialized = false;
textWidth = sprite_width;

tempTextArea = instance_find(OTextAreaBG, 0);
if(tempTextArea == noone) {
	surface_height = window_get_height();
} else {
	surface_height = tempTextArea.sprite_height;
}
