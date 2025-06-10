speed = 2;
direction = 270;
if(hp <= 0 or Obj_meatWall.col_hp <= 0)
{
	image_alpha -= 0.05;
	if(image_alpha<=0) {
		Obj_meatWall.hp--;
		instance_destroy();
	}
}
if(y > 448) instance_destroy();
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