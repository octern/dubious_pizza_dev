/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;

//_string = "hi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\n";
//_string = "hi";

y=400;

//if(!initialized) {
	textFormatSet("desc");
	text_height = string_height_ext(_string, -1, sprite_width*.8);
	image_yscale = (text_height + 18) / sprite_get_height(sprite_index) * 1.4;
	initialized = true;
//}

// show_debug_message("hi live!");