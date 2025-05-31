speed = 1.5;
direction = 270;

if(y >= 448)
{
	for(i = 0;i<8;i++)
	{
		var t = instance_create_layer(x,y,"Monster",Obj_eye_thorn);
		t.i = i;
	}
	i = 0;
	instance_destroy();
}