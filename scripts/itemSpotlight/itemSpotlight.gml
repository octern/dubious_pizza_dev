_obj = argument0;
_blend = argument1;

_lightw = sprite_get_width(SSpotlight);
_lighth = sprite_get_height(SSpotlight);
_margin = .1;

with(_obj) {
	_w = sprite_get_width(sprite_index);
	_h = sprite_get_height(sprite_index);
	_lightFactor = max(_w/_lightw, _h/_lighth)*(1+_margin)
	draw_sprite_ext(SSpotlight, 0, x-_margin*_lightw, y-_margin*_lightw, 
		_lightFactor, _lightFactor, 0, _blend, .5);
}