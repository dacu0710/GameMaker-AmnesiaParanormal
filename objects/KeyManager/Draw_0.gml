if(isPause)
{
	var PauseText = "Pause";
	draw_surface_ext(suf,0,0,1/3,1/3,0,c_white,1);
	draw_text((screen[0]-string_width(PauseText))/2,(screen[1]-string_height(PauseText))/2-30,PauseText);
}