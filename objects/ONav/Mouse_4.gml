/// @description Insert description here
// You can write your code in this editor

if(clickActive(x, y, false, noone, true)) {
	if(dest = ROne && worldGet("scarydoor")=="open") {
		winGame();
	} else {
		room_goto(dest)
	}
}
