
global.dialogs = ds_map_create();
global.dialogHeads = ds_map_create();
testDialog = @"where am i##dia1A@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@where am i##dia1A@@in the village##dia1B@@in the village##dia1B@@in the village##dia1B@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@where am i##dia1A@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@where am i##dia1A@@in the village##dia1B@@it's pretty sweet##dia1A@@we're especially proud of our recreational hockey league##dia1B@@are they good?##dia1A@@yes, we're Number One##dia1B@@...##dia1A@@";
ds_map_replace(global.dialogs, "testDialog", testDialog);
// test dialog (this isn't a flag)

ds_map_replace(global.dialogHeads, "opening_dialog", "20 years ago");
ds_map_replace(global.dialogs, "opening_dialog", "hey are you coming over tonight##dia1B@@it's been like two days since we've hung out and we've got to work on the noodle puzzle##dia1B@@Yeah I know!##dia1A@@Dad says he can drop me off after target practice##dia1A@@you and your \"future\" and \"having a career\" :eyeroll:##dia1B@@Yeah yeah##dia1A@@Once we can drive we can hang out all the time##dia1A@@it's going to be awesome##dia1B@@we'll do so much creative stuff##dia1B@@and bingewatch _Our Lives Are At Stake_##dia1A@@you and your fandoms :eyeroll:##dia1B@@real vampires don't work like that.##dia1B@@");
ds_map_replace(global.dialogHeads, "invitation", "Earlier this week");
ds_map_replace(global.dialogs, "invitation", "I wondered if you could come over for lunch on Saturday.##dia1B@@Maybe we could catch up.##dia1B@@That sounds great! I'm free then.##dia1A@@Come at noon.##dia1B@@If you can't find me, check the basement.##dia1B@@Will do.##dia1A@@");
// unreasonably long text alternate for debugging
//ds_map_replace(global.dialogs, "invitation", "I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could come over for lunch on Saturday.##dia1B@@Maybe we could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could I wondered if you could  catch up.##dia1B@@That sounds great! I'm free then.##dia1A@@Come at noon.##dia1B@@If you can't find me, check the basement.##dia1B@@Will do.##dia1A@@");
ds_map_replace(global.dialogHeads, "gap_year", "19 years ago");
ds_map_replace(global.dialogs, "gap_year", "so I was thinking about taking a gap year##dia1B@@you know##dia1B@@travel the world##dia1B@@on a budget##dia1B@@See new things, meet new people, stay in hostels, that kind of thing?##dia1A@@yeah##dia1B@@well##dia1B@@I just##dia1B@@sometimes I don't know if I want to do this##dia1B@@Do what?##dia1A@@all of it##dia1B@@any of it##dia1B@@college##dia1B@@become a programmer like mom and grandma##dia1B@@I didn't know you were having such a hard time.##dia1A@@yeah I just want to##dia1B@@I don't know##dia1B@@find myself, I guess##dia1B@@if we could just keep making games together like when we were kids it'd be easy##dia1B@@Yeah.##dia1A@@I know I'm the flaw in that plan##dia1A@@Mandatory hereditary business and all that.##dia1A@@I envy you sometimes despite that##dia1B@@you get to get out of the house at least##dia1B@@run around at night##dia1B@@excitement, danger, etc##dia1B@@less desk work##dia1B@@I'd be lying if I said it weren't fun##dia1A@@I wish it paid better, though##dia1A@@Maybe I could get out more if I became a vampire##dia1B@@haha, yeah right##dia1A@@Like in your dumbass pop culture movies##dia1A@@Long wind-up to a big dramatic battle between ex-friends or ex-lovers or ex-whatevers##dia1A@@");
ds_map_replace(global.dialogHeads, "colors", "18 years ago");
ds_map_replace(global.dialogs, "colors", "I was thinking@@dia1A##?@@dia1B##About last night@@dia1A##I don't think it's that important whether people see the same colors or different ones.@@dia1A##Metaphorical colors, I mean@@dia1A##Real colors, that's important sometimes. @@dia1A##For metaphorical colors I think it's just...@@dia1A##You benefit from seeing things a lot of different ways@@dia1A##ok@@dia1B##Like when we made the noodle puzzle@@dia1A##We thought it was going to be easy but nobody except for us knew that not all fusilli is rotini@@dia1A##They knew stuff we didn't know.@@dia1A##There are colors people can't see, but bees can. @@dia1A##Bees know stuff we don't know. @@dia1A##That's deep@@dia1B##Bees are deep@@dia1A##We can try to be like bees by looking at problems from a bunch of different perspectives@@dia1A##be like bees@@dia1B##bee like bees@@dia1B##...@@dia1A##Yes@@dia1A##If colors make you feel emotions or emotions make you feel colors then try looking at a problem from a lot of different colors@@dia1A##Or a lot of different emotions@@dia1A##Or different perspectives@@dia1A##so like @@dia1B##if I don't know what I want to do with my life or what everything means@@dia1B##I should make myself angry and think about it@@dia1B##then sad and think about it@@dia1B##then happy and think about it@@dia1B##Yeah@@dia1A##Or imagine you're somebody else and try to look at it like them@@dia1A##Look at like a vampire or whatever.@@dia1A##");
ds_map_replace(global.dialogs, "denoument", "Hey!##diaRLA@@So this is awkward, but...##diaRLA@@Did you lock me in your basement with a series of cryptic puzzles that had creepy predatory overtones and made me think I might have to hunt down and kill my best friend?##diaRLA@@Oh shit. ##diaRLB@@Hey fam. ##diaRLB@@Could you put down those stakes?##diaRLB@@Sorry, habit. ##diaRLA@@Yeah, so. ##diaRLB@@I've been thinking about my life a lot. And what kind of person I want to be. ##diaRLB@@I couldn't put it into words. It just sounded pitiful. ##diaRLB@@But I kept thinking about how we used to make puzzles##diaRLB@@Everyone always thought I was the smart one but you were the one who understood what things MEANT##diaRLB@@and how to make the solutions matter to peopleLike with…##diaRLB@@the tagliatelle puzzle.##diaRLA@@the tagliatelle puzzle.##diaRLB@@the tagliatelle puzzle.##diaRLAB@@So I thought maybe ##diaRLB@@if I _showed_ you what I was talking about and you worked through it##diaRLB@@Then you'd understand what I meant. ##diaRLB@@Yeah, maybe I do. ##diaRLA@@");

global.storyString = "gap_year";
