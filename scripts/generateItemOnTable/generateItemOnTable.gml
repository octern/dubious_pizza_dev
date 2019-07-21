itemObj = argument[0];
tableSlotActive = argument[1];
_debug = false;


with(tableSlotActive) {
	tableInst = instance_create_layer(x,y,"bottles",istemObj);
	if ( instance_exists(tableInst) ) show_debug_message("Item Exists");
	tableInst.tableSlot = id;
	contents = itemObj;

	if(_debug) {
		show_debug_message("generateItemOnTable info");
		show_debug_message(string(itemObj));
		show_debug_message(string(tableInst));
		show_debug_message(contents);
		show_debug_message(tableInst.sprite_index);
		show_debug_message(tableInst.iSprite);
		show_debug_message(tableInst.iItem);
		show_debug_message(tableInst.tableSlot);
	}
	tableInst.image_angle=0;
	yadj=0;
	xadj=0;
	if(itemObj == OBottleK || itemObj == OBottleR || itemObj == OBottleU || itemObj == OBottleY) {
		spriteScale(tableInst, 4);
	} else if (itemObj == OScrewdriver || itemObj == OTape || itemObj==OPoemC || itemObj==OPoemK || itemObj==OPoemR || itemObj==OPoemB) {
		spriteScale(tableInst, 1);
		yadj=10;
	} else {
		sprite_factor = 70/tableInst.sprite_width;
		spriteScale(tableInst, sprite_factor);		
	}
	tableInst.x=x + (sprite_width - tableInst.sprite_width)/2 + xadj;
	tableInst.y=y - tableInst.sprite_height + sprite_height*.75 + yadj;
}

