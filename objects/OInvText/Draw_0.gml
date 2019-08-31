/// @description Insert description here
// You can write your code in this editor

textFormatSet(format);
_text_x = text_x;
_text_y = text_y;
if(bubble_align == "left") {_text_x = _text_x + marginL;}
if(bubble_align == "right") {_text_x = _text_x + bubble_jitter;}
if(is_dialog) {
	scaleY = (text_height + 2*dialogMarginY) / sprite_get_height(dialog_bg);
	scaleX = (text_width + 2*dialogMarginX) / sprite_get_width(dialog_bg);
	draw_sprite_ext(dialog_bg, 0, _text_x, _text_y, scaleX, scaleY, 0, bg_tint, .9);
}
text_words_x = _text_x + dialogMarginX;
text_words_y = _text_y + dialogMarginY;

draw_text_ext_transformed_color(text_words_x, text_words_y, words, -1, text_width, 
	text_scale,text_scale, 0, 
	text_base, text_base, text_tint, text_base, 1);
textFormatSet();