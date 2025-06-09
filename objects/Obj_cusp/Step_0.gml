image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기

move_towards_point(Obj_Player.x,Obj_Player.y,2);
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