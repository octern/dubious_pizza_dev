// spawn an object that counts down to room change

nextRoom = argument[0];
fade1 = argument[1];
fade2 = argument[2];
fadeColor = argument[3];



if(roomChangeCountdown > 0) {
	roomChangeCountdown--;
	show_debug_message(string(roomChangeCountdown));
} else if(roomChangeCountdown <= 0 && roomChangeCountdown > -100) {
	room_goto(RDialog);
	roomChangeCountdown = -100;
}