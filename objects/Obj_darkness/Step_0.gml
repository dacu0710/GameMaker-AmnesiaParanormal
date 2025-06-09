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
if(y > 448 or hp <= 0) {
	image_alpha -= 0.05;
	if(image_alpha<=0) instance_destroy();
}