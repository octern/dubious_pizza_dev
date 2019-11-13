
global.narrations = ds_map_create();
global.narrationHeads = ds_map_create();

global.roomIntrosShown = array_create(0);
global.itemIntrosShown = array_create(0);

ds_map_replace(global.narrationHeads, "opening_narration", "");
ds_map_replace(global.narrations, "opening_narration", "It's been a few weeks since I saw my friend##narr@@ADoorClose%%We've really drifted apart##narr@@ALog%%We were so close when we were younger, but now I mostly just see them at our monthly games night##narr@@Some of it is just life. Their job keeps them at work until pretty late.##narr@@And of course I'm busy nights.##narr@@The last few times we've talked they've seemed a little out of it, too##narr@@");
ds_map_replace(global.narrations, "door_lock", "The basement, huh.##narr@@ADoorOpenBasement%%I've never been down here.##narr@@ADoorClose%%Did the door just close by itself?##narr@@ADoorLocked%%And lock itself?##narr@@Welp.##narr@@");
ds_map_replace(global.narrations, "bottleR", "The basement, huh.##narr@@ADoorOpenBasement%%I've never been down here.##narr@@ADoorClose%%Did the door just close by itself?##narr@@ADoorLocked%%And lock itself?##narr@@Welp.##narr@@");
ds_map_replace(global.narrations, "RTwo", "Oh, jeez.##narr@@Discarded pizza boxes, bottles strewn around under the table?##narr@@This isn't like my friend at all.##narr@@");
ds_map_replace(global.narrations, "RFour", "You know, if you put a stained metal door into your basement with a padlock on the outside, people are going to think you're a serial killer##narr@@... is what I would have said to my friend if I'd known they had a door like this in their basement.##narr@@I don't know what's up with this but I'm not feeling great about it.##narr@@");
ds_map_replace(global.narrations, "painting_solved", "Oh crap, I broke...##narr@@Wait, what?##narr@@");
ds_map_replace(global.narrations, "friend_appears", "My friend was standing at the door to the basement##narrW@@...sunlight streaming through behind them##narrW@@");


global.storyString = "opening_narration";