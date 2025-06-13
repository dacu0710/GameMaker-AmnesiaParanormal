screen = [display_get_gui_width(),display_get_gui_height()];
if(global.Sanity <= 0) //GameOver
{

	if(global.BrightLevel == 6)
	{
		global.EndMessage = "Lose!";
		room_goto(R_End);
	}
}
if(instance_exists(Spawn_Manager) and instance_exists(FadeManager)) //Chapter 변경 표시
{
	
	if(OldCh != CurrnentCh and room == R_Main and Spawn_Manager.ch <= 2)
	{
		var _BlinkTime = room_speed*2
		draw_set_colour(make_color_hsv(0,0,max(alarm_get(0),0)*(255/_BlinkTime)));
		var _Text = "[CHAPTER " + string(Spawn_Manager.ch+1)+"]";
		var _TextSize = [string_width(_Text),string_height(_Text)];
		draw_text((RoomSize[0]-_TextSize[0])/2,(RoomSize[0]-_TextSize[1])/2,_Text);
		if(alarm_get(0) == -1)
		{
			FadeManager.fade_mode = "out";
			alarm_set(0,_BlinkTime);
		}
	}

}

//show_debug_message("{0},{1}",global.Score,GameManager.CurrnentScore)
