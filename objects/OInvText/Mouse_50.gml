/// @description Insert description here
// You can write your code in this editor

if(!initialized) exit;

changeY = mouse_y - scrollRefY;
candidateY = text_y + changeY;
if(candidateY > text_y_start) {
//	show_debug_message("Y would have been " + string(candidateY) + "but can't be larger than "+string(text_y_start));
} else if (candidateY < text_max_scroll) {
//	show_debug_message("Y would have been " + string(candidateY) + "but can't be smaller than "+string(text_max_scroll));
} else {
	text_y = max(text_max_scroll, min(text_y_start, text_y + changeY));
}
// show_debug_message("mouse held, change from yref  is" + string(scrollRefY - text_y));
scrollRefY = mouse_y;
