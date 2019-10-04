
if(!instance_exists(OController)) {
	instance_create_layer(0, 0, "Instances", OController);
}
controllerInst = instance_find(OController, 0);

if(room==room0) {
	global.closeupRoom = ROne;
	room_goto(RStart);
	exit;
}

roomSetup();

/*
var _randItems = irandom_range(2,8);

for(i=0;i<_randItems;i++) {
	createRandomItem();
}