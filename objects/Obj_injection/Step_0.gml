speed = 3;
direction = 270;
timer++;
image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
if(timer >= 20)
{
	for(i = -1;i<2;i++)
	{
		var _thorn = instance_create_layer(x+i*20,y,"Monster",Obj_thorn);
		_thorn.direction = point_direction(x,y,Obj_Player.x,Obj_Player.y);
	}
	timer = 0;
}
if(y > 448) {
	instance_destroy();
}
if(hp <= 0) {
	image_alpha -= 0.05;
	if(image_alpha<=0){ 
		instance_destroy();
		global.Sanity = min(100,global.Sanity+global.SanityRecovery);
		GameManager.CurrnentScore += 10;
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