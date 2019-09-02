/// @description Insert description here
// You can write your code in this editor

draw_self();
if(mouse_present) {
	use_color = text_tint_active;
} else {
	use_color = text_tint;
}
draw_text_color(text_x, text_y, buttonText, use_color, use_color, use_color, use_color,  1);
	
