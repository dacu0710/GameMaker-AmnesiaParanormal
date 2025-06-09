image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기

move_towards_point(Obj_Player.x,Obj_Player.y,2);
if(y > 448) instance_destroy();