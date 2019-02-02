/// @desc put an item into its inventory slot
/// @param item item index

var _item = argument0;
var slotNum = global.itemDefinitions[_item, itemProperty.invSlot];
var slotInstance = -1;

/*
var i;
for (i = 0; i < instance_number(oInvSlot); i += 1) {
	if(instance_find(oInvSlot, i).slotNum == slotNum) {
		slotInstance = instance_find(oInvSlot, i);
	}
}
*/

global.itemDefinitions[_item, itemProperty.quant] = global.itemDefinitions[_item, itemProperty.quant] + 1;

instance_destroy();