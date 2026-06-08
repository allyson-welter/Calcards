_inst = instance_position(mouse_x, mouse_y, obj_card);

if(_inst){
	if(mouse_check_button_pressed(mb_left)){
		_choosed = choose_card(_inst, _selectedCards, _deck);
		
		if(!_choosed){
			card_cant_be_selected(_inst);
		}
		else{
			draw_selectedCards(_selectedCards, _round);
			draw_deck(_deck)
			refresh_confirm_button(_selectedCards);
			show_debug_message(random_get_seed());
			show_debug_message(_inst.image_index);
		}
	}
}

_btn = instance_position(mouse_x, mouse_y, obj_button);
	
if(_btn){
	if(mouse_check_button_pressed(mb_left)){
		if(_btn.button_type == "confirm"){ // botao de confirmar as cartas selecionadas
			_valid = confirm_button(_selectedCards, _round);
			if(_valid){ // esse valid é se a operacao foi valida (ex: se tem divisão por 0, valid da false)
				refresh_confirm_button(_selectedCards);
				_round++;
				stars = get_stars(number, _selectedCards[0]);
				new_round(_deck, _round, number, _selectedCards[0]);
			}
			else{
				shine_button(obj_button); // funcao pra piscar o botao em vermelho
			}
		}
		else{ // botao que aparece ao final do jogo (continuar)
			update_level(stars);
		}
	}
}
	
