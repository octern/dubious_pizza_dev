	/// @description Insert description here
// You can write your code in this editor

// // if (live_call()) return live_result; 

if (!clickActive(mouse_x, mouse_y, false, noone, true, false)) { exit; }

if(worldGet("scarydoor")=="locked") {
	if(global.activeItem!=itemType.key) {
		_textKey = "doorScary";
		textRoomMinor(ds_map_find_value(global.roomStrings, _textKey));
		return false;
	} else {
		worldSet("scarydoor", "unlocked");
		_textKey = "doorScaryUnlock";
		image_index=1;
		textRoomMinor(ds_map_find_value(global.roomStrings, _textKey));
		return true;
	}
} else if(worldGet("scarydoor")=="unlocked") {
	worldSet("scarydoor", "open");
	image_index=2;
	instance_activate_object(endNav);
	return true;
}
