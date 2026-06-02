_inst = instance_position(mouse_x, mouse_y, deck);

if(_inst){
	if(mouse_check_button_pressed(mb_left)){
		draw_deck(deck, _cardsOnDeck);
		if(!_inst._selected){
			_inst.x = 190;
			_inst.y = 90;
			_inst._selected = true;
		}
	}
}