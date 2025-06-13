switch (fade_mode) {
    case "in":
		if(instance_exists(KeyManager)) KeyManager.isPause = false;
        fade_alpha -= fade_speed;
        if (fade_alpha <= 0) {
            fade_alpha = 0;
			fade_mode = "";
        }
        break;
    case "out":
        fade_alpha += fade_speed;
        if (fade_alpha >= 1) {
			if(instance_exists(KeyManager)) KeyManager.isPause = true;
            fade_alpha = 1;
			fade_mode = "in"
        }
        break;
}