/// @description Insert description here
// You can write your code in this editor

// // if (live_call()) return live_result;

var corner = itemCornerNudge();
if(corner != 0 && worldGet("painting") != "open" && nudged <= 0) {
	nudged = 10;
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
		instance_activate_object(OBottleR);
		instance_activate_object(OPoemC);
		paintingSolved("now");
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
	return true;
}
	
if( _r &&  _b &&  _g) {light_color=c_white; worldSet("lightColor", "Bright white");}
if( _r && !_b &&  _g) {light_color=c_yellow; worldSet("lightColor", "Yellow");}
if( _r &&  _b && !_g) {light_color=c_purple; worldSet("lightColor", "Purple");}
if( _r && !_b && !_g) {light_color=c_red; worldSet("lightColor", "Red");}
if(!_r &&  _b &&  _g) {light_color=c_aqua; worldSet("lightColor", "Aquamarine");}
if(!_r && !_b &&  _g) {light_color=c_green; worldSet("lightColor", "Green");}
if(!_r &&  _b && !_g) {light_color=c_teal; worldSet("lightColor", "Blue");}
if(!_r && !_b && !_g) {light_color=c_black;  worldSet("lightColor", "Black");}
	switch(worldGet("lightColor")) {
		case "Bright white": _textKey = "pictureW"; break;
		case "Yellow": _textKey="pictureY"; break;
		case "Purple": _textKey="pictureP"; break;
		case "Red": _textKey="pictureR"; break;
		case "Aquamarine": _textKey="pictureA"; break;
		case "Green": _textKey="pictureG"; break;
		case "Blue": _textKey="pictureB"; break;
		case "Black": _textKey="pictureDark"; break;
	}
	textRoomMinor(ds_map_find_value(global.roomStrings, _textKey));
