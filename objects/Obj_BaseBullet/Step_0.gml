image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
Damage = 5*(Obj_Player.Lv1BulletSize / 100)
if(room == R_Main)
{
	
	var _collider = function(_element, _index)
	{
		if(place_meeting(x+MoveForce[0],y+MoveForce[1],_element))
		{
			var _instance = instance_nearest(x,y,_element);
			if(!is_undefined(_instance.TakeDamage))
			{
				_instance.TakeDamage(Damage);
			}
			//show_debug_message("{0}맟춤",_element.id);
			instance_destroy();
		}
	}
	array_foreach(Enemys,_collider);
	
	x += MoveForce[0];
	y += MoveForce[1];

}