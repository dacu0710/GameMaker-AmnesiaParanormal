var KEY = keyboard_key;
if (room == R_Title)
{
	show_debug_message(KEY)
	switch(KEY)
	{
		case global.KeyBind.StartKey:
			room_goto(R_Main);
			break;
		default:
			break;
	}	
}