solved = true;
for(slotnum=0;slotnum<instance_number(OTableSlot);slotnum++) {
	slot = instance_find(OTableSlot, slotnum);
	show_debug_message("slot " + string(slot.id) + ": contents are: " + object_get_name(slot.contents) + 
		"solution is: " + object_get_name(slot.solution));
	solved = solved && slot.contents == slot.solution;
	show_debug_message("solution status is: " + string(solved));
}
return solved;