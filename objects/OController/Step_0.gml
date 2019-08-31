/// @description Insert description here
// You can write your code in this editor

debug_timer_setting = room_speed * 2;
if(keyboard_check_released(ord("D"))) {
	debug_timer = debug_timer_setting;
}
if(debug_timer>0) {
	debug_timer--;
	if(debug_timer < debug_timer_setting) {
		if(keyboard_check_released(ord("B"))) {
			global.iconBoxes = !global.iconBoxes;
		}
		if(keyboard_check_released(ord("C"))) {
			global.pixelsTest = !global.pixelsTest;
		}
		if(keyboard_check_released(ord("E"))) {
			room_goto(RDialog);
		}
		if(keyboard_check_released(ord("I"))) {
			global.testAllTheItems = !global.testAllTheItems;
		}
		if(keyboard_check_released(ord("L"))) {
			global.lightButtons = !global.lightButtons;
		}
		if(keyboard_check_released(ord("N"))) {
			textNarration();
		}
		if(keyboard_check_released(ord("R"))) {
			game_restart();
		}
		if(keyboard_check_released(ord("W"))) {
			if keyboard_check(vk_shift) {
				fadeWhite(10);
			} else { fadeWhite(200);}
		}
		if(keyboard_check_released(vk_enter)) {
			room_restart();
		}	
	}
}
	
