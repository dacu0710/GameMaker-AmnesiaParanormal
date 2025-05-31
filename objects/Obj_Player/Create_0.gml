Vertical = 0;
Horizontal = 0;
MoveForce = [Horizontal/100,Vertical/100];

PlayerMaxSpeed = 4;//*100 = vlaue
PlayerDeltaSpeed = PlayerMaxSpeed*6;

weaponLevel = 1;

shootLv1Cooltime = 10;
Lv1BulletSize = 100;
shootLv2Cooltime = 20;//유도
shootLv3Cooltime = 20;//수류탄

isDamaged = false;
flash_timer = 0;
flash_speed = 5;

PlayerSize = [sprite_width,sprite_height];

//정신력 in GeneralManager
//global.Sanity = 100;

function PlayerKey(key)
{
	//move
	if(keyboard_check(global.KeyBind.PlayerDownKey))
	{
		if(Vertical < PlayerMaxSpeed*100)
		{
			Vertical += PlayerDeltaSpeed;
		}
	}
	if(keyboard_check(global.KeyBind.PlayerUPKey))
	{
		if(Vertical > -PlayerMaxSpeed*100)
		{
			Vertical -= PlayerDeltaSpeed;
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

	//atk
	if(keyboard_check(global.KeyBind.ShootLV1Key))
	{
		if(alarm_get(0) == -1 and weaponLevel >= 1)
		{
			instance_create_layer(x,y-PlayerSize[1],"Player",Obj_BaseBullet);
			Lv1BulletSize = max(25,Lv1BulletSize - 10);
			alarm_set(0,shootLv1Cooltime);
		}
	} 
	else 
	{
		if(alarm_get(0) == -1 and weaponLevel >= 1)
		{
			Lv1BulletSize = min(100,Lv1BulletSize + 10);
			alarm_set(0,shootLv1Cooltime);
		}
	}
	if(keyboard_check(global.KeyBind.ShootLV2Key))
	{
		if(alarm_get(1) == -1 and weaponLevel >= 1)//임시
		{
				instance_create_layer(x+PlayerSize[0],y,"Player",Obj_Guidedbullet);
				instance_create_layer(x-PlayerSize[0],y,"Player",Obj_Guidedbullet);
				instance_create_layer(x,y-PlayerSize[1],"Player",Obj_Guidedbullet);
				alarm_set(1,shootLv2Cooltime);
		}
	}
	if(keyboard_check(global.KeyBind.ShootLV3Key))
	{
		if(alarm_get(2) == -1 and weaponLevel >= 1)
		{
				instance_create_layer(x,y-PlayerSize[1],"Player",Obj_GrenadeBullet);
				alarm_set(2,shootLv3Cooltime);
		}
	}
	
}

/// @function TakeDamage
/// @description 플레이어 데미지 넣기
/// @param {real} _damage 플레이어가 입을 데미지
function TakeDamage(_damage)
{
	if(!isDamaged)
	{
		global.Sanity -= _damage;
		isDamaged = true
	}
}
/// @function addForce
/// @description 플레이어 이동 힘 추가
/// @param {array} _ForceVec 추가할 힘
function addForce(_ForceVec)
{
	if(array_length(_ForceVec) == 2)
	{
		MoveForce = _ForceVec;
	}
}