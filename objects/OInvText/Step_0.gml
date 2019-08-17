/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if(!initialized) {

// instead of setting text to display on create, we let the inventory screen set them
// this way we can have different text in different boxes. 

// but if they weren't set, do the normal thing by default. 
	if(!variable_instance_exists(id, "item_string")) {
		item_string = global.itemDefinitions[global.closeupItem, itemProperty.description];
		item_obj = global.itemDefinitions[global.closeupItem, itemProperty.object];
		is_poem = object_is_ancestor(item_obj, OPoem);
	}
	initialized=true;
	text_x = x;
	text_y = y;
	if(is_poem) {
		text_scale = 1;
		text_tint = c_green;
	} else {
		text_scale = 1;
		text_tint = c_white;
	}
	text_y_start = text_y;
	text_increment = string_height("A");
	text_height = string_height(item_string);
	scroll_timer = 10;
	// I have no idea why this is needed, but the text won't scroll far enough without it
	text_scroll_extra = 200 * text_scale;

	text_max_scroll = text_y_start - (text_height * text_scale) + (text_increment * text_scale * 4);

	dn_timer = 0;
	up_timer = 0;

	scrollRefY = 0;
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