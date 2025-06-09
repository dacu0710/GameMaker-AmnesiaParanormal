Damage = 5;
hp = 0;
is_damage = 0;
timer = 0;
function TakeDamage(_Damage)
{
	hp -= _Damage;
	is_damage = 1;
}
