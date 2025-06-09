speed = 3;
direction = 270;
timer++;

if(timer >= 20)
{
	for(i = -1;i<2;i++)
	{
		var _thorn = instance_create_layer(x+i*20,y,"Monster",Obj_thorn);
		_thorn.direction = point_direction(x,y,Obj_Player.x,Obj_Player.y);
	}
	timer = 0;
}
if(y > 448 or hp <= 0) {
	image_alpha -= 0.05;
	if(image_alpha<=0) instance_destroy();
}
if(is_damage)
{
	damage_timer ++;
	image_blend = c_red;
	if(timer >= 30) 
	{
		is_damage = 0;
		timer = 0;
		image_blend = c_white;
	}
}