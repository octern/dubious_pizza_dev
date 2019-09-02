/// @description Insert description here
// You can write your code in this editor

if(!initialized) {
	initialized = true;
	textFormatSet("default");
	textW = string_width(buttonText);
	textH = string_height(buttonText);
	text_x = x + sprite_width/2 - textW/2;
	text_y = y + sprite_height/2 - textH/2;
}