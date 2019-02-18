_color = argument[0];

if(_color == c_white || _color == c_black) {
	for(var i=0; i<instance_number(OPips); i++) {
		_pip = instance_find(OPips, i);
		_pip.image_index = sprite_get_number(_pip.sprite_index)-1;
	}
} else {
	colors=ds_list_create();
	ds_list_add(colors, c_yellow);
	ds_list_add(colors, c_purple);
	ds_list_add(colors, c_red);
	ds_list_add(colors, c_aqua);
	ds_list_add(colors, c_green);
	ds_list_add(colors, c_teal);

	_rem=ds_list_find_index(colors, _color);
	_base = ds_list_size(colors);

	for(i=0; i<instance_number(OPips); i++) {
		_pip = instance_find(OPips, i);
		_pip.image_index = i mod _base == _rem ? _pip.pip_index : sprite_get_number(_pip.sprite_index)-1;
	}
}
