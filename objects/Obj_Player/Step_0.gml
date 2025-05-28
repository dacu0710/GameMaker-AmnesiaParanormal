image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기

MoveForce = [Horizontal/100,Vertical/100];
if(room == R_Main)
{
	x += MoveForce[0];
	y += MoveForce[1];
}