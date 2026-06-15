_button = instance_position(mouse_x, mouse_y, obj_button);

if(_button && mouse_check_button_pressed(mb_left)){
	menu_buttons(_button);
	surface_free(surface);
}


