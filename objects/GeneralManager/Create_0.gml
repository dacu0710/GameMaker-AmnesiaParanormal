global.step = 0;

global.KeyBind = 
{
	PlayerUPKey : vk_up,
	PlayerDownKey : vk_down,
	PlayerLeftKey : vk_left,
	PlayerRightKey : vk_right,
	ShootLV1Key : ord( "Z" ), //파편탄
	ShootLV2Key : ord( "X" ), //유도탄
	ShootLV3Key : ord( "C" ), //수류탄
	
	GamePauseKey : vk_escape
	
}

global.Sanity = 100;
global.SanityRecovery = 5;
global.Bright = 100;
global.BrightLevel = 1;
global.isPause = false;

if ( !variable_global_exists("LogoSpriteSubmit") )
{
	global.LogoSpriteSubmit = 0;
}
if (!variable_global_exists("Score"))
{
	global.Score = 0;
}
if (!variable_global_exists("EndMessage"))
{
	global.EndMessage = "";
}

randomize();

instance_create_layer(0,0,"Manager",KeyManager);
instance_create_layer(0,0,"Manager",GameManager);
instance_create_layer(0,0,"Manager",UIManager);