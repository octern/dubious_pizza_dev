/// @description Insert description here
// You can write your code in this editor


if(global.pixelsTest) {
//	origFont = draw_get_font();
//	draw_set_font(FDebug);
	for(testy=0; testy<2000; testy+=50) {
		for(testx=0; testx<2000; testx+=50) {
			coord=string(testx) + ", " + string(testy);
			draw_text_transformed_color(testx, testy, coord, .25, .25, 0, c_fuchsia, c_yellow, c_white, c_green, 1);
		}
	}
}
show_debug_message("hi");
if(debug_timer>0) {
	show_debug_message("debug timer " + string(debug_timer));
	draw_rectangle_color(0,0,100,100,c_yellow, c_gray, c_yellow, c_gray, false);
	draw_rectangle_color(0,0,100,100,c_yellow, c_blue, c_yellow, c_blue, true);
}