speed = 4;
direction = 270;
timer++;
if(y >= 448)
{
	global.Sanity -= 10;
}
if(timer >= 60)
{
	global.Sanity -= 1;
	timer = 0;
}