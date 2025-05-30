Step++;
if(room == R_Main)
{
	
	var _collider = function(_element, _index)
	{
		if(place_meeting(x+MoveForce[0],y+MoveForce[1],_element) or Step == room_speed * ExplosionTime)
		{
			var _list = ds_list_create();
			var _num = collision_circle_list(x, y, 32, _element, false, true, _list, false);
			for(var i = 0;i < ds_list_size(_list);i++)
			{
				ds_list_add(CollsionEnemys,ds_list_find_value(_list,i));
			}
			instance_create_layer(x,y,"Player",obj_explosion2);
			instance_destroy();
		}
	}
	array_foreach(Enemys,_collider);
	for(var i = 0;i < ds_list_size(CollsionEnemys);i++)
	{
		show_debug_message("{0}맟춤",ds_list_find_value(CollsionEnemys,i));
	}
	
	x += MoveForce[0];
	y += MoveForce[1];

}