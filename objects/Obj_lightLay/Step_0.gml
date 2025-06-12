image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
timer++;
if(timer >= 60)
{
	global.Sanity = min(100,global.Sanity+1);
	timer = 0;
}