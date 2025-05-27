global.KeyBind = 
{
	StartKey : vk_space,
	PlayerUPKey : vk_up,
	PlayerDownKey : vk_down,
	PlayerLeftKey : vk_left,
	PlayerRightKey : vk_right,
	ShootLV1Key : ord( "Z" ), //파편탄
	ShootLV2Key : ord( "X" ), //유도탄
	ShootLV3Key : ord( "C" ), //수류탄
	
}


global.Bright = 100;

instance_create_layer(0,0,"Manager",KeyManager);