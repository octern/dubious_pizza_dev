/// @description Write text to screen
// You can write your code in this editor

if (live_call(argument0)) return live_result;

instance_activate_object(OText);
textbox=instance_find(OText, 0);
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

