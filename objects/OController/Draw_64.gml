/// @description Insert description here
// You can write your code in this editor


if(debug_timer>0) {
	oldalpha = draw_get_alpha();
	draw_set_alpha(debug_timer / debug_timer_setting);
	draw_rectangle_color(0,0,64,64,c_yellow, c_gray, c_yellow, c_gray, false);
	draw_set_alpha(oldalpha);
}
if(global.pixelsTest) {
//	origFont = draw_get_font();
//	draw_set_font(FDebug);
	for(testy=0; testy<2000; testy+=50) {
		for(testx=0; testx<2000; testx+=50) {
			coord=string(testx) + ", " + string(testy);
			draw_text_transformed_color(testx, testy, coord, .4, .4, 0, c_fuchsia, c_yellow, c_white, c_green, 1);
		}
	}
}
