// this controls the creation and display of inv text boxes.

instance_deactivate_object(OInvSlot);
instance_deactivate_object(OInvMemory);
instance_deactivate_object(OInvMag);
item_string = global.itemDefinitions[global.closeupItem, itemProperty.description];
target_width = 380;

item_textBlocks = textParse(item_string);

/*show_debug_message("full array");
show_debug_message(string(item_textBlocks));
show_debug_message("first subarr");
show_debug_message(string(item_textBlocks[0]));
show_debug_message("first subarr extracted");
z = item_textBlocks[0];
show_debug_message(string(z));
/*
show_debug_message("first subarr first item");
zz = z[0];
show_debug_message(string(zz));
show_debug_message("first subarr first item first item");
zzz = zz[0];
show_debug_message(string(zzz));
show_debug_message("first item");
show_debug_message(string(item_textBlocks[0,0]));
*/

text_start_y = 127;
text_start_x = 613;

// set to true for help debugging text display issues
pixelsTest = true;

for(i=0; i<array_length_1d(textBlocks); i++) {
	textBlock = item_textBlocks[i];
	format = textBlock[0];
	words = textBlock[1];

	invtext = instance_create_depth(text_start_x, text_start_y,1,OInvText);
	if(pixelsTest) {text_start_x -= 60;}
	widthFactor = target_width / invtext.sprite_width

	invtext.image_xscale = widthFactor;
	invtext.words = words;
	invtext.item_obj = global.itemDefinitions[global.closeupItem, itemProperty.object];
	invtext.is_poem = object_is_ancestor(invtext.item_obj, OPoem);
	invtext.format = format;
// The step event is where the text box sets font and determines its size.
// we manually run that now so that the next box can be positioned appropriately
	with(invtext) { event_perform(ev_step, 0); }
	text_start_y = text_start_y + invtext.text_height + invtext.between_texts_margin;

}
