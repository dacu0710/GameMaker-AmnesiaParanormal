timer++
if(timer >= 300 and p_test == 0)
{
	instance_create_layer(32,64,"Monster",Obj_injection);
	instance_create_layer(224,64,"Monster",Obj_injection);
	p_test++;
}
if(timer >= 600 and p_test == 1)
{
	instance_create_layer(128,64,"Monster",Obj_injection);
	p_test++;
}
if(timer >= 750 and p_test == 2)
{
	switch(random_num_1)
	{
		case 0:
			instance_create_layer(32,64,"Monster",Obj_cusp);
			p_test++;
			break;
		case 1:
			instance_create_layer(128,64,"Monster",Obj_cusp);
			p_test++;
			break;
		case 2:
			instance_create_layer(228,64,"Monster",Obj_cusp);
			p_test++;
			break;
	}
}
if(timer >= 960 and p_test == 3)
{
	switch(random_num_2)
	{
		case 0:
			instance_create_layer(32,64,"Monster",Obj_eyesore);
			p_test++;
			break;
		case 1:
			instance_create_layer(228,64,"Monster",Obj_eyesore);
			p_test++;
			break;
	}
}
