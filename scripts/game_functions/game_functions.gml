function choose_card(_card, _selectedCards, _deck){
	_choosedCard = false;
	
	if(_card._selected){
		_card._selected = false;
		_isAlreadySelected = array_get_index(_selectedCards, _card);
		_selectedCards[_isAlreadySelected] = noone;
		if(_card._op)
			ds_list_add(_deck, _card);
		else
			ds_list_insert(_deck, 0, _card);
		_choosedCard = true;
		return _choosedCard;
	}
	
	if(!is_all_selected(_selectedCards)){
		if(_card._op){
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

function draw_selectedCards(_selectedCards){
	if(_selectedCards[0] != noone){
		_selectedCards[0].x = 160;
		_selectedCards[0].y = 70;
	}
	if(_selectedCards[1] != noone){
		_selectedCards[1].x = 200;
		_selectedCards[1].y = 70;
	}
	if(_selectedCards[2] != noone){
		_selectedCards[2].x = 240;
		_selectedCards[2].y = 70;
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