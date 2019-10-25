/// @desc Set global ds_map values for state of world

// Don't manually edit. Generate using https://docs.google.com/spreadsheets/d/1h437OcqBYhETw8EKKBGGYpkJoJ63Tfe0CiDPohsPnmA/edit#gid=0

global.world = ds_map_create();
worldSet("pizzabox", "closed");
worldSet("toolbox", "locked");
worldSet("scarydoor", "locked");
worldSet("painting", "closed");
worldSet("wireR", 0);
worldSet("wireB", 0);
worldSet("wireG", 0);
worldSet("elecPanel", "closed");
worldSet("screw1", 3);
worldSet("screw2", 6);
worldSet("screw3", 6);
worldSet("screw4", 2);
worldSet("screw1_easy", 1);
worldSet("screw2_easy", 1);
worldSet("screw3_easy", 2);
worldSet("screw4_easy", 1);
worldSet("table", "closed");
worldSet("lightColor", "black");
worldSet("frontdoor", "locked");
worldSet("youWin", 0);
picture1Solution = ds_list_create();
ds_list_add(picture1Solution, "tl");
ds_list_add(picture1Solution, "tr");
ds_list_add(picture1Solution, "tr");
ds_list_add(picture1Solution, "bl");
ds_list_add(picture1Solution, "tl");
ds_list_add(picture1Solution, "br");
ds_list_add(picture1Solution, "br");
ds_list_add(picture1Solution, "bl");
worldSet("picture1Solution", picture1Solution);
picture1SolutionEasy = ds_list_create();
ds_list_add(picture1SolutionEasy, "tl");
ds_list_add(picture1SolutionEasy, "tr");
if(global.easyPicture) {worldSet("picture1Solution", picture1SolutionEasy);}