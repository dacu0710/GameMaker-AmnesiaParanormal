var _UIColor = make_color_hsv(0,0,global.Bright*(255/100));//밝기
if(room = R_Main)
{
	{
		var _Scale = 1
		var _SprSize = [sprite_get_width(Spr_SanityGage)*_Scale,sprite_get_height(Spr_SanityGage)*_Scale];
		var _SprPos = [screen[0]/2,screen[1]-_SprSize[1]/2];
		draw_sprite_ext(Spr_SanityGage,0,_SprPos[0],_SprPos[1],_Scale,_Scale,0,_UIColor,1);
	}
	{
		var _Scale = 1
		var _SprSize = [sprite_get_width(Spr_SanityRate)*_Scale,sprite_get_height(Spr_SanityRate)*_Scale];
		var _SprPos = [0,screen[1]-_SprSize[1]];
		DrawSanityRate = lerp(DrawSanityRate,_SprSize[0]*(global.Sanity/100)/_Scale,0.1);
		draw_sprite_part_ext(Spr_SanityRate,0,0,0,DrawSanityRate,_SprSize[1],_SprPos[0],_SprPos[1],_Scale,_Scale,_UIColor,1);
		show_debug_message(_SprSize[0]*(global.Sanity/100)/_Scale)
	}
}