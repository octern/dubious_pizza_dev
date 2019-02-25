/// @description Insert description here
// You can write your code in this editor

if(!variable_global_exists("wireState")) {
	global.wireState = ds_map_create();
}

ds_map_replace(global.wireState, wireName, ds_map_create());

wireMapTemp = ds_map_create();

ds_map_replace(wireMapTemp, "wire_dir", wire_dir);
ds_map_replace(wireMapTemp, "broken",broken );
ds_map_replace(wireMapTemp, "taped",taped );
ds_map_replace(wireMapTemp, "broken_orig", broken_orig);
ds_map_replace(wireMapTemp, "wire_dir_orig", wire_dir_orig);
ds_map_replace(wireMapTemp, "joined_to", joined_to);

ds_map_replace(global.wireState, wireName, wireMapTemp);