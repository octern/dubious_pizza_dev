/// @description Insert description here
// You can write your code in this editor

// // if (live_call()) return live_result;

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
