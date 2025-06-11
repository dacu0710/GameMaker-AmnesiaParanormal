screen = [display_get_gui_width(),display_get_gui_height()];
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

if(OldCh != CurrnentCh and room == R_Main)
{
	var _BlinkTime = room_speed*2
	draw_set_colour(make_color_hsv(0,0,max(alarm_get(0),0)*(255/_BlinkTime)));
	var _Text = "[CHAPTER " + string(Spawn_Manager.ch+1)+"]";
	var _TextSize = [string_width(_Text),string_height(_Text)];
	draw_text((RoomSize[0]-_TextSize[0])/2,(RoomSize[0]-_TextSize[1])/2,_Text);
	if(alarm_get(0) == -1)
	{
		alarm_set(0,_BlinkTime);
	}
}