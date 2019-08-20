if(argument_count==0) {
	format = global.defaultTextFormat;
} else {
	format = argument0;
}

draw_set_font(FDefault);
global.text_tint = c_white;
between_texts_margin = 20;

switch format {
	case "desc":
		draw_set_font(FDefault);
		global.text_tint = c_white;
		between_texts_margin = 20;
		break;
	case "poem":
		draw_set_font(FPoem);
		global.text_tint = c_blue;
		between_texts_margin = 20;
		break;
	default:
		draw_set_font(FDefault);
		global.text_tint = c_white;
		between_texts_margin = 20;
		break;
}