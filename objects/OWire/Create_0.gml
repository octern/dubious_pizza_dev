/// @description Insert description here
// You can write your code in this editor
ini=false;
wireName="wire_" + string(x) + "_" + string(y);
if(!variable_global_exists("wireState")) {
	global.wire1 = 0;
	wire_dir_orig = wire_dir;
	broken_orig = broken;
	joined_to = 0;
} else {
	wireMap = ds_map_find_value(global.wireState, wireName);
	wire_dir = ds_map_find_value(wireMap, "wire_dir");
	broken = ds_map_find_value(wireMap, "broken");
	taped = ds_map_find_value(wireMap, "taped");
	broken_orig = ds_map_find_value(wireMap, "broken_orig");
	wire_dir_orig = ds_map_find_value(wireMap, "wire_dir_orig");
	joined_to = ds_map_find_value(wireMap, "joined_to");
}