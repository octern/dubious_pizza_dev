/// @description Insert description here
// You can write your code in this editor


instance_activate_object(OInvSlot);
instance_activate_object(OInvMag);
instance_activate_object(OInvMemory);
instance_activate_object(OMenuButton);

if(global.roomType == "text") {
	nextRoom = postTextDestination();
	room_goto(nextRoom);
}