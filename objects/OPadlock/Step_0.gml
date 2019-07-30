/// @description Insert description here
// You can write your code in this editor
if(worldGet("toolbox")=="locked") {
	sol1=worldGet("screw1");
	sol2=worldGet("screw2");
	sol3=worldGet("screw3");
	sol4=worldGet("screw4");
	if(global.easyScrews) {
		sol1=worldGet("screw1_easy");
		sol2=worldGet("screw2_easy");
		sol3=worldGet("screw3_easy");
		sol4=worldGet("screw4_easy");
	}
	if(dial1.dial_value==sol1 && dial2.dial_value==sol2 && dial3.dial_value==sol3 && dial4.dial_value==sol4) {
		image_index=1;
		worldSet("toolbox", "unlocked");
		dial1.y+=30;
		dial2.y+=30;
		dial3.y+=30;
		dial4.y+=30;
	}
}