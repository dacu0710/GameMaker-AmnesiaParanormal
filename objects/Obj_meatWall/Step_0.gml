speed = 0.5;
direction = 270;
draw_set_alpha(1);
image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
if(hp<=0 or col_hp <= 0)
{
	image_alpha -= 0.05;
	if(image_alpha<=0) instance_destroy();
}
if(y > 448) {
	Spawn_Manager.meat_wall_spawn = 0;
	instance_destroy();
}