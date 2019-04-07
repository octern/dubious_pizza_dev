itemObj = argument[0];
tableSlotActive = argument[1];



with(tableSlotActive) {
	tableInst = instance_create_depth(x,y,depth-1,itemObj);
	if ( instance_exists(tableInst) ) show_debug_message("Item Exists");
	tableInst.tableSlot = id;
	contents = itemObj;

	show_debug_message("generateItemOnTable info");
	show_debug_message(string(itemObj));
	show_debug_message(string(tableInst));
	show_debug_message(contents);
	show_debug_message(tableInst.sprite_index);
	show_debug_message(tableInst.iSprite);
	show_debug_message(tableInst.iItem);
	show_debug_message(tableInst.tableSlot);

	tableInst.image_angle=0;
	sprite_factor = 60/tableInst.sprite_width;
	spriteScale(tableInst, sprite_factor);
	tableInst.x=x+10;
	tableInst.y=y+20;
}

if(itemObj == OBottleY || itemObj == OBottleK || itemObj == OBottleU || itemObj == OBottleR) {	
	textRoomMinor("I put the bottle into the recess in the table.");
} else {
	textRoomMinor(stringGet("tableSlotWrong"));
}