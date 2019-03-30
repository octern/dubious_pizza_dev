itemObj = argument[0];
tableSlotActive = argument[1];

with(tableSlotActive) {
	tableInst = instance_create_depth(x,y,depth-1,itemObj);
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
	tableInst.image_xscale=1;
	tableInst.image_yscale=1;
	tableInst.x=x+10;
	tableInst.y=y+20;
}
