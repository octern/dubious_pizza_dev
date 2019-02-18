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
		for(var i=0; i<instance_number(OPips); i++) {
			_pip = instance_find(OPips, i)
			_pip.x+=10;
			_pip.y+=30;
		}
	} else {
		if(corner=="tl" || corner=="br") image_angle=4;
		if(corner=="tr" || corner=="bl") image_angle=356;
		for(i=0; i<instance_number(OPips); i++) {
			_pip = instance_find(OPips, i);
			_pip.nudgex = 0;
			_pip.nudgey = 0;
			switch (_pip.corner) {
				case "tl":
					_pip.nudgex = 5; _pip.nudgey = -5; break;
				case "tr":
					_pip.nudgex = 5; _pip.nudgey = -20; break;
				case "bl":
					_pip.nudgex = 18; _pip.nudgey = -5; break;
				case "br":
					_pip.nudgex = 20; _pip.nudgey = -20; break;
			}
			if(corner=="tr" || corner=="bl") {
				_pip.nudgex = _pip.nudgex*-1;
				_pip.nudgey = _pip.nudgey*-1;
			}
			_pip.x+=_pip.nudgex;
			_pip.y+=_pip.nudgey;
		}			
	}
}
	
