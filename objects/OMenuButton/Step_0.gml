/// @description Insert description here
// You can write your code in this editor

if(!global.showInv) {exit;}
if(!initialized) {
	initialized = true;
	textFormatSet("default");
	textW = string_width(buttonText);
	textH = string_height(buttonText);
	text_x = x + sprite_width/2 - textW/2;
	text_y = y + sprite_height/2 - textH/2;
}

if(point_in_rectangle(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height)) {
	image_index=1;
	mouse_present = 1;
} else {image_index=0; mouse_present=0;}


if(mouse_check_button_released(mb_any) && mouse_present) {
	global.storyString = "gap_year";
	global.closeupRoom = room;
	fadeWhite(fadeTime, 30, c_blue);
	roomChangeCountdown = fadeTime;
}

if(roomChangeCountdown > 0) {
	roomChangeCountdown--;
	show_debug_message(string(roomChangeCountdown));
} else if(roomChangeCountdown <= 0 && roomChangeCountdown > -100) {
	room_goto(RDialog);
	roomChangeCountdown = -100;
}