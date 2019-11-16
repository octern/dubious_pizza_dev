/// @description Insert description here
// You can write your code in this editor

if(global.cinematic) {
	show_debug_message("not picking up because cinematic");
} else if (!clickActive(mouse_x, mouse_y, false, noone, true, false)) {
	show_debug_message("not picking up because clickactive presumably textbox")
} else if (global.textboxThisTick) {
	show_debug_message("not picking up because this click dismissed a textbox");
} else {
	itemPickup(id);
}