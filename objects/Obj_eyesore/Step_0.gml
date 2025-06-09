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
if(y > 448 or hp <= 0) {
	image_alpha -= 0.05;
	if(image_alpha<=0) instance_destroy();
}
if(is_damage)
{
	timer ++;
	image_blend = c_red;
	if(timer >= 30) 
	{
		is_damage = 0;
		timer = 0;
		image_blend = c_white;
	}
}