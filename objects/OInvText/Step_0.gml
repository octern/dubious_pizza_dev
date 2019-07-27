/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_down)) {
	if(dn_timer <= 0) {
		if(text_y > text_max_scroll) {
			text_y -= text_increment;
		}
		dn_timer = scroll_timer;
	}

	dn_timer -= 1;
}

if(keyboard_check_released(vk_down)) {
	dn_timer = 0;
}