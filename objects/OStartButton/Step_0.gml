/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_released(mb_any) && point_in_rectangle(mouse_x, mouse_y, buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight)) {
	global.storyString = "opening_dialog";
	room_goto(RDialog);
}