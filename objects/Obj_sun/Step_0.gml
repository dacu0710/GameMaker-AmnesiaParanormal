timer++;
if(timer >= 180)
{
	instance_create_layer(x,y,"Monster",Obj_shellFeather);
	timer = 0;
}
var current_step = floor(hp / 10);

if ((current_step != 6) and current_step < last_trigger_step) {
	instance_create_layer(x,y,"Core",Obj_lightLay);
	mode++;
	//show_debug_log(mode);
    last_trigger_step = current_step;
}
if(hp <= 0)
{
	instance_destroy();
}