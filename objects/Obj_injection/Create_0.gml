Damage = 8;
hp = 3;
is_damage = 0;
damage_timer = 0;
flash_timer = 0;
flash_speed = 5
isWhite = false;
function TakeDamage(_Damage)
{
	hp -= _Damage;
	is_damage = 1;
}


timer = 0;
i = 0;