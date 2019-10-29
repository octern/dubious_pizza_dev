if(keyboard_check_released(ord("M"))) {
	if(global.volume_bgm==0) {global.volume_bgm = .5} else {global.volume_bgm = 0;}
	audio_group_set_gain(audio_bgm, global.volume_bgm, 500);
}
if(keyboard_check_released(ord("S"))) {
	global.volume_sfx = 1 - global.volume_sfx;
	show_debug_message(string(global.volume_sfx));
	audio_group_set_gain(audio_sfx, global.volume_sfx, 500);
}


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
			global.storyString = "gap_year";
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
			global.storyString = "opening_narration";
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
	
