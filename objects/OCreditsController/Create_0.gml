/// @description Insert description here
// You can write your code in this editor

titleText = "dubious\n pizza \n escape"
draw_set_font(FGameTitle);
titleFactor = 1.2;
buttonFactor = 1.2;
titleLineHeight = string_height("A");
titleWidth = string_width(titleText) * titleFactor;
titleHeight = string_height_ext(titleText, titleLineHeight*.7, -1) * titleFactor;
titleY = 20;
titleX = window_get_width()/2 - titleWidth/2;

subTitleText = @"a project
squiddles production";
draw_set_font(FGameTitle);
subTitleFactor = 0.6;
subTitleLineHeight = string_height("A");
subTitleWidth = string_width(subTitleText) * subTitleFactor;
subTitleMidX = window_get_width()/2
subTitleY = titleY + titleHeight + 20;

continueTimeout = room_speed * 2;