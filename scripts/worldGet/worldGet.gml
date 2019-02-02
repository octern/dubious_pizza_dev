/// @desc Change saved info about the world
/// @param key key
/// @param value new information

_key = argument0;

_val = ds_map_find_value(global.world, _key);
if(is_undefined(_val)) {
	show_message("attempted to access nonexistent world property " + _key);
}
return(_val);