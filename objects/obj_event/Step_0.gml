_insta = instance_position(mouse_x, mouse_y, obj_button);

if(_insta){

	if(mouse_check_button_pressed(mb_left)){
		text_evento = event_functions(); // essa funcao ta dentro do round_functions
		controle = true;
	}
}
if (instance_exists(obj_game) && variable_instance_exists(obj_game, "_inst")) {
 
    if (obj_game._inst) {
        if (mouse_check_button_pressed(mb_left)) {
            controle = false;
        }
    }
}