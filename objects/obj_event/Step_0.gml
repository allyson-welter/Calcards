_insta = instance_position(mouse_x, mouse_y, obj_button);
_inst = instance_position(mouse_x, mouse_y, obj_card);
var dados =  event_functions(); // essa funcao ta dentro do round_functions
if(_insta){

	if(mouse_check_button_pressed(mb_left)){
		text_evento = dados.texto;
		controle = true;
		global.trava_carta=false;
	}
}
 
    if (_inst) {
        if (mouse_check_button_pressed(mb_left)) {
            controle = false;
			switch(dados.indice){
				case 0:
				if(_inst.is_op == false){
					_inst.normal_index+=2;
					_inst.image_index+=1;
				}
				break;
				case 1:
				break;
				case 2:
				break;
			}
        }
    }
