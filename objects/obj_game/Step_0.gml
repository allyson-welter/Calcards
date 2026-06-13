_inst = instance_position(mouse_x, mouse_y, obj_card);

if(_inst && !global.trava_carta){
	if(mouse_check_button_pressed(mb_left)){
		_choosed = choose_card(_inst, _selectedCards, deck);
		
		if(!_choosed){
			card_cant_be_selected(_inst);
		}
		else{
			draw_selectedCards(_selectedCards, _round);
			draw_deck(deck)
			refresh_confirm_button(_selectedCards);
		}
	}
}

_btn = instance_position(mouse_x, mouse_y, obj_button);
	
if(_btn){
	if(mouse_check_button_pressed(mb_left)){
		if(_btn.button_type == "confirm"){ 
			_valid = confirm_button(_selectedCards, _round);
			if(_valid){
				update_round();
			}
			else{
				shine_button(obj_button); // funcao pra piscar o botao em vermelho
			}
		}
		else{ 
			update_level_unlocked(stars);
		}
	}
}
	
