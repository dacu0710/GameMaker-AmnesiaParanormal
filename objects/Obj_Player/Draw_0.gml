
gpu_set_blendmode(bm_add);

draw_set_alpha(0.25);
draw_set_color(make_color_hsv(0,0,255));
var _CircleRange = random_range(25-1, 25+1);
draw_circle(x,y,_CircleRange,false);
draw_circle(x,y,_CircleRange-6,false);

draw_set_color(make_color_hsv(0,0,global.Bright*(255/100)));//밝기
gpu_set_blendmode(bm_normal);


draw_self();