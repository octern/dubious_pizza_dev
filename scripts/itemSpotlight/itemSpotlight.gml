_obj = argument0;

_lightw = sprite_get_width(SSpotlight);
_lighth = sprite_get_height(SSpotlight);
_margin = .3;

with(_obj) {
	_w = sprite_get_width(sprite_index) * image_xscale;
	_h = sprite_get_height(sprite_index) * image_yscale;
	_lightFactor = max(_w/_lightw, _h/_lighth)*(1+_margin)
	_light=instance_create_layer(x-_margin*_lightw, y-_margin*_lightw, "spotlight", OSpotlight);
	_light.image_xscale = _lightFactor;
	_light.image_yscale = _lightFactor;
}