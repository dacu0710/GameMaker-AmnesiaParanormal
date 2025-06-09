speed = 2;
direction = 270;
if(hp <= 0)
{
	Obj_meatWall.hp--;
	image_alpha -= 0.05;
	if(image_alpha<=0) instance_destroy();
}
if(y > 448) instance_destroy();
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