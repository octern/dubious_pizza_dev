/// @description Insert description here
// You can write your code in this editor

titleText = "dubious\n pizza \n escape"
draw_set_font(FGameTitle);
titleFactor = 1.4;
buttonFactor = 1.4;
titleLineHeight = string_height("A");
titleWidth = string_width(titleText) * titleFactor;
titleHeight = string_height(titleText) * titleFactor;
titleY = 50;
titleX = window_get_width()/2 - titleWidth/2;

subTitleText = "a project sqiuddles production";
draw_set_font(FGameTitle);
subTitleFactor = 0.8;
subTitleLineHeight = string_height("A");
subTitleWidth = string_width(subTitleText) * subTitleFactor;
subTitleX = window_get_width()/2 - subTitleWidth/2;
subTitleY = titleY + titleHeight + 30;

