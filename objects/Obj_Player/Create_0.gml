Vertical = 0;
Horizontal = 0;
MoveForce = [Horizontal/100,Vertical/100];

PlayerMaxSpeed = 4;
PlayerDeltaSpeed = PlayerMaxSpeed*6;

function PlayerKey(key)
{
	if(keyboard_check(global.KeyBind.PlayerDownKey))
	{
		if(Vertical < PlayerMaxSpeed*100)
		{
			Vertical += PlayerDeltaSpeed;
			show_debug_message(MoveForce);
		}
	}
	if(keyboard_check(global.KeyBind.PlayerUPKey))
	{
		if(Vertical > -PlayerMaxSpeed*100)
		{
			Vertical -= PlayerDeltaSpeed;
			show_debug_message(MoveForce);
		}
	}
	if(!keyboard_check(global.KeyBind.PlayerUPKey) and
	!keyboard_check(global.KeyBind.PlayerDownKey))
	{
		if(Vertical != 0)
		{
			Vertical -= sign(Vertical)*PlayerDeltaSpeed;
		}		
	}
	
	if(keyboard_check(global.KeyBind.PlayerRightKey))
	{
		if(Horizontal < PlayerMaxSpeed*100)
		{
			Horizontal += PlayerDeltaSpeed;
		}
	}
	if(keyboard_check(global.KeyBind.PlayerLeftKey))
	{
		if(Horizontal > -PlayerMaxSpeed*100)
		{
			Horizontal -= PlayerDeltaSpeed;
		}
	}
	if(!keyboard_check(global.KeyBind.PlayerLeftKey) and
	!keyboard_check(global.KeyBind.PlayerRightKey))
	{
		if(Horizontal != 0)
		{
			Horizontal -= sign(Horizontal)*PlayerDeltaSpeed;
		}		
	}
}