image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기

MoveForce = [Horizontal/100,Vertical/100];
if(room == R_Main)
{
	x += MoveForce[0];
	y += MoveForce[1];
}
if(isDamaged)
{
	if(alarm_get(3) == -1)
	{
		alarm_set(3,room_speed * 0.3);
	}

    flash_timer++;

    if (flash_timer >= flash_speed)
    {
        image_alpha = 1 - image_alpha;
        flash_timer = 0;
    }
}
else
{
    image_alpha = 1;
}
