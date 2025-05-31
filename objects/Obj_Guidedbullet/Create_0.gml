UIBulletSpeed = 8;

MoveForce = [0,-BulletSpeed];
Enemys = [
Obj_cusp,Obj_eyesore,Obj_injection,Obj_thorn,
Obj_core,Obj_darkness,Obj_meatWall,Obj_sphere,
Obj_lightLay,Obj_shellFeather,Obj_shellWall,Obj_sun]

Damage = 10 + (100 - global.Sanity)/10;

NearDistance = infinity;
NearInstance = self.id;

var _collider = function(_element, _index)
{
	var _nearIns = instance_nearest(x,y,_element);
	if(_nearIns != noone)
	{
		if(NearDistance > point_distance(x,y,_nearIns.x,_nearIns.y))
		{
			NearDistance = min(NearDistance,point_distance(x,y,_nearIns.x,_nearIns.y));
			NearInstance = _nearIns;
		}	
	}
}
array_foreach(Enemys,_collider);
if(instance_exists(NearInstance))
{
	var _dir = point_direction(x, y, NearInstance.x, NearInstance.y)
	var _Move_Force = [lengthdir_x(BulletSpeed,_dir),lengthdir_y(BulletSpeed,_dir)]
	image_angle = _dir-90;
	MoveForce = _Move_Force;
}