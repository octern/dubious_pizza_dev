/// @description Insert description here
// You can write your code in this editor

source_string = dialogGet(global.dialogString);
source_title = dialogTitleGet(global.dialogString);
textDetailsObj = ODialogDetails;


event_inherited();

text_block_index = 1;
with(textObjects[0]) {
	yBeingSet = true;
	text_y = other.textArea.y + other.textArea.sprite_height - text_height;
	most_recent_ystart = text_y;
}
for(i=text_block_index;i<array_length_1d(textObjects);i++) {
	instance_deactivate_object(textObjects[i].id);
}

instance_deactivate_object(OInvCloseupClose);

