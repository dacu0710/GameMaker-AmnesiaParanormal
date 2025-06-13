image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
image_alpha = 1;
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
	instance_create_layer(random_num,224,"Light",Obj_lightLay);
	if(mode < 3) mode++;
    last_trigger_step = current_step;
}
if(hp <= 0)
{
	FadeManager.fade_color = c_white;
	FadeManager.fade_mode = "out"
	end_timer++;
	if(end_timer >= 60)
	{
		GameManager.CurrnentScore += 30;
		global.Score = max(global.Score,GameManager.CurrnentScore);
		global.EndMessage = "Victory!"
		room_goto(R_End);
	}
}
if(is_damage)
{
	damage_timer ++;
	if(damage_timer >= 30) 
	{
		is_damage = 0;
		damage_timer = 0;
	}
	flash_timer++;

    if (flash_timer >= flash_speed)
    {
        isWhite = !isWhite;
        flash_timer = 0;
    }
}