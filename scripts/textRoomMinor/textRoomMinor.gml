/// @description Write text to screen
/// @param text to display
// You can write your code in this editor

// if (live_call(argument0)) return live_result;

/*
// tried to only display text if no collisions, but too many special cases. 
// need to handle this manually in every object with text :P

coll=ds_list_create()
collnum = instance_place_list(mouse_x, mouse_y, all, coll, true);
	show_debug_message("I'm "+string(id)+". you clicked  "+string(ds_list_size(coll))+" others.");

if(ds_list_size(coll) > 0) {
	show_debug_message("I'm "+string(id)+". you clicked  "+string(ds_list_size(coll))+" others so no text right now");
	return(false);
}

*/

instance_activate_object(OTextMinor);
textbox=instance_find(OTextMinor, 0);
textbox._string=argument0;
textbox.image_alpha=.01
textbox.fadeIn=true;
textbox.fadeOut=false;

/*
draw_set_alpha(.8);

x1=room_width*1;
y1=room_height*7;
x2=room_width*.9;
x2=room_height*.9;
draw_roundrect_color(x1,y1,x2,y2,c_black, c_black, false);
draw_set_alpha(1);

draw_text_ext_transformed_color(x1*1.1,y1*1.1, argument0, -1, (x2-x1)*.9, 
	1,1, 0, 
	c_white,c_white,c_white,c_white, 1);

