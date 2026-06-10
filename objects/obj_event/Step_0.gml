_insta = instance_position(mouse_x, mouse_y, obj_button);
_inst = instance_position(mouse_x, mouse_y, obj_card);
if(_insta){

	if(mouse_check_button_pressed(mb_left)){
		dados = event_functions();
		text_evento = dados.texto;
		controle = true;
		global.trava_carta=true;
	}
}
 
    if (_inst && controle) {
        if (mouse_check_button_pressed(mb_left)) {
			switch(dados.indice){
				case 0:
					if(!_inst.is_op){
						_inst.image_index+=1;
						controle = false;
						alarm[0] = 5;
					}
					else{
						_inst.image_blend = c_red;
						_inst.alarm[0] = 15;
					}
					break;
				case 1:
					if(!_inst.is_op){
						_inst.image_index-=1;
						controle = false;
						alarm[0] = 5;
					}
					else{
						_inst.image_blend = c_red;
						_inst.alarm[0] = 15;
					}
					break;
				case 2:
					if(_inst.is_op){
						controle = false;
						give_player_cards(obj_game.deck, 0, 1, 0);
						ds_list_add(global.deckOperationsN, _inst);
						ind = ds_list_find_index(obj_game.deck, _inst);
						ds_list_delete(obj_game.deck, ind);
						instance_deactivate_object(_inst);
						draw_deck(obj_game.deck);
						alarm[0] = 5;	
					}
					else if(_inst.is_function){
						
					}
					break;
			}
        }
    }
