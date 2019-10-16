/// @description Insert description here
// You can write your code in this editor

if(!segmentInit) {
	textBlock = textBlocks[textBlocki];
	format = textBlock[0];
	wordsString = textBlock[1];
	words = playSoundFromWords(wordsString);

	textFormatSet(format);
	text_height = string_height_ext(words, -1, target_width);
	text_x = textArea.x;
	text_y = window_get_height() / 2 - text_height / 2;

// properties of text background box to use if this is an overlay on a room 
	textbg_height = window_get_height();
	textbg_width = window_get_width();

	segmentInit = true;
}

if(global.roomType = "room") {
	global.cinematic = true;
	if(textbg_alpha < textbg_end_alpha) {
		textbg_alpha = textbg_alpha + textbg_alpha_step;
		exit;
	}
}

if(fadingIn) {
	if(text_alpha>=1) {
		fadingIn=false;
		if(textBlocki < (array_length_1d(textBlocks) - 1)) {
			fadeInDone = true;
		} else {
// when last block of text has been displayed
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
	segmentInit = false;
}
		

if(mouse_check_button_released(mb_left) && fadeInDone) {
	if(textBlocki < (array_length_1d(textBlocks) - 1)) {
		fadeInDone = false;
		fadingOut = true;
	} else {
		textFinished = true;
	}
}

if(textFinished) {
	if(global.roomType = "room") {
		global.cinematic = false;
		words = " ";
		if(textbg_alpha > 0) {
			textbg_alpha = textbg_alpha - textbg_alpha_step;
		}
		if(textbg_alpha <=0) {
			instance_destroy(id);
		}
	}
}
