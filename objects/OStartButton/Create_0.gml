/// @description Insert description here
// You can write your code in this editor

instance_deactivate_object(OInvMag);

buttonText = "start";
titleText = "dubious pizza escape"
draw_set_font(FGameTitle);
titleWidth = string_width(titleText) * 2;
buttonWidth = string_width(buttonText) * 1.4;
buttonHeight = string_height(buttonText) * 1.4;
titleY = 200;
buttonY = y;
titleX = window_get_width()/2 - titleWidth/2;
buttonX = window_get_width()/2 - buttonWidth/2;
