screen = [256,448]
draw_set_alpha(1);
{
	var EndText = global.EndMessage;
	draw_set_colour(make_color_rgb(255, 255, 255));
	draw_text((screen[0]-string_width(EndText))/2,(screen[1]-string_height(EndText))/2,EndText);
}