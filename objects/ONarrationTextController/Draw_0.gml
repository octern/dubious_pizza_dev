/// @description Insert description here
// You can write your code in this editor

if(global.roomType = "room") {
	prior_alpha = draw_get_alpha();
	draw_set_alpha(textbg_alpha);
	draw_rectangle_color(0,0,textbg_width, textbg_height, textbg_color, textbg_color, textbg_color, textbg_color, false);
	draw_set_alpha(prior_alpha)
}

textFormatSet(format)
draw_text_ext_color(text_x, text_y, words, -1, target_width, text_tint, text_tint, text_tint, text_tint, text_alpha);
