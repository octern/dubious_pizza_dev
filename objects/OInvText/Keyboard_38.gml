/// @description Insert description here
// You can write your code in this editor

if(up_timer <= 0) {
	if(text_y < text_y_start) {
		text_y += text_increment;
	}
	up_timer = scroll_timer;
}

up_timer -= 1;