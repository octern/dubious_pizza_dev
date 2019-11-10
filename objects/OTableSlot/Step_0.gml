/// @description Insert description here
// You can write your code in this editor
tableInit();

if(bottleResultTimer >= 0) {
	bottleResultTimer--;
	if(bottleResultTimer == 0)  {
		for(ibottle = 0; ibottle < instance_number(OBottle); ibottle++) {
			with(instance_find(OBottle, ibottle)) {
				// image_blend = c_white;
				image_index = 0;
			}
		}
		global.cinematic = false;
		audio_group_set_gain(audio_bgm, global.volume_bgm, 1000);
		if(res=="right") {
			worldSet("table", "open");
			instance_activate_object(OKey);
			tableobj = instance_find(OTable, 0);
			tableobj.image_index=1;
			audio_play_sound(ALog, 1, false);
			textRoomMinor(stringGet("tableSlotBottleRight"));
		}
		if(res=="wrong") {
			audio_play_sound(ATableClick, 1, false);
			textRoomMinor(stringGet("tableSlotBottleWrong"));
		}
	}			
}

