/// use this script to remove all inventory UI stuff from non-game screens (dialog, etc)

if(argument_count > 0) {
	if(!argument[0]) {
		show_debug_message("reactivating inventory")
		instance_activate_object(OInvSlot);
		instance_activate_object(OInvMemory);
		instance_activate_object(OMenuButton);
		instance_activate_object(OInvMag);
		return true;
	}
}

show_debug_message("deactivating inventory")
global.showInv = false;

/*
instance_deactivate_object(OInvSlot);
instance_deactivate_object(OInvMemory);
instance_deactivate_object(OMenuButton);
instance_deactivate_object(OInvMag);
