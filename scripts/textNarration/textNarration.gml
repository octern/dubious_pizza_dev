horizPadding = 10;
verticalPadding = 20;
instance_activate_object(OTextMinor)

textbox = instance_find(OTextMinor, 0);

text = "here it is\nthis is what I have to say\nwe're going to do this.\n\n\neve nif it \n\nok\n\nmaybe I'll just take a nap.";
textHeight = string_height(text);
textbox.image_yscale = (textHeight + verticalPadding*2) / textbox.sprite_height;
textbox.y = window_get_height() / 2 
text_x = textbox.x - textbox.sprite_width/2 + horizPadding;
text_y = textbox.y - textbox.sprite_height/2 + verticalPadding;
draw_text_ext(text_x, text_y, text, -1, textbox.sprite_width-horizPadding);