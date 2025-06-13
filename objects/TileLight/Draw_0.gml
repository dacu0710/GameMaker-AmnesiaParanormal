draw_set_color(c_black);//밝기
draw_set_alpha(1-global.Bright*(2.0/100));
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);