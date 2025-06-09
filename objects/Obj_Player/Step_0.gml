image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기

MoveForce = [Horizontal/100,Vertical/100];
if(room == R_Main)
{
	if(x+MoveForce[0]-PlayerSize[0]/2 > 0 and x+MoveForce[0]+PlayerSize[0]/2 < window_get_width()/3)
	{
		x += MoveForce[0];
	}
	if(y+MoveForce[1]-PlayerSize[1]/2  > 0 and y+MoveForce[1]+PlayerSize[1]/2  < window_get_height()/3)
	{
		y += MoveForce[1];
	}
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

//충돌 판정
var _collider = function(_element, _index)
{
	if(place_meeting(x,y,_element))
	{
		//충돌
		var _instance = instance_nearest(x,y,_element);
		if(variable_instance_exists(_instance,"Damage"))
		{
			TakeDamage(_instance.Damage);
			if(_instance.object_index == Obj_cusp)
			{
				instance_destroy(_instance)
			}
		}
		show_debug_message("{0} 부딧침",_instance);
	}
	
}
array_foreach(Enemys,_collider);