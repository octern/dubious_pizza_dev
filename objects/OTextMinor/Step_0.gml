/// @description Insert description here
// You can write your code in this editor
if(!initialized) {
	text_height = string_height_ext(_string, -1, sprite_width*.8);
	image_yscale = text_height / sprite_height * 1.2;
	initialized = true;
}

