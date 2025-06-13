Damage = 3;
hp = 5;
is_damage = 0;
timer = 0;
flash_timer = 0;
flash_speed = 5
isWhite = false;
image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
function TakeDamage(_Damage)
{
	hp -= _Damage;
	is_damage = 1;
}
