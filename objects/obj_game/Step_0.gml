_inst = instance_position(mouse_x, mouse_y, obj_card);

if(_inst){
	if(mouse_check_button_pressed(mb_left)){
		_choosed = choose_card(_inst, _selectedCards, _deck);
		
		if(!_choosed){
			card_cant_be_selected(_inst);
		}
		else{
			draw_selectedCards(_selectedCards, has_result);
			draw_deck(_deck)
			refresh_confirm_button(_selectedCards);
		}
	}
}

	
if(instance_exists(obj_button)){
	if(position_meeting(mouse_x, mouse_y, obj_button) && mouse_check_button_pressed(mb_left)){
		_valid = confirm_button(_selectedCards, has_result);
		if(_valid){
			refresh_confirm_button(_selectedCards);
			has_result = true;
		}
		else{
			
		}
	}
}
	
