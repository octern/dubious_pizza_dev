
global.narrations = ds_map_create();
global.narrationHeads = ds_map_create();

ds_map_replace(global.narrationHeads, "opening_narration", "");
ds_map_replace(global.narrations, "opening_narration", "It's been a few weeks since I saw my friend##narr@@ADoorClose%%We've really drifted apart##narr@@ALog%%We were so close when we were younger, but now I mostly just see them at our monthly games night##narr@@Some of it is just life. Their job keeps them at work until pretty late.##narr@@And of course I'm busy nights.##narr@@The last few times we've talked they've seemed a little out of it, too##narr@@");
ds_map_replace(global.narrations, "door_lock", "It's been a few weeks since I saw my friend##narr@@We've really drifted apart##narr@@We were so close when we were younger, but now I mostly just see them at our monthly games night##narr@@Some of it is just life. Their job keeps them at work until pretty late.##narr@@And of course I'm busy nights.##narr@@The last few times we've talked they've seemed a little out of it, too##narr@@");

global.storyString = "opening_narration";