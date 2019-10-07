/// @description Insert description here
// You can write your code in this editor


draw_set_font(FGameTitle);

draw_text_ext_transformed_color(titleX, titleY, titleText, titleLineHeight*.7 , -1, titleFactor, titleFactor, 0, c_yellow,  c_yellow,  c_yellow,  c_yellow, 1);

if(!point_in_rectangle(mouse_x, mouse_y, buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight)) {
	draw_rectangle_color(buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight, c_white,  c_white,  c_white,  c_white, true);
	draw_text_color(buttonX + string_width(buttonText)*.2, buttonY + string_height(buttonText)*.2, buttonText, c_white, c_white, c_white, c_white, 1);
} else {
	draw_rectangle_color(buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight, c_white,  c_white,  c_white,  c_white, false);
	draw_text_color(buttonX + string_width(buttonText)*.2, buttonY + string_height(buttonText)*.2, buttonText, c_red, c_red, c_red, c_red, 1);
}

if(global.pixelsTest) {
	debText = "mouse_x " + string(mouse_x) + "\nmouse_y " + string(mouse_y) +
		 + "\ntitleX " + string(titleX) + "\ntitleY " + string(titleY) + "\nbuttonX " + string(buttonX) + "\nbuttonY " + string(buttonY) + "\nbuttonWidth " + string(buttonWidth) 
		 + "\nbuttonHeight " + string(buttonHeight) + "\ntitleWidth " + string(titleWidth) + "\nwindowWidth " + string(window_get_width()) + "\nwindowHeight " + string(window_get_height());
	draw_set_font(FDefault);
	draw_text(100,100,debText);
}

