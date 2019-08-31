// show_debug_message("arg number: " + string(argument_count))
if(argument_count==0) {
	_format = global.defaultTextFormat;
} else {
	_format = argument[0];
}

is_dialog=false;
text_base = c_white;
bubble_align = "normal";
bubble_jitter = 0;

switch _format {
	case "desc":
		draw_set_font(FDefault);
		text_tint = c_white;
		between_texts_margin = 10;
		break;
	case "poem":
		draw_set_font(FPoem);
		text_tint = text_tint==0 ? text_tint : make_color_rgb(200,200,255);
		between_texts_margin = 10;
		break;
	case "dia1":
		draw_set_font(FDefault);
		is_dialog = true;
		dialog_bg = STextBubble;
		text_tint = c_gray;
		text_base = c_gray;
		bg_tint = c_fuchsia;
		between_texts_margin = 30;
		bubble_align = "left";
		bubble_jitter = 0;
		break;
	case "dia2":
		draw_set_font(FDefault);
		dialog_bg = STextBubble;
		is_dialog = true;
		text_base = c_gray;
		text_tint = c_gray;
		bg_tint = c_yellow;
		between_texts_margin = 30;
		bubble_jitter = 0;
		bubble_align = "right";
		break;
	default:
		draw_set_font(FDefault);
		text_tint = c_white;
		between_texts_margin = 10;
		break;
}