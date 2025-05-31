speed = 2;
direction = 270;
if(hp <= 0)
{
	Obj_meatWall.hp--;
	instance_destroy();
}