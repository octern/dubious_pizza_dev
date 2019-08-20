/// @description Insert description here
// You can write your code in this editor

dID = ds_map_find_value(async_load, "id")
if(ds_map_find_value(async_load, "status")) {
	newVal = round(real(ds_map_find_value(async_load, "result")));
	if(newVal > 1) {
		switch(dID) {
			case DNewX:
				text_x = newVal;
				break;
			case DNewY:
				text_y = newVal;
				text_y_start = text_y;
				text_height = string_height(words);
				text_max_scroll = text_y_start - (text_height * text_scale) + (text_increment * text_scale * 4);
				scrollRefY = 0;
				break;
			case DNewW:
				textWidth = newVal;
				break;
		}
	}
}