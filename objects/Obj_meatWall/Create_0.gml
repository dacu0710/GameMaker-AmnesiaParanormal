Damage = 20;
hp = 2;
function TakeDamage(_Damage)
{
	return;
}

random_x = 0;
random_y = 0;

for(i = 0;i<2;i++)
{
	random_x = random_range(20,232);
	random_y = random_range(y-12,y+32);
	instance_create_layer(random_x,random_y,"Core",Obj_core);
}