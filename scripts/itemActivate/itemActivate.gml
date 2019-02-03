var itemQuant = itemGetQuant(itemInSlot);
if(itemQuant > 0) {
// deactivate all items, then activate this one. 
	for(var i = 0; i < MAX_INV_ITEMS; i++) {	
		var _invslot = instance_find(OInvSlot, i);
		_invslot.image_index = 0;
	}
	image_index = 1;
	global.activeItem = itemInSlot;
}