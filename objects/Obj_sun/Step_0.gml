timer++;
if(timer >= 180)
{
	instance_create_layer(x,y,"Monster",Obj_shellFeather);
	timer = 0;
}
var current_step = floor(hp / 10);

if ((current_step != 6) and current_step < last_trigger_step) {
	randomize();
	random_num = random_range(32,224)
	instance_create_layer(random_num,224,"Right",Obj_lightLay);
	if(mode < 3) mode++;
    last_trigger_step = current_step;
}
if(hp <= 0)
{
	end_timer++;
	if(end_timer >= 60)
	{
		game_end()
		instance_destroy();
	}
}
if(is_damage)
{
	damage_timer ++;
	image_blend = c_red;
	if(timer >= 30) 
	{
		is_damage = 0;
		timer = 0;
		image_blend = c_white;
	}
}