/// @description Display an overlay showing a closeup and description of the item
// You can write your code in this editor


//InvCloseupDraw(itemInSlot);

global.closeupItem = itemInSlot;
global.closeupRoom = room;
room_goto(RInvCloseup);