screen = [256,448]
if (room == R_Title)
{
	{
		var StartText = "Start Game"
		if (KeyManager.TitleSelectNum == 2) {
			draw_set_colour(make_color_rgb(240,86,80));
		} else {
			draw_set_colour(make_color_rgb(255, 255, 255));
		}
		draw_text((screen[0]-string_width(StartText))/2,screen[1]/2-string_height(StartText),StartText);
	}
	{
		var KeyConfirmText = "Key Confirm"
		if (KeyManager.TitleSelectNum == 1) {
			draw_set_colour(make_color_rgb(240,86,80));
		} else {
			draw_set_colour(make_color_rgb(255, 255, 255));
		}
		draw_text((screen[0]-string_width(KeyConfirmText))/2,screen[1]/2+string_height(KeyConfirmText)*1,KeyConfirmText);
	}
	{
		var QuickText = "Quick Game"
		if (KeyManager.TitleSelectNum == 0) {
			draw_set_colour(make_color_rgb(240,86,80));
		} else {
			draw_set_colour(make_color_rgb(255, 255, 255));
		}
		draw_text((screen[0]-string_width(QuickText))/2,screen[1]/2+string_height(QuickText)*3,QuickText);
	}
	{
		var GuideText = "[PUSH ENTER BUTTON TO SELECT]"
		draw_set_colour(make_color_rgb(255, 255, 255));
		draw_text((screen[0]-string_width(GuideText))/2,screen[1]/2+string_height(GuideText)*6,GuideText);
	}
	{
		var ScoreText = "High Score : "+string(global.Score);
		draw_set_colour(make_color_rgb(255, 255, 255));
		draw_text(0,screen[1]-string_height(ScoreText),ScoreText);
	}
}