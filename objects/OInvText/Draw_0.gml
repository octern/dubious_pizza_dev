/// @description Insert description here
// You can write your code in this editor

textFormatSet(format);
if(is_dialog) {
	scaleY = text_height / sprite_get_height(dialog_bg) * 1.05;
	scaleX = text_width / sprite_get_width(dialog_bg) * 1.05;
	draw_sprite_ext(dialog_bg, 0, text_x-5, text_y, scaleX, scaleY, 0, bg_tint, .9);
}
draw_text_ext_transformed_color(text_x,text_y, words, -1, text_width, 
	text_scale,text_scale, 0, 
	text_base, text_base, text_tint, text_base, 1);
textFormatSet();