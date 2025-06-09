Damage = 0;
hp = 20;
is_damage = 0;
function TakeDamage(_Damage)
{
	hp -= _Damage;
	is_damage = 1;
}
timer = 0;