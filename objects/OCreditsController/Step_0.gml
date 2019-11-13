/// @description Insert description here
// You can write your code in this editor

if(continueTimeout > 0) {
	continueTimeout--;
	exit;
}

if(mouse_check_button_released(mb_left)) {
	global.closeupItem = global.poemEndSequence[global.endIndex];
	roomChangeFade(RInvCloseup, 30, 5, c_black);
}