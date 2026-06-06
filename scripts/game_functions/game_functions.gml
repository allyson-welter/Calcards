function choose_card(_card, _selectedCards, _deck){
	_choosedCard = false;
	
	if(_card._selected){
		return_to_deck(_card, _selectedCards, _deck);
		_choosedCard = true;
		return _choosedCard;
	}
	
	if(!is_all_selected(_selectedCards)){
		if(_card.is_op){
			if(_selectedCards[1] == noone){
				_selectedCards[1] = _card;
				_ind = ds_list_find_index(_deck, _card);
				ds_list_delete(_deck, _ind);
				_choosedCard = true;
				_card._selected = true;
			}
		}
		else{
			if(_selectedCards[0] == noone){
				_selectedCards[0] = _card;
				_ind = ds_list_find_index(_deck, _card);
				ds_list_delete(_deck, _ind);
				_choosedCard = true;
				_card._selected = true;
			}
			else if(_selectedCards[2] == noone){
				_selectedCards[2] = _card;
				_ind = ds_list_find_index(_deck, _card);
				ds_list_delete(_deck, _ind);
				_choosedCard = true;
				_card._selected = true;
			}
		}
	}
	return _choosedCard;
}

function draw_selectedCards(_selectedCards, has_result){
	if(has_result)
		i = 1;
	else
		i = 0;
	for(; i < 3; i++){
		_card = _selectedCards[i];
		if(_card != noone){
				_card.image_xscale = 0.3;
				_card.image_yscale = 0.3;
				_card.x = 70 + 30*i;
				_card.y = 80;
		}
	}
}

function card_cant_be_selected(_card){
	_card.image_alpha = 0;
	_card.alarm[0] = 3;
}

function is_all_selected(_selectedCards){
	_isAllSelected = true;
	for(i = 0; i < 3; i++){
		if(_isAllSelected && _selectedCards[i] == noone)
			_isAllSelected = false;
	}
	return _isAllSelected;
}

function clear_selected(_cards, has_result){
	if(has_result)
		i = 1;
	else
		i = 0;
	for(; i < 3; i++){
		instance_destroy(_cards[i]);
		_cards[i] = noone;
	}
}

function return_to_deck(_card, _selectedCards, _deck){
	_card._selected = false;
	_index = array_get_index(_selectedCards, _card);
	_selectedCards[_index] = noone;
	if(_card.is_op)
		ds_list_add(_deck, _card);
	else
		ds_list_insert(_deck, 0, _card);
}