if(isWhite)
{
	image_blend = make_color_hsv(0,0,255);
	gpu_set_fog(true,c_white,0,0);
	draw_self();
	gpu_set_fog(false,c_black,0,0);
} 
else 
{
	gpu_set_fog(false,c_black,0,0);
	draw_self();
}
draw_set_alpha(1);