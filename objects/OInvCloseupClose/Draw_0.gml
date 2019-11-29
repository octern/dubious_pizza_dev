/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result; 


oldAlpha = draw_get_alpha();
draw_set_alpha(spriteAlpha);
draw_self();
draw_set_alpha(oldAlpha);