if(room == R_Main)
{
	
	var _collider = function(_element, _index)
	{
		if(place_meeting(x+MoveForce[0],y+MoveForce[1],_element))
		{
			instance_destroy();
		}
	}
	array_foreach(Enemys,_collider);
	
	x += MoveForce[0];
	y += MoveForce[1];

}