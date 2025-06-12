var KEY = keyboard_key;
if (room == R_Title)
{
	switch(KEY)
	{
		case global.KeyBind.StartKey:
			room_goto(R_Main);
			break;
		case ord("1"):
		case ord("2"):
		case ord("3"):
		case ord("4"):
			global.LogoSpriteSubmit = real(KEY)-1;
			break;
		case vk_enter:
			switch(TitleSelectNum)
			{
				case 2://Start
					room_goto(R_Main);
					break;
				case 1://Ket confirm
					global.EndMessage = "ARROW : move\nZ : basic attack\nX : GuideBullet attack\nC : bomb attack"
					room_goto(R_End);
					break;
				case 0://Exit
					game_end();
					break;
				default:
					break;
			}
		default:
			break;
	}
	if(keyboard_check_released(vk_up))
	{
	TitleSelectNum = TitleSelectNum < 2 ? TitleSelectNum + 1 : 0;	
	}
	if(keyboard_check_released(vk_down))
	{
	TitleSelectNum = TitleSelectNum > 0 ? TitleSelectNum - 1 : 2;
	}
	
}
if(room == R_Main)
{
	if(instance_exists(Obj_Player))
	{
		Obj_Player.PlayerKey(KEY);
	}
	
	if(keyboard_check_released(global.KeyBind.GamePauseKey))
	{
		isPause = !isPause;
		if(isPause)
		{
			surface_copy(suf,0,0,application_surface);
			var _Deactivate_Layers = 
			["Core","Monster","UI","Player"]
			for(var i = 0; i < array_length(_Deactivate_Layers); i++)
			{
				instance_deactivate_layer(_Deactivate_Layers[i]);
			}		
		} 
		else 
		{
			instance_activate_all();
		}
	}
	
}