speed = 3;
direction = 270;
timer++;

if(timer >= 20)
{
	for(i = 0;i<3;i++)
	{
		instance_create_layer(x,y,"Monster",Obj_injection_thorn);
	}
	timer = 0;
}