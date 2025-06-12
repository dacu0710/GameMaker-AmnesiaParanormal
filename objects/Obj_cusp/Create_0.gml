Damage = 5;
hp = 1;
is_damage = 0;
timer = 0;
flash_timer = 0;
flash_speed = 5
isWhite = false;
function TakeDamage(_Damage)
{
	hp -= _Damage;
	is_damage = 1;
}
