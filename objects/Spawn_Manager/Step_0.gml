timer++;
if(ch == 0 and timer >= timer_Max and can_spawn)
{
	temp();
	ch1monsterSpawn(monster_random_num);
}
if(ch == 1 and timer >= timer_Max and can_spawn)
{
	temp();
	ch2monsterSpawn(monster_random_num);
}
if(ch == 2 and boss_spawn == 0)
{
	var _SprSize = [sprite_get_width(Spr_shellWall),sprite_get_height(Spr_shellWall)]
	instance_create_layer(128,32,"Monster",Obj_sun);
	instance_create_layer(-_SprSize[0]/2,224,"Monster",Obj_shellWall_left);
	instance_create_layer(256+_SprSize[0]/2,224,"Monster",Obj_shellWall_right);
	boss_spawn = 1;
}
if(ch == 2 and timer >= timer_Max and can_spawn)
{
	temp();
	ch3monsterSpawn(monster_random_num);
}

if (!can_spawn && timer == 0)
{
    can_spawn = true;
}
if(p_test >= 10)
{
	ch++;
	p_test = 0;
}