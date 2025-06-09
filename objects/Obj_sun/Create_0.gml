timer = 0;
hp = 70;
mode = 0;
blow = 0;
prev_hp = hp;
last_trigger_step = floor(hp / 10); 
Damage = 20;
function TakeDamage(_Damage)
{
	hp -= _Damage;
	if (instance_exists(Obj_shellWall_left)) {
		Obj_shellWall_left.x = -96;
	}
	if (instance_exists(Obj_shellWall_right)) {
		Obj_shellWall_right.x = 224;
	}
}