/// @desc create a random item

var _controllerInst = instance_find(OController, 0);

var inst;
var _itemType = irandom_range(1,itemType.len-1);
var newX = irandom_range(70, global.inv_edge - 128);
var newY = irandom_range(70, room_height-70);


inst = instance_create_layer(newX, newY, "Instances", OItem);

_deb = global.itemDefinitions;

with (inst) {
	typeOfItem=_itemType;
	nameOfItem=global.itemDefinitions[_itemType,itemProperty.name];
	sprite_index = global.itemDefinitions[_itemType,itemProperty.sprite];
	image_yscale=.8;
	image_xscale=.8;
}