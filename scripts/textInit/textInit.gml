// // if (live_call()) return live_result;

//  Don't edit these texts! Generate from this spreadsheet:
// https://docs.google.com/spreadsheets/d/1h437OcqBYhETw8EKKBGGYpkJoJ63Tfe0CiDPohsPnmA/edit#gid=1207862610 

global.roomStrings = ds_map_create();

ds_map_replace(global.roomStrings, "panelClosed", "If I could just get this cover off, I could probably do something really dangerous!");
ds_map_replace(global.roomStrings, "pictureDark", "The frame is thick and kind of distorted. The picture is too dim to see. ");
ds_map_replace(global.roomStrings, "pictureR", "This is the beach house my friend and I stayed at for a week after we finished college. It was a bittersweet time. We'd watch the sunsets together and talk about how this part of our lives was ending. ");
ds_map_replace(global.roomStrings, "pictureG", "This is the beach house my friend and I stayed at for a week after we finished college. It was a chill time. We smoked so much weed that summer.");
ds_map_replace(global.roomStrings, "pictureB", "This is the beach house my friend and I stayed at for a week after we finished college. It was a relaxing time. We spent whole days just letting the stress of the last semester drain away. ");
ds_map_replace(global.roomStrings, "pictureY", "This is the beach house my friend and I stayed at for a week after we finished college. It was an exciting time, with the sun beaming down and not a cloud anywhere. ");
ds_map_replace(global.roomStrings, "pictureA", "This is the beach house my friend and I stayed at for a week after we finished college. It was an almost otherworldly time , with the smell and sight and sound of the ocean was everywhere. ");
ds_map_replace(global.roomStrings, "pictureP", "This is the beach house my friend and I stayed at for a week after we finished college. It was an edgy and exciting time, feeling like I could wake up any morning as a whole new person. ");
ds_map_replace(global.roomStrings, "pictureW", "It's too bright; all I can see is glare on the frame.");
ds_map_replace(global.roomStrings, "doorFront", "It's locked!");
ds_map_replace(global.roomStrings, "doorScary", "I'm not going to lie, I'm kind of relieved this door is locked.");
ds_map_replace(global.roomStrings, "padlock", "It's locked. ");
ds_map_replace(global.roomStrings, "panelUnscrew", "I unscrewed the panel. ");
ds_map_replace(global.roomStrings, "table", "A round table with four recesses in it. Odd.");
ds_map_replace(global.roomStrings, "tableSlot", "I could put something here");
ds_map_replace(global.roomStrings, "tableSlotWrong", "That doesn't fit in the recess, making my action seem arbitrary.");
ds_map_replace(global.roomStrings, "tableSlotBottle", "I put the bottle in the divot on the table.");
ds_map_replace(global.roomStrings, "tableSlotBottleWrong", "A light beneath the bottles briefly illuminates, and then goes out. ");
ds_map_replace(global.roomStrings, "tableSlotBottleRight", "A light illuminates, and a cheerful tune plays (diegetically)!");
ds_map_replace(global.roomStrings, "panelOccupied", "Hold on, I'm trying to remember whether my electrical engineering prof said it _was_, or _was not_, a good idea to have tinder and potentially flammable liquids nearby while working on exposed wiring.");
ds_map_replace(global.roomStrings, "wiresNoTape", "Yep, these wires are damaged.");
ds_map_replace(global.roomStrings, "doorScaryUnlock", "I unlocked the very scary door that might lead down into a murder room. ");
ds_map_replace(global.roomStrings, "toolboxLocked", "It looks like the same old toolbox they had in high school.\nI wonder if the lock is to keep people out? Or to keep unknown horrors inside?\nProbably people.");
ds_map_replace(global.roomStrings, "toolboxOpen", "It looks like the same old toolbox they had in high school.");

instance_deactivate_object(OTextMajor);
instance_deactivate_object(OTextMinor);
