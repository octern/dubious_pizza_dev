/// @description put an item into its inventory slot
/// @param item item index

var _item = argument0;

itemNarrCheck(_item.iItem);

with(_item) {
	itemSetQuant(iItem, itemGetQuant(iItem)+1);
	if(itemGetLoc(iItem) == "origin") {audio_play_sound(APickup, 0, false);}
	itemSetLoc(iItem, "inv");
	instance_destroy();
	if(tableSlot>0) {with(tableSlot) {contents=-1; tableInst=0;}}
}


/* old version
var slotNum = global.itemDefinitions[_item, itemProperty.invSlot];
var slotInstance = -1;

var i;
for (i = 0; i < instance_number(oInvSlot); i += 1) {
	if(instance_find(oInvSlot, i).slotNum == slotNum) {
		slotInstance = instance_find(oInvSlot, i);
	}
}

itemSetQuant(_item, itemGetQuant(_item)+1);
// global.itemDefinitions[_item, itemProperty.quant] = global.itemDefinitions[_item, itemProperty.quant] + 1;

// if it was picked up off the table, set the corresponding slot's contents to 0
if(tableSlot>0) {with(tableSlot) {contents=-1; tableInst=0;}}


instance_destroy();