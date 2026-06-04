_inst = instance_position(mouse_x, mouse_y, obj_card);

if(_inst){
	if(mouse_check_button_pressed(mb_left)){
		_choosed = choose_card(_inst, _selectedCards, _deck);
		draw_selectedCards(_selectedCards);
		draw_deck(_deck);
	}
}