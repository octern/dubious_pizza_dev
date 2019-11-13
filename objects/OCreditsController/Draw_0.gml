/// @description Insert description here
// You can write your code in this editor

draw_set_font(FGameTitle);
draw_text_ext_transformed_color(titleX, titleY, titleText, titleLineHeight*.7 , -1, titleFactor, titleFactor, 0, c_yellow,  c_yellow,  c_yellow,  c_yellow, 1);

draw_set_halign(fa_center);
draw_text_ext_transformed_color(subTitleMidX, subTitleY, subTitleText, subTitleLineHeight*.7 , -1, subTitleFactor, subTitleFactor, 0, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, 1);
draw_set_halign(fa_left);

draw_set_font(FTitle);

for(i=0; i<instance_number(OTextAreaBG); i++) {
	with(instance_find(OTextAreaBG, i)) {
		originMidX = x + sprite_width / 2;
		words = global.credits[other.i];
		draw_set_halign(fa_center);
		draw_text_ext_transformed_color(originMidX, y, words, -1, sprite_width, 1, 1, 0, c_white,  c_white,  c_white,  c_white, 1);
		draw_set_halign(fa_left);
	}
}

draw_set_font(FDefault);