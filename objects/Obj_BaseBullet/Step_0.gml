image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기

if(room == R_Main)
{
	
	var _collider = function(_element, _index)
	{
		if(place_meeting(x+MoveForce[0],y+MoveForce[1],_element))
		{
<<<<<<< HEAD
			//instance_destroy(slef);
=======
			//instance_destroy();
>>>>>>> 0ab18ef6488be02991bc77ab18f328e08f8c8dd8
		}
	}
	array_foreach(Enemys,_collider);
	
	x += MoveForce[0];
	y += MoveForce[1];

}