image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
image_angle = point_direction(Obj_Player.x,Obj_Player.y,x,y) + 90;
move_towards_point(Obj_Player.x,Obj_Player.y,2);


if(y > 448) instance_destroy();

if(hp <= 0) {
	image_alpha -= 0.05;
	if(image_alpha<=0)
	{
		GameManager.CurrnentScore += 10;
		global.Sanity = min(100,global.Sanity+global.SanityRecovery);
		instance_destroy();
	}
}
if(is_damage)
{
	timer ++;
	if(timer >= 30) 
	{
		is_damage = 0;
		timer = 0;
	}
	flash_timer++;

    if (flash_timer >= flash_speed)
    {
        isWhite = !isWhite;
        flash_timer = 0;
    }
}