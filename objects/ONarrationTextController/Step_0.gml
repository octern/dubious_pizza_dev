/// @description Insert description here
// You can write your code in this editor

textBlock = textBlocks[textBlocki];
format = textBlock[0];
words = textBlock[1];

textFormatSet(format);
text_height = string_height_ext(words, -1, target_width);
text_x = textArea.x;
text_y = window_get_height() / 2 - text_height / 2;


if(fadingIn) {
	if(text_alpha>=1) {
		fadingIn=false;
		if(textBlocki < (array_length_1d(textBlocks) - 1)) {
			fadeInDone = true;
		} else {
			with(instance_find(OInvCloseupClose, 0)) {
				sprite_index = SInvCloseupClose;
				y = other.text_y + other.text_height + 10;
				x = other.text_x + other.target_width - sprite_width * .75;
			}
		}
	} else {
		text_alpha = min(text_alpha + fadeStep, 1);
	}
}

if(fadingOut) {
	if(text_alpha<=0) {
		fadingOut=false;
		fadeOutDone = true;
	}
	else text_alpha = max(text_alpha - fadeStep, 0);
}

if(fadeOutDone) {
	textBlocki ++;
	fadeInDone = false;
	fadeOutDone = false;
	fadingIn = true;
}
		

if(mouse_check_button_released(mb_left) && fadeInDone) {
	if(textBlocki < (array_length_1d(textBlocks) - 1)) {
		fadeInDone = false;
		fadingOut = true;
	}
}