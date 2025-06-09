speed = 1.5;
direction = 270;

if(y >= 448)
{
	for(var i = 0;i<8;i++)
	{
		var t = instance_create_layer(x,y,"Monster",Obj_thorn);
		t.direction = i*45
	}
	instance_destroy();
}
if(y > 448) instance_destroy();