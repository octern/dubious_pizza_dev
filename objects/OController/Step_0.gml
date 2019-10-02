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
			global.dialogString = "gap_year";
			global.closeupRoom = room;
			room_goto(RDialog);
		}
		if(keyboard_check_released(ord("I"))) {
			global.testAllTheItems = !global.testAllTheItems;
		}
		if(keyboard_check_released(ord("L"))) {
			global.lightButtons = !global.lightButtons;
		}
		if(keyboard_check_released(ord("N"))) {
			global.dialogString = "opening_narration";
			global.closeupRoom = room;
			room_goto(RNarration);
		}
		if(keyboard_check_released(ord("P"))) {
			phone=instance_find(OTextFramePhoneRound, 0);
			if(phone.sprite_index == SNothing) {
				phone.sprite_index = SPhoneRound;
			} else {phone.sprite_index = SNothing;}
		}
		if(keyboard_check_released(ord("R"))) {
			game_restart();
		}
		if(keyboard_check_released(ord("W"))) {
			if keyboard_check(vk_shift) {
				fadeWhite(10, -1, c_blue);
			} else { fadeWhite(200, -1, c_green);}
		}
		if(keyboard_check_released(vk_enter)) {
			room_restart();
		}	
	}
}
	
