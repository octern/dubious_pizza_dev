/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result; 

if (!clickActive(mouse_x, mouse_y, false, noone, true, false)) { exit; }

_textKey = "doorFront";
textRoomMinor(textGet(_textKey));
