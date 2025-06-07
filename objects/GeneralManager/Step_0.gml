
//밝기 총괄
var Brights = [100,60,40,20,10,0];

if(global.Sanity <= 100 and global.Sanity >= 90)
{
	if(abs(global.Bright - Brights[0]) > 0.1)
	{
		var Speed = 0.1;
		global.Bright = lerp(global.Bright,Brights[0],Speed);
	} else { global.BrightLevel = 1; }
}
if(global.Sanity < 90 and global.Sanity >= 60)
{
	if(abs(global.Bright - Brights[1]) > 0.1)
	{
		var Speed = 0.1;
		global.Bright = lerp(global.Bright,Brights[1],Speed);
	} else { global.BrightLevel = 2; }
}
if(global.Sanity < 60 and global.Sanity >= 30)
{
	if(abs(global.Bright - Brights[2]) > 0.1)
	{
		var Speed = 0.1;
		global.Bright = lerp(global.Bright,Brights[2],Speed);
	} else { global.BrightLevel = 3; }
}
if(global.Sanity < 30 and global.Sanity >= 10)
{
	if(abs(global.Bright - Brights[3]) > 0.1)
	{
		var Speed = 0.1;
		global.Bright = lerp(global.Bright,Brights[3],Speed);
	} else { global.BrightLevel = 4; }
}
if(global.Sanity < 10 and global.Sanity >= 1)
{
	if(abs(global.Bright - Brights[4]) > 0.1)
	{
		var Speed = 0.1;
		global.Bright = lerp(global.Bright,Brights[4],Speed);
	} else { global.BrightLevel = 5; }
}
if(global.Sanity <= 0)
{
	if(abs(global.Bright - Brights[5] > 0.1))
	{
		var Speed = 0.05;
		global.Bright = lerp(global.Bright,Brights[5],Speed);
	} else { global.BrightLevel = 6; }
}
//show_debug_message("{0},{1},{2}",global.Sanity,global.Bright,global.BrightLevel)

if(keyboard_check_released(ord("1")))
{
	global.Sanity += 5;
}
if(keyboard_check_released(ord("2")))
{
	global.Sanity -= 5;
}
if(keyboard_check_released(ord("3")))
{
	Obj_Player.isDamaged = true;
}