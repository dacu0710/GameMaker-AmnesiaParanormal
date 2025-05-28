//밝기에 따른 밝기 레벨
if(global.Bright >= 90 and global.Bright <= 100){ global.BrightLevel = 1; }
if(global.Bright >= 60 and global.Bright < 90){ global.BrightLevel = 2; }
if(global.Bright >= 30 and global.Bright < 60){ global.BrightLevel = 3; }
if(global.Bright >= 10 and global.Bright < 30){ global.BrightLevel = 4; }
if(global.Bright >= 1 and global.Bright < 10){ global.BrightLevel = 5; }