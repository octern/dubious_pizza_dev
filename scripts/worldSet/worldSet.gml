/// @desc Change saved info about the world
/// @param key key
/// @param value new information

_key = argument0;
_val = argument1;

ds_map_replace(global.world, _key, _val);