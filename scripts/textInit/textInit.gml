if (live_call()) return live_result;

//  Don't edit these texts! Generate from this spreadsheet:
// https://docs.google.com/spreadsheets/d/1h437OcqBYhETw8EKKBGGYpkJoJ63Tfe0CiDPohsPnmA/edit#gid=1207862610 

global.roomStrings = ds_map_create();

ds_map_replace(global.roomStrings, "WireCoverCU", "If I could just get this cover off, I could probably do something really dangerous!");
ds_map_replace(global.roomStrings, "PictureDark", "The frame is thick and kind of distorted. The picture is too dim to see. ");
ds_map_replace(global.roomStrings, "PictureR", "I remember the sunsets...");
ds_map_replace(global.roomStrings, "PictureG", "I remember smoking weed...");
ds_map_replace(global.roomStrings, "PictureB", "I remember chilling out...");
ds_map_replace(global.roomStrings, "PictureY", "I remember sunny days, when the clouds were swept away...");
ds_map_replace(global.roomStrings, "PictureA", "I remember swimming in the ocean...");
ds_map_replace(global.roomStrings, "PictureP", "I remember how new and exciting everything seemed...");
ds_map_replace(global.roomStrings, "PictureW", "There's too much light; all I can see is glare on the frame.");
ds_map_replace(global.roomStrings, "DoorFront", "It's locked!");
ds_map_replace(global.roomStrings, "DoorScary", "Does this go... down?");
ds_map_replace(global.roomStrings, "Padlock", "It's locked. ");

instance_deactivate_object(OText);