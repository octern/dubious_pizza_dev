/// @description Insert description here
// You can write your code in this editor

clearInventoryUI();

buttonText = "start";
titleText = "dubious\n pizza \n escape"
draw_set_font(FGameTitle);
titleFactor = 1.4;
buttonFactor = 1.4;
buttonMargin = (1-buttonFactor)/2;
titleLineHeight = string_height("A");
titleWidth = string_width(titleText) * titleFactor;
buttonWidth = string_width(buttonText) * buttonFactor;
buttonHeight = string_height(buttonText) * buttonFactor;
titleY = 50;
buttonY = y;
titleX = window_get_width()/2 - titleWidth/2;
buttonX = window_get_width()/2 - buttonWidth/2;
