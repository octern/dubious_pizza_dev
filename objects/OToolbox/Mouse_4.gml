	/// @description Insert description here
// You can write your code in this editor

if(!clickActive(mouse_x, mouse_y, true, OPadlock, true, false)) {
	exit;
}

if(worldGet("toolbox") == "locked") {
	textRoomMinor(stringGet("toolboxLocked"));
} else {
	textRoomMinor(stringGet("toolboxOpen"));	
}