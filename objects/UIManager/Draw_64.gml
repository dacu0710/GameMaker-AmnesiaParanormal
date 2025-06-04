var _UIColor = make_color_hsv(0,0,global.Bright*(255/100));//밝기
draw_set_colour(_UIColor);
if(room = R_Main)
{
	if(isSanityRateUI)
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
		}
	}
	if(isSkillCoolUI)//미완
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
		}
	}
	if(isBrightLevelUI)
	{
		var _Scale = 1;
		var _SprSize = [sprite_get_width(Spr_DraknessLevel)*_Scale,sprite_get_height(Spr_DraknessLevel)*_Scale];
		var _SprPos = [0,screen[1]-_SprSize[1]-sprite_get_height(Spr_SanityGage)];
		draw_sprite_ext(Spr_DraknessLevel,0,_SprPos[0],_SprPos[1],_Scale,_Scale,0,_UIColor,1);
		var _TextSize = [string_width(string(global.BrightLevel))*3,string_height(string(global.BrightLevel))*3]
		draw_text_transformed((_SprPos[0]*2+_SprSize[0]-_TextSize[0])/2,(_SprPos[1]*2+_SprSize[1]-_TextSize[1])/2,string(global.BrightLevel),3,3,0);
	}
}
