/// @description Insert description here
// You can write your code in this editor


// // if (live_call()) return live_result;

text_scale = 1;

var text_x = x-sprite_width/2+30;
var text_y = y-sprite_height/2+30;
draw_text_ext_transformed_color(text_x, text_y, _string, -1, sprite_width*.8, 
	text_scale, text_scale, 0, 
	c_purple, c_blue, c_red, c_black, image_alpha);


/*
show_debug_message("my xy: "+string(x)+","+string(y));
show_debug_message("my xyoffset: "+string(sprite_get_xoffset(image_index))+","+string(sprite_get_yoffset(image_index)));
show_debug_message("text xy: "+string(text_x)+","+string(text_y));

