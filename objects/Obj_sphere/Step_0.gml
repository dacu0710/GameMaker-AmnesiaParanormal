speed = 6;
direction = 270;
image_alpha = 1;
draw_set_alpha(1);
image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기
if(y > 448) instance_destroy();