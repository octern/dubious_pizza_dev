// put a bottle in a table slot

if (live_call()) return live_result;

if(!clickActive(mouse_x, mouse_y, true, OItem, true)) exit;

show_debug_message("click is active");

_item = global.activeItem;
if(_item==0) exit;

show_debug_message("there's an item");

itemObj = global.itemDefinitions[_item, itemProperty.object];

itemSetQuant(_item, -1);
generateItemOnTable(itemObj, id);
tableSlotSave(itemObj, id);

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