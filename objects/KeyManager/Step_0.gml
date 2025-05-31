var KEY = keyboard_key;
if (room == R_Title)
{
	switch(KEY)
	{
		case global.KeyBind.StartKey:
			room_goto(R_Main);
			break;
		default:
			break;
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