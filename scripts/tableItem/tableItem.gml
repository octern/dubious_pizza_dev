// put a bottle in a table slot

// if (live_call()) return live_result;

if(worldGet("table")=="open") return false;

if(!clickActive(mouse_x, mouse_y, true, OBottle, true)) {
	show_debug_message("I'm clicking another bottle, so I shouldn't be putting this down.");
	exit;
}
if(!clickActive(mouse_x, mouse_y, true, OItem, true)) {
	show_debug_message("I'm clicking something else, so I shouldn't be putting this down.");
	exit;
}
if(contents!=-1) {
	show_debug_message("there's already an item there. I should take it.");
	exit;
}

show_debug_message("click is active");

_item = global.activeItem;
if(_item==0) exit;

show_debug_message("there's an item");

itemObj = global.itemDefinitions[_item, itemProperty.object];
show_debug_message("attempting to put item " + string(_item) + "on table. I have " + string(itemGetQuant(_item)) + " of it.");
if(itemGetQuant(_item) <= 0) {
	show_debug_message("attempted to put an item on the table that I do not have");
	return false;
}
// itemSetQuant(_item, -1); // old method of recording item location. New method happens inside generateItemOnTable

itemSetQuant(_item, itemGetQuant(_item)-1);
itemSetLoc(_item, "table");

//generateItemOnTable(itemObj, id);
tableSlotSave(itemObj, id);

if(itemObj == OBottleY || itemObj == OBottleK || itemObj == OBottleU || itemObj == OBottleR) {	
	if(tableSolutionCheck()) {
		worldSet("table", "open");
		instance_activate_object(OKey);
		tableobj = instance_find(OTable, 0);
		tableobj.image_index=1;
	} else {
		textRoomMinor("I put the bottle into the recess in the table.");
	}
} else {
	textRoomMinor(stringGet("tableSlotWrong"));
}

/*
check if clickactive
check if bottle already in slot
instantiate bottle at coords that put it over the slot (trial and error)
set inventory for bottle to 0
set variables for slot: bottle type and ID of bottle
set variable for bottle: associated slot
check if every slot has a bottle attached
check for solution

add to OItem:
variable for tableslot
when picked up, check whether there's anything in tableslot. 
If so, go to that object and set bottletype and ID of bottle to zero
*/