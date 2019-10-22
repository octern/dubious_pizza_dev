var newroom = argument0;

global.storyString = "";

if(newroom==RTwo) {
	global.storyString = "RTwo";
}

roomShown = arrayFind(newroom, global.roomIntrosShown) != -1;

if(!roomShown) {
	if (global.storyString != "") {
		overlaidNarrShow();
		append(global.roomIntrosShown, newroom);
	}
}