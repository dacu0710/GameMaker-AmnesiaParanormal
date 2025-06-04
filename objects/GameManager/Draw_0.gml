if(global.Sanity <= 0) //GameOver
{
	var GameOverText = "Game Over"
	draw_set_colour(make_color_rgb(255, 255, 255));
	draw_text((RoomSize[0]-string_width(GameOverText))/2,RoomSize[1]/2-string_height(GameOverText),GameOverText);
	if(global.BrightLevel == 6)
	{
		game_end();
	}
}