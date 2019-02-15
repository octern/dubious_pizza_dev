/// @description Insert description here
// You can write your code in this editor

_r=worldGet("wireR");
_b=worldGet("wireB");
_g=worldGet("wireG");

_a = .5;
if( _r &&  _b &&  _g) {light_color=c_white;}
if( _r && !_b &&  _g) {light_color=c_yellow;}
if( _r &&  _b && !_g) {light_color=c_purple;}
if( _r && !_b && !_g) {light_color=c_red;}
if(!_r &&  _b &&  _g) {light_color=c_aqua;}
if(!_r && !_b &&  _g) {light_color=c_green;}
if(!_r &&  _b && !_g) {light_color=c_teal;}
if(!_r && !_b && !_g) {light_color=c_black; }

if(_r || _b || _g) {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, light_color, _a);
}