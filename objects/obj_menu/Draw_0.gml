if(!surface_exists(surface)){
	surface = surface_create(display_get_width(), display_get_height());
	surface_set_target(surface);
	with(obj_button){
		switch(button_type){
			case "level1":
				draw_stars(1, self);
				break;
			case "level2":
				draw_stars(2, self);
				break;
			case "level3":
				draw_stars(3, self);
				break;
		}
	}
	surface_reset_target();
}
draw_surface(surface, 0, 0);

function draw_stars(level, btn){
	for(i = 0; i < 3; i++){
		xPos = btn.x - 28 + 25*i;
		yPos = btn.y - 30;
		if(i < global.stars[level-1])
			is_red = 1;
		else
			is_red = 0;
		draw_sprite_ext(spr_star, is_red, xPos, yPos, 0.7, 0.7, 0, c_white, 1);
	}
}
