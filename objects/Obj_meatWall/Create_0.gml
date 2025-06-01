Damage = 20;

random_x = 0;
random_y = 0;
i = 0;
hp = 2;

random_x = random_range(0,256);

for(i = 0;i<2;i++)
{
	random_x = random_range(0,256);
	random_y = random_range(0,64);
	instance_create_layer(random_x,random_y,"Core",Obj_core);
}