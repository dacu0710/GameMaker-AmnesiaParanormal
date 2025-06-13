draw_set_alpha(1);
if(isWhite)
{
	image_blend = make_color_hsv(0,0,255);
	gpu_set_fog(true,c_white,0,0);
	draw_sprite(Spr_sun,mode,128,32);
	gpu_set_fog(false,c_black,0,0);
} 
else 
{
	image_blend = make_color_hsv(0,0,global.Bright*(255/100));
	gpu_set_fog(false,c_black,0,0);
	draw_sprite(Spr_sun,mode,128,32);
}

//draw_text(100,100,mode);
//if(hp >= 0) draw_text(100,120,hp);

