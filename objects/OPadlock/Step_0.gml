/// @description Insert description here
// You can write your code in this editor
if(solved==0 && instance_number(OWireCover) > 0) {
	sol=instance_find(OWireCover, 0);
	sol1=(360-sol.screw1.image_angle)/30;
	sol2=(360-sol.screw2.image_angle)/30;
	sol3=(360-sol.screw3.image_angle)/30;
	sol4=(360-sol.screw4.image_angle)/30;
	if(dial1.dial_value==sol1 && dial2.dial_value==sol2 && dial3.dial_value==sol3 && dial4.dial_value==sol4) {
		show_debug_message("OK!");
		image_index=1;
		solved=1;
		dial1.y+=30;
		dial2.y+=30;
		dial3.y+=30;
		dial4.y+=30;
	}
}