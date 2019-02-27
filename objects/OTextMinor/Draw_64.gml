/// @description Insert description here
// You can write your code in this editor


// if (live_call()) return live_result;

var text_x = x-sprite_width/2+30;
var text_y = y-sprite_height/2+15;

draw_text_ext_transformed_color(text_x, text_y, _string, -1, sprite_width*.8, 
	1,1, 0, 
	c_white, c_white, c_white, c_white, image_alpha);

//draw_text_ext_transformed_color(50, 700, item_string, -1, 300, 
//	3, 3, 0, 
//	c_blue, c_white, c_green, c_white, 1);


//show_debug_message("text here");