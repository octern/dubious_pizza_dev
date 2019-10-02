
global.dialogs = ds_map_create();
global.dialogHeads = ds_map_create();
testDialog = @"where am i##dia1A@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@where am i##dia1A@@in the village##dia1B@@in the village##dia1B@@in the village##dia1B@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@where am i##dia1A@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@where am i##dia1A@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@";
ds_map_replace(global.dialogs, "testDialog", testDialog);
// test dialog (this isn't a flag)

ds_map_replace(global.dialogHeads, "opening_dialog", "20 years ago");
ds_map_replace(global.dialogs, "opening_dialog", "hey are you coming over tonight##dia1B@@it's been like two days since we've hung out and we've got to work on the noodle puzzle##dia1B@@Yeah I know!##dia1A@@Dad says he can drop me off after target practice##dia1A@@you and your \"future\" and \"having a career\" :eyeroll:##dia1B@@Yeah yeah##dia1A@@Once we can drive we can hang out all the time##dia1A@@it's going to be awesome##dia1B@@we'll do so much creative stuff##dia1B@@and bingewatch _Our Lives Are At Stake_##dia1A@@you and your fandoms :eyeroll:##dia1B@@real vampires don't work like that.##dia1B@@");
ds_map_replace(global.dialogHeads, "invitation", "Today");
ds_map_replace(global.dialogs, "invitation", "I wondered if you could come over for lunch on Saturday.##dia1B@@Maybe we could catch up.##dia1B@@That sounds great! I'm free then.##dia1A@@Come at noon.##dia1B@@If you can't find me, check the basement.##dia1B@@Will do.##dia1A@@");
ds_map_replace(global.dialogHeads, "gap_year", "19 years ago");
ds_map_replace(global.dialogs, "gap_year", "so I was thinking about taking a gap year##dia1B@@you know##dia1B@@travel the world##dia1B@@on a budget##dia1B@@See new things, meet new people, stay in hostels, that kind of thing?##dia1A@@yeah##dia1B@@well##dia1B@@I just##dia1B@@sometimes I don't know if I want to do this##dia1B@@Do what?##dia1A@@all of it##dia1B@@any of it##dia1B@@college##dia1B@@become a programmer like mom and grandma##dia1B@@I didn't know you were having such a hard time.##dia1A@@yeah I just want to##dia1B@@I don't know##dia1B@@find myself, I guess##dia1B@@if we could just keep making games together like when we were kids it'd be easy##dia1B@@Yeah.##dia1A@@I know I'm the flaw in that plan##dia1A@@Mandatory hereditary business and all that.##dia1A@@I envy you sometimes despite that##dia1B@@you get to get out of the house at least##dia1B@@run around at night##dia1B@@excitement, danger, etc##dia1B@@less desk work##dia1B@@I'd be lying if I said it weren't fun##dia1A@@I wish it paid better, though##dia1A@@Maybe I could get out more if I became a vampire##dia1B@@haha, yeah right##dia1A@@Like in your dumbass pop culture movies##dia1A@@Long wind-up to a big dramatic battle between ex-friends or ex-lovers or ex-whatevers##dia1A@@");

global.dialogString = "gap_year";
