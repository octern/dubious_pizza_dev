/// @description Insert description here
// You can write your code in this editor

draw_set_font(FGameTitle);
draw_set_halign(fa_center);
draw_text_ext_color(titleX, titleY, "end", -1, -1, c_yellow,  c_yellow,  c_yellow,  c_yellow, 1);
draw_set_halign(fa_left);
draw_set_font(FDefault);

draw_self();