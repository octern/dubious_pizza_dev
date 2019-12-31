/// @description Don't forget to place this object in the first room!
if (instance_number(obj_gmlive) > 1) {
	var first = instance_find(obj_gmlive, 0);
	if (id != first) { instance_destroy(); exit; }
}
#macro live_enabled 1

// a workaround for a GM bug where extension doesn't initialize in debug mode:
if (!variable_global_exists("g_live_log_script")) live_preinit();

// change IP/port here if you connect to remote gmlive-server:
live_init(1, "http://localhost:5100", "");


// just a little lark to allow us to see this in the room editor
sprite_index = SNothing;

live_blank_object = OLiveBlank;
live_blank_room = RLiveBlank;
live_room_updated = liveRoomUpdated;
//room_set_live(ROne, true);
//room_set_live(RTwo, true);
// room_set_live(RThree, true);
//room_set_live(RFour, true);
room_set_live(RTutorialIndie, true);