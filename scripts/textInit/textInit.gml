// // if (live_call()) return live_result;

//  Don't edit these texts! Generate from this spreadsheet:
// https://docs.google.com/spreadsheets/d/1h437OcqBYhETw8EKKBGGYpkJoJ63Tfe0CiDPohsPnmA/edit#gid=1207862610 

global.roomStrings = ds_map_create();

ds_map_replace(global.roomStrings, "panelClosed", "If I could just get this cover off, I could probably do something really dangerous!");
ds_map_replace(global.roomStrings, "pictureDark", "The frame is thick and kind of distorted. The picture is too dim to see. ");
ds_map_replace(global.roomStrings, "pictureR", "I remember the sunsets...");
ds_map_replace(global.roomStrings, "pictureG", "I remember smoking weed...");
ds_map_replace(global.roomStrings, "pictureB", "I remember chilling out...");
ds_map_replace(global.roomStrings, "pictureY", "I remember sunny days that swept the clouds away...");
ds_map_replace(global.roomStrings, "pictureA", "I remember swimming in the ocean...");
ds_map_replace(global.roomStrings, "pictureP", "I remember how new and exciting everything seemed...");
ds_map_replace(global.roomStrings, "pictureW", "It's too bright; all I can see is glare on the frame.");
ds_map_replace(global.roomStrings, "doorFront", "It's locked!");
ds_map_replace(global.roomStrings, "doorScary", "Does this go... down?");
ds_map_replace(global.roomStrings, "padlock", "It's locked. ");
ds_map_replace(global.roomStrings, "panelUnscrew", "I unscrewed the panel. ");
ds_map_replace(global.roomStrings, "table", "A round table with four recesses in it. Odd.");
ds_map_replace(global.roomStrings, "tableSlot", "I could put something here");
ds_map_replace(global.roomStrings, "tableSlotWrong", "That doesn't fit in the recess, making my action seem arbitrary.");
ds_map_replace(global.roomStrings, "panelOccupied", "Hold on, I'm trying to remember whether my electrical engineering prof said it _was_, or _was not_, a good idea to have tinder and potentially flammable liquids nearby while working on exposed wiring.");
ds_map_replace(global.roomStrings, "wiresNoTape", "Yep, these wires are damaged.");

instance_deactivate_object(OText);
instance_deactivate_object(OTextMinor);
