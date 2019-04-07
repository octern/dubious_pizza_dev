/// @description check what room an item is supposed to be in
/// @param item index
/// @param room resource

// TODO: If you ever want multiple instances of the same item, you could make this an array of rooms.
// if it ever gets more complicated than that, we probably need to do something like save room state explicitly

_item = argument0;
var _key = "loc_" + string(global.itemDefinitions[_item, itemProperty.name]);
return worldGet(_key);