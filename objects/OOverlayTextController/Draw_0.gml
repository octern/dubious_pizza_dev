/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

if(!surface_exists(textSurface)) {
	textSurface = surface_create(textSurfaceW, textSurfaceH)
}

// draw_clear_alpha(c_blue, .5);

surface_set_target(textSurface);

draw_clear_alpha(c_white, 0)

for(iText = 0; iText < array_length_1d(textObjects); iText++) {
	with(textObjects[iText]) {
		textFormatSet(format);
		if(!variable_instance_exists(id, "_startFadeInTimer")) {_startFadeInTimer = startFadeInTimer;}
		if(textFadeInStep > 0) {
			if(_startFadeInTimer > 0) {
				_textAlpha = 0;
				_startFadeInTimer--;
//				show_debug_message(string(_startFadeInTimer))
			} else {
				if(variable_instance_exists(id, "_textAlpha")) {
					_textAlpha += textFadeInStep;
//					show_debug_message(string(_textAlpha));
				} else {
					_textAlpha = 0.01;
				}
			}
		} else {
			_textAlpha = 1;
		}
		_text_x = text_x;
		_text_y = text_y;
		if(bubble_align == "left") {_text_x = _text_x + marginL;}
		if(bubble_align == "right") {_text_x = _text_x + bubble_jitter;}
		if(is_dialog) {
			scaleY = (text_height + 2*dialogMarginY) / sprite_get_height(dialog_bg);
			scaleX = (text_width + 2*dialogMarginX) / sprite_get_width(dialog_bg);
			draw_sprite_ext(dialog_bg, 0, _text_x, _text_y, scaleX, scaleY, 0, bg_tint, .9);
		}
		text_words_x = _text_x + dialogMarginX;
		text_words_y = _text_y + dialogMarginY;


		draw_text_ext_transformed_color(text_words_x, text_words_y, words, -1, text_width, 
			text_scale,text_scale, 0, 
			text_base, text_base, text_tint, text_base, _textAlpha);

		if(format=="poemEndArrow") {
			arrow_scale = .5;
			arrow_width = sprite_get_width(SArrow) * arrow_scale;
			arrow_height = sprite_get_height(SArrow) * arrow_scale;
			arrow_x = text_words_x + other.textSurfaceX + text_width - arrow_width;
			arrow_y = text_words_y + other.textSurfaceY +	arrow_height;
			arrow_x2 = arrow_x + arrow_width;
			arrow_y2 = arrow_y + sprite_get_height(SArrow);
			show_debug_message(string(text_words_x) + ", " + string(text_words_y) + ", " + string(arrow_width) + ", " + string(arrow_x) + ", " + string(arrow_y));
			closeupCloser = instance_find(OInvCloseupClose, 0);
			if(!variable_instance_exists(id, "_startSpriteFadeInTimer")) {_startSpriteFadeInTimer = startFadeInTimer;}
			if(textFadeInStep > 0) {
				if(_startFadeInTimer > 0) {
					_spriteAlpha = 0;
					_startSpriteFadeInTimer--;
//					show_debug_message(string(_startSpriteFadeInTimer))
				} else {
					if(variable_instance_exists(id, "_spriteAlpha")) {
						_spriteAlpha += textFadeInStep;
//						show_debug_message(string(_spriteAlpha));
					} else {
						_spriteAlpha = 0.01;
					}
				}
			} else {
				_spriteAlpha = 1;
			}
			with(closeupCloser) {
				sprite_index = SArrow;
				image_index = 1;
				image_speed = 0;
				spriteScale(id, other.arrow_scale);
				spriteAlpha = other._spriteAlpha;
				x = other.arrow_x;
				y = other.arrow_y;
			}
		}


		textFormatSet();
		

//		show_debug_message("showing text at " + string(text_words_x) + " " + string(text_words_y) + " of surface at " + string(controller.textSurfaceX) + " " + string(controller.textSurfaceY));
	}
}

surface_reset_target();
draw_surface(textSurface, textSurfaceX, textSurfaceY);

/*
for(iText = 0; iText < array_length_1d(textObjects); iText++) {
	with(textObjects[iText]) {
		textFormatSet(format);
		_text_x = text_x;
		_text_y = text_y;
		if(bubble_align == "left") {_text_x = _text_x + marginL;}
		if(bubble_align == "right") {_text_x = _text_x + bubble_jitter;}
		if(is_dialog) {
			scaleY = (text_height + 2*dialogMarginY) / sprite_get_height(dialog_bg);
			scaleX = (text_width + 2*dialogMarginX) / sprite_get_width(dialog_bg);
			draw_sprite_ext(dialog_bg, 0, _text_x, _text_y, scaleX, scaleY, 0, bg_tint, .9);
		}
		text_words_x = _text_x + dialogMarginX;
		text_words_y = _text_y + dialogMarginY;


		draw_text_ext_transformed_color(text_words_x, text_words_y, words, -1, text_width, 
			text_scale,text_scale, 0, 
			text_base, text_base, text_tint, text_base, 1);
		textFormatSet();

		for(i=0; i<2000; i+=100) {
			draw_rectangle(i,i,i+100,i+100, false);
			draw_text(i,i,string(i))
		}
//		show_debug_message("showing text at " + string(text_words_x) + " " + string(text_words_y) + " of surface at " + string(controller.textSurfaceX) + " " + string(controller.textSurfaceY));
	}
}
*/
draw_self();