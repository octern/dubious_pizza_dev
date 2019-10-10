/// @description Insert description here
// You can write your code in this editor

if(roomChangeCountdown > 0) {
	roomChangeCountdown--;
	show_debug_message(string(roomChangeCountdown));
} else if(roomChangeCountdown <= 0 && roomChangeCountdown > -100) {
	room_goto(RDialog);
	roomChangeCountdown = -100;
	instance_destroy();
}

