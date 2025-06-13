speed = 1.5;
direction = 270;
image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
draw_set_alpha(1);
if(y >= 448)
{
	for(var i = 0;i<8;i++)
	{
		var t = instance_create_layer(x,y,"Monster",Obj_thorn);
		t.direction = i*45
	}
	instance_destroy();
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