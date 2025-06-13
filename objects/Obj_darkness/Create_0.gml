image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
Damage = 10;
hp = 15;
is_damage = 0;
check = 0;
flash_timer = 0;
flash_speed = 5
isWhite = false;
damage_timer = 0;
function TakeDamage(_Damage)
{
	hp -= _Damage;
	is_damage = 1;
}

timer = 0;