/// @desc Check whether clicking should function normally or whether blocked by something
/// @param cx x coord
/// @param cy y coord
/// @param noverlap bool nullify on overlap 
/// @param overlapobj obj object to check for overlap with
/// @param ntext bool nullify if textbox is present

//if(argument_count==0) {argument = array_create(1, mouse_x);}
// show_debug_message("arguments to ClickActive: " + string(argument_count));

// regrettably we need to check on this manually in everything that can be clicked. 
// We do this in the item prototype and in the class for nav items

// if we're doing a cinematic, never allow clicks on anything. 
if(global.cinematic) {return false;}


cx = argument_count >= 1 ? argument[0] : mouse_x;
cy = argument_count >= 2 ? argument[1] : mouse_y;
noverlap = argument_count >= 3 ? argument[2] : true;
overlapobj = argument_count >= 4 ? argument[3] : other;
ntext = argument_count >= 5 ? argument[4] : true;

coverlap = noverlap ? position_meeting(cx, cy, overlapobj) : false;
ctext = ntext ? instance_number(OTextMajor) + instance_number(OTextMinor) : 0;

// return true if the click didn't overlap with anything else (or we're not checking) AND 
//		there is no text box visible (or we aren't checking)
active = !coverlap && ctext==0;
show_debug_message("clickActive result: overlap " + string(coverlap) + " and text " + string(ctext));
collider = instance_position(cx, cy, other);
show_debug_message("colliding with " + string(collider));
return(active);