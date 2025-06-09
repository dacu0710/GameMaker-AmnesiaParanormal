var _UIColor = make_color_hsv(0,0,global.Bright*(255/100));//밝기
screen = [display_get_gui_width(),display_get_gui_height()]
draw_set_colour(_UIColor);
if(room = R_Main)
{
	if(isSanityRateUI && !KeyManager.isPause)
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
	if(isSkillCoolUI && !KeyManager.isPause)
	{
		var _BrightLevelUISize = [sprite_get_width(Spr_DraknessLevel),sprite_get_height(Spr_DraknessLevel)];		
		{//유도탄
			var _Scale = 1
			var _SprSize = [sprite_get_width(Spr_Lv2Cool)*_Scale,sprite_get_height(Spr_Lv2Cool)*_Scale];
			var _SprPos = [_BrightLevelUISize[0],screen[1]-_SprSize[1]-sprite_get_height(Spr_SanityGage)];
			draw_sprite_ext(Spr_Lv2Cool,0,_SprPos[0],_SprPos[1],_Scale,_Scale,0,_UIColor,1);
		}
		{
			var _Scale = 1
			var _SprSize = [sprite_get_width(Spr_Lv2Cool)*_Scale,sprite_get_height(Spr_Lv2Cool)*_Scale];
			var _SprPos = [_BrightLevelUISize[0],screen[1]-sprite_get_height(Spr_SanityGage)];
			DrawSkillCoorLevel2Rate = lerp(DrawSkillCoorLevel2Rate,_SprSize[0]*(Obj_Player.alarm[1]/Obj_Player.shootLv2Cooltime)/_Scale,0.1);
			draw_sprite_part_ext(Spr_CoolRate,0,0,0,_SprSize[0],DrawSkillCoorLevel2Rate,_SprPos[0],_SprPos[1],_Scale,-_Scale,_UIColor,1);
		}
		{//수류탄
			var _Scale = 1
			var _SprSize = [sprite_get_width(Spr_Lv3Cool)*_Scale,sprite_get_height(Spr_Lv3Cool)*_Scale];
			var _SprPos = [_BrightLevelUISize[0]+_SprSize[0],screen[1]-_SprSize[1]-sprite_get_height(Spr_SanityGage)];
			draw_sprite_ext(Spr_Lv3Cool,0,_SprPos[0],_SprPos[1],_Scale,_Scale,0,_UIColor,1);
		}
		{
			var _Scale = 1
			var _SprSize = [sprite_get_width(Spr_Lv3Cool)*_Scale,sprite_get_height(Spr_Lv3Cool)*_Scale];
			var _SprPos = [_BrightLevelUISize[0]+_SprSize[0],screen[1]-sprite_get_height(Spr_SanityGage)];
			DrawSkillCoorLevel3Rate = lerp(DrawSkillCoorLevel3Rate,_SprSize[0]*(Obj_Player.alarm[2]/Obj_Player.shootLv3Cooltime)/_Scale,0.1);
			draw_sprite_part_ext(Spr_CoolRate,0,0,0,_SprSize[0],DrawSkillCoorLevel3Rate,_SprPos[0],_SprPos[1],_Scale,-_Scale,_UIColor,1);
		}
	}
	if(isBrightLevelUI && !KeyManager.isPause)
	{
		var _Scale = 1;
		var _SprSize = [sprite_get_width(Spr_DraknessLevel)*_Scale,sprite_get_height(Spr_DraknessLevel)*_Scale];
		var _SprPos = [0,screen[1]-_SprSize[1]-sprite_get_height(Spr_SanityGage)];
		draw_sprite_ext(Spr_DraknessLevel,0,_SprPos[0],_SprPos[1],_Scale,_Scale,0,_UIColor,1);
		var _TextSize = [string_width(string(global.BrightLevel))*3,string_height(string(global.BrightLevel))*3]
		draw_text_transformed((_SprPos[0]*2+_SprSize[0]-_TextSize[0])/2,(_SprPos[1]*2+_SprSize[1]-_TextSize[1])/2,string(global.BrightLevel),3,3,0);
	}
}
