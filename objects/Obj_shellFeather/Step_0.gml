image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
speed = 7;
draw_set_alpha(1);
if(y > 448) instance_destroy();