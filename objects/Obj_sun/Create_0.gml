timer = 0;
end_timer = 0;
damage_timer = 0;
hp = 70;
mode = 0;
blow = 0;
prev_hp = hp;
last_trigger_step = floor(hp / 10); 
Damage = 20;
random_num = 0;
is_damage = 0;
flash_timer = 0;
flash_speed = 5
isWhite = false;
function TakeDamage(_Damage)
{
	hp -= _Damage;
	is_damage = 1;
	if (instance_exists(Obj_shellWall_left)) {
		Obj_shellWall_left.x =-64;
	}
	if (instance_exists(Obj_shellWall_right)) {
		Obj_shellWall_right.x = 256+64;
	}
}