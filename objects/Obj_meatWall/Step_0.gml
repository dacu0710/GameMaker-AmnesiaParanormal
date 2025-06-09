speed = 2;
direction = 270;
if(hp<=0 or col_hp <= 0)
{
	image_alpha -= 0.05;
	if(image_alpha<=0) instance_destroy();
}
if(y > 448) {
	Spawn_Manager.meat_wall_spawn = 0;
	instance_destroy();
}