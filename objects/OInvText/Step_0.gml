/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if(!initialized) {

// instead of setting text to display on create, we let the inventory screen set them
// this way we can have different text in different boxes. 
	dialogMarginY = 8;
	dialogMarginX = 8;
	text_scale = 1;
	if(!variable_instance_exists(id, "text_tint")) {
		 text_tint = global.text_tint
	};
// but if they weren't set, do the normal thing by default. 
	if(!variable_instance_exists(id, "words")) {
		words = global.itemDefinitions[global.closeupItem, itemProperty.description];
		item_obj = global.itemDefinitions[global.closeupItem, itemProperty.object];
		is_poem = object_is_ancestor(item_obj, OPoem);
	}
	initialized=true;
	text_x = x;
	text_y = y;
/*
	if(is_poem) {
		text_scale = 1;
		text_tint = c_green;
	} else {
		text_scale = 1;
		text_tint = c_white;
	}
*/
	textFormatSet(format);
	text_container_width = sprite_width - max(bubble_jitter, marginL) - min(bubble_jitter, marginR);
	text_width = text_container_width * .95;
	text_height = string_height_ext(words, -1, text_width);
	text_y_start = text_y;
	most_recent_ystart = text_y_start;
	text_increment = global.textIncrementStd;
	scroll_timer = 10;
//	// I have no idea why this is needed, but the text won't scroll far enough without it
//	text_scroll_extra = 200 * text_scale;
	window_height = window_get_height();
	textOffscreen = text_height - window_height + text_y;
	
// old cargo cult formula
//	text_max_scroll = text_y_start - (text_height * text_scale) + (text_increment * text_scale * 4);

// sweet new formula
	text_max_scroll = text_y_start - textOffscreen - text_increment * 4;

	dn_timer = 0;
	up_timer = 0;

	scrollRefY = 0;
}


if(keyboard_check(vk_up)) {
	if(up_timer <= 0) {
		if(text_y < text_y_start) {
			text_y += text_increment;
		}
		up_timer = scroll_timer;
	}

	up_timer -= 1;
}

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
if(keyboard_check_released(vk_up)) {
	up_timer = 0;
}

if(keyboard_check_pressed(ord("1"))) DNewX = get_string_async("new text X", "0");
if(keyboard_check_pressed(ord("2"))) DNewY = get_string_async("new text Y", "0");
if(keyboard_check_pressed(ord("3"))) DNewW = get_string_async("new text wrap", "200");
