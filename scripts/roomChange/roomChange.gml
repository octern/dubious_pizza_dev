roomAdd=argument0;
currentRoom = room;

roomSequence = [ROne, RTwo, RThree, RFour];
global.roomParents[RWires] = RTwo;

if(roomAdd==1 || roomAdd==-1) {
	roomLen=array_length_1d(roomSequence);
	roomIndex=arrayFind(currentRoom, roomSequence);
	if(roomIndex==-1) show_error("room " + currentRoom + " not in sequence, can't move!", true)
	newIndex = roomIndex + roomAdd;
	if(newIndex<0) newIndex = roomLen-1;
	if(newIndex >= roomLen) newIndex = 0;
	var newRoom = roomSequence[newIndex];
} else if(roomAdd=="dn") {
	var newRoom = global.roomParents[currentRoom];
}
		

room_goto(newRoom);
