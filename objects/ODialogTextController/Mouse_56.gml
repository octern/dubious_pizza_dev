/// @description Insert description here
// You can write your code in this editor


// if the user appears to have been scrolling instead of clicking, don't run
if(
	(abs(mouse_press_y - mouse_y) > 10) ||
	(current_time - mouse_pressed_time > 1000)
) { exit; }

if(text_block_index < array_length_1d(textObjects)) {
	for(i=0; i<text_block_index; i++) {
		textObjects[i].text_y = textObjects[i].most_recent_ystart;
	}
	newText = textObjects[text_block_index];
	instance_activate_object(newText.id);
	newText.text_y = textArea.y + textArea.sprite_height - newText.text_height;
	newText.most_recent_ystart = newText.text_y;
	textFormatSet(newText.format);
	for(i=0; i<text_block_index; i++) {
		textObjects[i].text_y -= (newText.text_height + between_texts_margin);
		textObjects[i].most_recent_ystart = textObjects[i].text_y;
	}
	text_block_index++;
	if(text_block_index == array_length_1d(textObjects)) {scrollAllowed = true;}
}