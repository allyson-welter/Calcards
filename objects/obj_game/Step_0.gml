_inst = instance_position(mouse_x, mouse_y, obj_card);

if(_inst){

	if(mouse_check_button_pressed(mb_left)){
		_inst.y = 140;
		_choosed = choose_card(_inst, _selectedCards, _deck);
		
		if(!_choosed){
		card_cant_be_selected(_inst);
		}
		else{
			draw_selectedCards(_selectedCards);
			draw_deck(_deck)
		}
			
	}
}
else
	draw_deck(_deck);