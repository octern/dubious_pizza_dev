// // if (live_call(argument[0], argument[1])) return live_result;


var itemToSet = argument[0];
var itemSlot = argument[1];

if(itemToSet > 0){
// deactivate all items, then activate this one. 
	var itemQuant = itemGetQuant(itemToSet);
	for(var i = 0; i < MAX_INV_ITEMS; i++) {	
		var _invslot = instance_find(OInvSlot, i);
		_invslot.image_index = 0;
	}
	itemSlot.image_index = 1;
	global.activeItem = itemInSlot;
	if(itemQuant == 0) {
		global.activeItem = 0;
	}
}


if(itemToSet == 0){
// deactivate all items
	for(var i = 0; i < MAX_INV_ITEMS; i++) {	
		var _invslot = instance_find(OInvSlot, i);
		_invslot.image_index = 0;
	}
	global.activeItem = 0;
}
