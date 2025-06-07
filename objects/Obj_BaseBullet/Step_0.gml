image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기

if(room == R_Main)
{
	
	var _collider = function(_element, _index)
	{
		if(place_meeting(x+MoveForce[0],y+MoveForce[1],_element))
		{
			//instance_destroy(slef);
			show_debug_message("{0}맟춤",_element.id);
		}
	}
	array_foreach(Enemys,_collider);
	
	x += MoveForce[0];
	y += MoveForce[1];

}