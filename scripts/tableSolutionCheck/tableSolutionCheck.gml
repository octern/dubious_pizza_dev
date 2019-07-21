solved = true;
bottleNum = 0;
for(slotnum=0;slotnum<instance_number(OTableSlot);slotnum++) {
	slot = instance_find(OTableSlot, slotnum);
	show_debug_message("slot " + string(slot.id) + ": contents are: " + object_get_name(slot.contents) + 
		"solution is: " + object_get_name(slot.solution));
	if(object_get_parent(slot.contents) == OBottle) bottleNum++;
	solved = solved && slot.contents == slot.solution;
	show_debug_message("solution status is: " + string(solved));
}
show_debug_message("bottleNum: " + string(bottleNum) + " / " + string(instance_number(OTableSlot)));
if(solved) {return "right";}
if(bottleNum==instance_number(OTableSlot)) {return "wrong";}
return "incomplete";