_fadeStep = argument_count >=1 ? argument[0] : -1;

textArea = instance_create_depth(200,400,0,OTextAreaBG);
spriteScale(textArea, (window_get_width()-500)/textArea.sprite_width);
//	textBox = instance_create_depth(150,350,1,OTextMinor);
//	spriteScale(textBox, (window_get_width()-450)/textArea.sprite_width);
narrCont = instance_create_depth(0,0,0,ONarrationTextController);
if(_fadeStep > 0) narrCont.textbg_alpha_step = _fadeStep;
