timer++;
if(ch == 0 and timer >= timer_Max and  can_spawn)
{
	temp();
	ch1monsterSpawn(monster_random_num);
}
if(ch == 1 and timer >= timer_Max and  can_spawn)
{
	temp();
	ch2monsterSpawn(monster_random_num);
}
if(ch == 2 and timer >= timer_Max and  can_spawn)
{
	temp();
	ch3monsterSpawn(monster_random_num);
}
if (!can_spawn && timer == 0)
{
    can_spawn = true;
}
if(p_test >= 5)
{
	ch++;
	p_test = 0;
}