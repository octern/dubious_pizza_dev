/// @description Insert description here
// You can write your code in this editor

var corner = itemCornerNudge();
if(corner != 0) {
	nudged = 15;
	if(ds_queue_size(corners) == ds_queue_size(solution)) ds_queue_dequeue(corners);
	ds_queue_enqueue(corners, corner);
	if(ds_queue_write(corners)==ds_queue_write(solution)) {
		x+=10;
		y+=30;
	} else {
		if(corner=="tl" || corner=="br") image_angle=4;
		if(corner=="tr" || corner=="bl") image_angle=356;
	}
}
	
