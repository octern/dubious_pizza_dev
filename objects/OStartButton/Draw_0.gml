/// @description Insert description here
// You can write your code in this editor



draw_text_ext_transformed_color(titleX, titleY, titleText, -1 , -1, 2, 2, 0, c_yellow,  c_yellow,  c_yellow,  c_yellow, 1);

if(!point_in_rectangle(mouse_x, mouse_y, buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight)) {
	draw_rectangle_color(buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight, c_white,  c_white,  c_white,  c_white, true);
	draw_text_color(buttonX + string_width(buttonText)*.2, titleY + string_height(buttonText)*.2, buttonText, c_white, c_white, c_white, c_white, 1);
} else {
	draw_rectangle_color(buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight, c_white,  c_white,  c_white,  c_white, false);
	draw_text_color(buttonX + string_width(buttonText)*.2, titleY + string_height(buttonText)*.2, buttonText, c_red, c_red, c_red, c_red, 1);
}
