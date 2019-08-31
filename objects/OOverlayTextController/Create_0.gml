// this controls the creation and display of inv text boxes.

// we use a dummy sprite for the room editor, but in practice this should be invisible
image_speed = 0;
sprite_index = SNothing;

if(!variable_instance_exists(id, "source_string")) {source_string = "undefined text?!"};

instance_deactivate_object(OInvSlot);
instance_deactivate_object(OInvMemory);
instance_deactivate_object(OInvMag);

textArea = instance_find(OTextAreaBG, 0)
target_width = textArea.sprite_width * .99;

item_textBlocks = textParse(source_string);

text_start_y = textArea.y;
text_start_x = textArea.x;

// set to true for help debugging text positioning
pixelsTest = global.pixelsTest;

for(i=0; i<array_length_1d(textBlocks); i++) {
	textBlock = item_textBlocks[i];
	format = textBlock[0];
	words = textBlock[1];

	invtext = instance_create_layer(text_start_x, text_start_y,"text",OInvText);
	if(pixelsTest) {text_start_x -= 20;}
	widthFactor = target_width / invtext.sprite_width

	invtext.image_xscale = widthFactor;
	invtext.words = words;
	invtext.item_obj = textDetailsObj;
	refobj = instance_create_depth(-100, -100, 0, invtext.item_obj);
	text_tint = refobj.text_tint;
	instance_deactivate_object(refobj.id);
	invtext.is_poem = object_is_ancestor(invtext.item_obj, OPoem);
	invtext.text_tint = text_tint;
//	if(invtext.is_poem) { invtext.text_tint = invtext.item_obj.text_tint; }
	invtext.format = format;
// The step event is where the text box sets font and determines its size.
// we manually run that now so that the next box can be positioned appropriately
	with(invtext) { event_perform(ev_step, 0); }
	text_height_returned = invtext.text_height;
	text_start_y = text_start_y + text_height_returned + invtext.between_texts_margin;

}


window_height = window_get_height();
textFinalBottom = text_start_y - invtext.between_texts_margin;
textMaxScrlAmt = textFinalBottom - window_height;
//textFinalBottom = bottom y coord of bottom block 
//textMaxScrlAmt = amount each piece of text should scroll up

for(i=0; i<array_length_1d(textBlocks); i++) {
	textO = instance_find(OInvText, i);
	thistext_ystart = textO.text_y_start;
	thistext_miny = thistext_ystart - textMaxScrlAmt;
	textO.text_max_scroll = thistext_miny - textO.text_increment * 8	;
}

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

