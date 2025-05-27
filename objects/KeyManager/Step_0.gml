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
		Obj_Player.PlayerKey(KEY)
	}
}