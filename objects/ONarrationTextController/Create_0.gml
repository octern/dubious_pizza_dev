/// @description Insert description here
// You can write your code in this editor

source_string = narrationGet(global.storyString);
titlesSet = false;

if(global.roomType = "room") {
	global.cinematic = true;
} else {
	clearInventoryUI();
}

/*
1. Create the blocks
2. For each block, use width of textbg
3. Figure out text height
4. Move textbg y to screen midpoint - height/2
5. Fade in the text 
6. on tap fade out the text
otherwise behave as normal
*/

// this controls the creation and display of inv text boxes.

// we use a dummy sprite for the room editor, but in practice this should be invisible
image_speed = 0;
sprite_index = SNothing;

if(!variable_instance_exists(id, "source_string")) {source_string = "undefined text?!"};

textArea = instance_find(OTextAreaBG, 0)
textArea.image_index = 2;
target_width = textArea.sprite_width * .99;

textBlocks = textParse(source_string);
textBlocki = 0;

// set to true for help debugging text positioning
pixelsTest = global.pixelsTest;


text_alpha = 0;
fadingIn = true;
fadingOut = false;
fadeInDone = false;
fadeOutDone = false;
fadeSpeed = 3;
fadeStep = 1 / room_speed * fadeSpeed
segmentInit = false;
textFinished = false;

// properties of text background box to use if this is an overlay on a room 
textbg_color=c_gray;
textbg_end_alpha = .6
textbg_fadein_sec = 1;
textbg_fadein = room_speed/textbg_fadein_sec;
textbg_alpha_step = textbg_end_alpha / textbg_fadein;
textbg_alpha = 0;
textbg_height = window_get_height();
textbg_width = window_get_width();



with(instance_find(OInvCloseupClose, 0)) {
	sprite_index = SNothing;
}
