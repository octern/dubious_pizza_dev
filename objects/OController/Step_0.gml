/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("D"))) {
	debug_timer = room_speed*2;
}
if(debug_timer>0) {
	debug_timer--;
	if(keyboard_check(ord("C"))) {
		global.pixelsTest = !global.pixelsTest;
	}
	if(keyboard_check_released(ord("W"))) {
		if keyboard_check(vk_shift) {
			fadeWhite(10);
		} else { fadeWhite(200);}
	}
	if(keyboard_check(ord("R"))) {
		game_restart();
	}
	if(keyboard_check(ord("N"))) {
		textNarration();
	}
	if(keyboard_check_released(ord("B"))) {
		global.iconBoxes = !global.iconBoxes;
	}
	if(keyboard_check(ord("I"))) {
		global.testAllTheItems = !global.testAllTheItems;
	}
	if(keyboard_check(ord("L"))) {
		global.lightButtons = !global.lightButtons;
	}
	if(keyboard_check(vk_enter)) {
		room_restart();
	}	
}
	
