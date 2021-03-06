/// @description Insert description here
// You can write your code in this editor

if(!segmentInit) {
	textBlock = textBlocks[textBlocki];
	format = textBlock[0];
	wordsString = textBlock[1];
	words = playSoundFromWords(wordsString);

	textFormatSet(format);
	text_height = string_height_ext(words, -1, target_width);
	text_x = textArea.x;
	text_y = window_get_height() / 2 - text_height / 2;

// properties of text background box to use if this is an overlay on a room 
	textbg_height = window_get_height();
	textbg_width = window_get_width();

	segmentInit = true;
}


if(global.roomType = "room") {
	if(textbg_alpha > 0) {
		prior_alpha = draw_get_alpha();
		draw_set_alpha(textbg_alpha);
		draw_rectangle_color(0,0,textbg_width, textbg_height, textbg_color, textbg_color, textbg_color, textbg_color, false);
		draw_set_alpha(prior_alpha)
	}
}

textFormatSet(format)
draw_text_ext_color(text_x, text_y, words, -1, target_width, text_tint, text_tint, text_tint, text_tint, text_alpha);
