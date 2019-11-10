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

// show_debug_message("click is active");

_item = global.activeItem;

if(_item==0) {
	textRoomMinor(textGet("tableSlot"));
	exit;
}

// show_debug_message("there's an item");

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
tableInit();

//if(itemObj == OBottleY || itemObj == OBottleK || itemObj == OBottleU || itemObj == OBottleR) {	
if(object_get_parent(itemObj)==OBottle) {
	res = tableSolutionCheck();
	if(res=="incomplete") {
		textRoomMinor(stringGet("tableSlotBottle"));
	} else {
		global.cinematic = true;
		audio_group_set_gain(audio_bgm, 0, 250);
		audio_play_sound(ATableClick, 0, false);
		bottleResultSeconds = 1;
		bottleResultTimer = bottleResultSeconds * room_speed;
		for(ibottle = 0; ibottle < instance_number(OBottle); ibottle++) {
			with(instance_find(OBottle, ibottle)) {
				// image_blend = c_yellow;
				image_index = 1;
			}
		}
	}
} else {
	textRoomMinor(stringGet("tableSlotWrong"));	
}		

/*

start cinematic
stop music
play click
light up bottles
start timer

in step when timer runs out:
	unlight bottles
	if wrong 
		play click. 
	If right
		play jingle 
		reveal key 
		worldSet("table", "open");		
	display message
	end cinematic
	
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