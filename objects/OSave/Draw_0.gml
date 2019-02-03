/// @description Insert description here
// You can write your code in this editor

if(save_msg_alpha>0) {
	save_msg_alpha-=.005;
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(view_xport[0]+view_wport[0]/2, 
		view_yport[0]+view_hport[0]/2, "Saved",
		c_white, c_white, c_white, c_white, save_msg_alpha);
}

if(save_msg_showing==1) {
	if(save_msg_alpha2<1) {
		save_msg_alpha2+=.01;
	} else {
		save_msg_showing = 0;
	}
} else {
	if(save_msg_alpha2 > 0) {
		save_msg_alpha2 -= .01;
	}
}
if(save_msg_alpha2 > 0) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(view_xport[0]+view_wport[0]/2+50, 
		view_yport[0]+view_hport[0]/2+50, "Saved2",
		c_blue, c_white, c_blue, c_white, save_msg_alpha2);
}

draw_sprite(sprite_index, image_index, x, y);