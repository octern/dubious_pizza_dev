/// @description Insert description here
// You can write your code in this editor

_r=worldGet("wireR");
_b=worldGet("wireB");
_g=worldGet("wireG");

_a = .5;
if( _r &&  _b &&  _g) {light_color=c_white; worldSet("lightColor", "Bright white");}
if( _r && !_b &&  _g) {light_color=c_yellow; worldSet("lightColor", "Yellow");}
if( _r &&  _b && !_g) {light_color=c_purple; worldSet("lightColor", "Purple");}
if( _r && !_b && !_g) {light_color=c_red; worldSet("lightColor", "Red");}
if(!_r &&  _b &&  _g) {light_color=c_aqua; worldSet("lightColor", "Aquamarine");}
if(!_r && !_b &&  _g) {light_color=c_green; worldSet("lightColor", "Green");}
if(!_r &&  _b && !_g) {light_color=c_teal; worldSet("lightColor", "Blue");}
if(!_r && !_b && !_g) {light_color=c_black;  worldSet("lightColor", "Black");}

pipsLight(light_color);

if(_r || _b || _g) {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, light_color, _a);
	for(var i=0; i<instance_number(OPips); i++) {
		_pip = instance_find(OPips, i);
		_pip.image_blend=light_color;
	}
}