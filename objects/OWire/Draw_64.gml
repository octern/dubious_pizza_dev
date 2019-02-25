/// @description Insert description here
// You can write your code in this editor
if(self == global.wire1) {
	draw_rectangle_color(x-1, y-1, x+sprite_width+1, y+sprite_height+1, c_gray, c_yellow, c_gray, c_gray, true);
}
draw_text_ext_transformed(x+4, y+4, string(id), -1, 4, .5, .5, 0
);