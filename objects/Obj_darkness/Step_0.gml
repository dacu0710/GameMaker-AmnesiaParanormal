speed = 4;
direction = 270;
image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
timer++;
if(y >= 448 and check == 0)
{
	global.Sanity -= 10;
	check++;
}
if(timer >= 60)
{
	global.Sanity -= 1;
	timer = 0;
}
if(y > 448) {
	instance_destroy();
}
if(hp <= 0) {
	image_alpha -= 0.05;
	if(image_alpha<=0){ 
		instance_destroy();
		GameManager.CurrnentScore += 20;
		global.Sanity = min(100,global.Sanity+global.SanityRecovery);
	}
}
if(is_damage)
{
	damage_timer ++;
	if(damage_timer >= 30) 
	{
		is_damage = 0;
		damage_timer = 0;
	}
	flash_timer++;

    if (flash_timer >= flash_speed)
    {
        isWhite = !isWhite;
        flash_timer = 0;
    }
}