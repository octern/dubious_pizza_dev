if(global.dialogString == "opening_narration") {
	global.dialogString = "gap_year";
	nextRoom = RDialog;
} 
else {
	nextRoom = global.closeupRoom;
}

return nextRoom;