_card = instance_position(mouse_x, mouse_y, obj_card);
if(controle){
	dados = event_functions();
	text_evento = dados.texto;
	global.trava_carta=true;
	controle = false;
}

 
if (_card && global.trava_carta) {
	if (mouse_check_button_pressed(mb_left)) {
		switch(dados.indice){
			case 0:
				event_plusOne(_card);
				break;
			case 1:
				event_minusOne(_card);
				break;
			case 2:
				event_changeOperationFunction(_card);
				break;
			case 3:
				event_changeNumber(_card);
				break;
		}
	} 
} 
