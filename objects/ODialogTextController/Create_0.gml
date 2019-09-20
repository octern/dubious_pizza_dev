/// @description Insert description here
// You can write your code in this editor

source_string = dialogGet(global.dialogString);
source_title = dialogTitleGet(global.dialogString);
textDetailsObj = ODialogDetails;
titlesSet = false;

arbitraryExtraTextPadding = 20;

event_inherited();

text_block_index = 1;
with(textObjects[0]) {
	yBeingSet = true;
	text_y = other.textArea.y + other.textArea.sprite_height - text_height - other.arbitraryExtraTextPadding;
	most_recent_ystart = text_y;
}
for(i=text_block_index;i<array_length_1d(textObjects);i++) {
	instance_deactivate_object(textObjects[i].id);
}

with(instance_find(OInvCloseupClose, 0)) {
	sprite_index = SNothing;
}

