/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_released(mb_any) && point_in_rectangle(mouse_x, mouse_y, buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight)) {
	global.storyString = "opening_dialog";
	audio_sound_gain(global.bgm, .5, 2000);
	roomChangeFade(RDialog, room_speed/2, 3, c_white);
}