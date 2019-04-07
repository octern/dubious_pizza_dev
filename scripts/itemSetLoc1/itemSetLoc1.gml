/// @description record that an item is in a room
/// @param item index
/// @param room resource

_item = argument0;
_loc = argument1;
var _key = "loc_" + string(global.itemDefinitions[_item, itemProperty.name]);
worldSet(_key, _loc);
