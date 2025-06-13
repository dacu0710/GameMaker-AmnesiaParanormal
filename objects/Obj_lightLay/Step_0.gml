timer++;
if(timer >= 60)
{
	global.Sanity = min(100,global.Sanity+1);
	timer = 0;
}