// show_debug_message("arg number: " + string(argument_count))
if(argument_count==0) {
	_format = global.defaultTextFormat;
} else {
	_format = argument[0];
}

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
	default:
		draw_set_font(FDefault);
		text_tint = c_white;
		between_texts_margin = 10;
		break;
}