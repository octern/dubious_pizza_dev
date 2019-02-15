/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

instance_deactivate_object(OInvSlot);
instance_deactivate_object(OInvMemory);
instance_deactivate_object(OInvMag);
item_string = global.itemDefinitions[global.closeupItem, itemProperty.description];

