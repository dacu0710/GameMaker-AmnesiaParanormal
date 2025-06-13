image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
Damage = 10 + (100 - global.Sanity)/10;
draw_set_alpha(1);
if(room == R_Main)
{
	
	var _collider = function(_element, _index)
	{
		if(place_meeting(x+MoveForce[0],y+MoveForce[1],_element))
		{
			var _instance = instance_nearest(x,y,_element);
			if(!is_undefined(_instance.TakeDamage))
			{
				if(_instance.hp < Damage and _instance.hp > 0)
				{
					//show_debug_message("{0},{1}",_instance.hp , Damage)
					instance_create_layer(x+Obj_Player.PlayerSize[0],y,"Player",Obj_Guidedbullet);
					instance_create_layer(x-Obj_Player.PlayerSize[0],y,"Player",Obj_Guidedbullet);
					instance_create_layer(x,y-Obj_Player.PlayerSize[1],"Player",Obj_Guidedbullet);
					Obj_Player.alarm[1] = Obj_Player.shootLv2Cooltime;
					UIManager.DrawSkillCoorLevel2Rate = Obj_Player.shootLv2Cooltime;
				}
				_instance.TakeDamage(Damage);
			}
			//show_debug_message("{0}맟춤",_instance);
			instance_destroy();
		}
		
		var _nearIns = instance_nearest(x,y,_element);
	}
	array_foreach(Enemys,_collider);
	
	x += MoveForce[0];
	y += MoveForce[1];

}