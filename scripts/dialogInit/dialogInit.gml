
global.dialogs = ds_map_create();
global.dialogHeads = ds_map_create();
testDialog = @"where am i##dia1A@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@where am i##dia1A@@in the village##dia1B@@in the village##dia1B@@in the village##dia1B@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@where am i##dia1A@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@where am i##dia1A@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@";
ds_map_replace(global.dialogs, "testDialog", testDialog);
// test dialog (this isn't a flag)

ds_map_replace(global.dialogHeads, "opening_dialog", "20 years ago");
ds_map_replace(global.dialogs, "opening_dialog", "hey are you coming over tonight##dia2@@it's been like two days since we've hung out and we've got to work on the noodle puzzle##dia2@@Yeah I know!##dia1@@Dad says he can drop me off after target practice##dia1@@you and your \"future\" and \"having a career\" :eyeroll:##dia2@@Yeah yeah##dia1@@Once we can drive we can hang out all the time##dia1@@it's going to be awesome##dia2@@we'll do so much creative stuff##dia2@@and bingewatch _Our Lives Are At Stake_##dia1@@you and your fandoms :eyeroll:##dia2@@real vampires don't work like that.##dia2@@");
ds_map_replace(global.dialogHeads, "invitation", "Today");
ds_map_replace(global.dialogs, "invitation", "I wondered if you could come over for lunch on Saturday.##dia2@@Maybe we could catch up.##dia2@@That sounds great! I'm free then.##dia1@@Come at noon.##dia2@@If you can't find me, check the basement.##dia2@@Will do.##dia1@@");
ds_map_replace(global.dialogHeads, "gap_year", "19 years ago");
ds_map_replace(global.dialogs, "gap_year", "so I was thinking about taking a gap year##dia2@@you know##dia2@@travel the world##dia2@@on a budget##dia2@@See new things, meet new people, stay in hostels, that kind of thing?##dia1@@yeah##dia2@@well##dia2@@I just##dia2@@sometimes I don't know if I want to do this##dia2@@Do what?##dia1@@all of it##dia2@@any of it##dia2@@college##dia2@@become a programmer like mom and grandma##dia2@@I didn't know you were having such a hard time.##dia1@@yeah I just want to##dia2@@I don't know##dia2@@find myself, I guess##dia2@@if we could just keep making games together like when we were kids it'd be easy##dia2@@Yeah.##dia1@@I know I'm the flaw in that plan##dia1@@Mandatory hereditary business and all that.##dia1@@I envy you sometimes despite that##dia2@@you get to get out of the house at least##dia2@@run around at night##dia2@@excitement, danger, etc##dia2@@less desk work##dia2@@I'd be lying if I said it weren't fun##dia1@@I wish it paid better, though##dia1@@Maybe I could get out more if I became a vampire##dia2@@haha, yeah right##dia1@@Like in your dumbass pop culture movies##dia1@@Long wind-up to a big dramatic battle between ex-friends or ex-lovers or ex-whatevers##dia1@@");

global.dialogString = "gap_year";
