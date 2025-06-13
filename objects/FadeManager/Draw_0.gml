draw_set_alpha(fade_alpha);
draw_set_color(fade_color); // 흰색 페이드면 c_white
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1); // 원상복구