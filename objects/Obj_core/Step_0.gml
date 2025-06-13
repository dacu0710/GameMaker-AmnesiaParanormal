speed = 0.5;
direction = 270;
image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
if(instance_exists(Obj_meatWall))
{
	if(hp <= 0 or Obj_meatWall.col_hp <= 0)
	{
		image_alpha -= 0.05;
		if(image_alpha<=0) 
		{
		Obj_meatWall.hp--;
		GameManager.CurrnentScore += 20;
		global.Sanity = Obj_meatWall.col_hp <= 0 ? global.Sanity : min(100,global.Sanity+global.SanityRecovery);
		instance_destroy();
		}
	}
}

if(y > 448) instance_destroy();
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