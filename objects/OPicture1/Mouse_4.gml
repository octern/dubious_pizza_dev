/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

if(worldGet("painting")=="open") exit;

var corner = itemCornerNudge();
if(corner != 0) {
	nudged = 15;
//	if(ds_queue_size(corners) == ds_queue_size(solution)) ds_queue_dequeue(corners);
//	ds_queue_enqueue(corners, corner);
//	corners_s = ds_queue_write(corners);
//	solution_s = ds_queue_write(solution);
// are the two queues equal?
//	if(corners_s==solution_s) {
	ds_list_add(corners, corner);
	picture1Solved=true;
	if(ds_list_size(corners) >= ds_list_size(solution)) {
		cornerStart = ds_list_size(corners) - ds_list_size(solution);
		for(var i = 0; i < ds_list_size(solution); i++) {
			if(corners[| cornerStart + i] != solution[| i]) {
				picture1Solved = false;
				break;
			}
		}
	} else {picture1Solved=false;}
	if(picture1Solved) {
		worldSet("painting", "open");
	}
	if(worldGet("painting") == "open") {
		x+=10;
		y+=30;
	} else {
		if(corner=="tl" || corner=="br") image_angle=4;
		if(corner=="tr" || corner=="bl") image_angle=356;
	}
}
	
