function choose_card(_card, _selectedCards, _deck){
	_isFull = true;
	_choosedCard = false;
	_isAlreadySelected = array_get_index(_selectedCards, _card);
	
	for(i = 0; i < array_length(_selectedCards); i++){
		if(_isFull && _selectedCards[i] == noone)
			_isFull = false;
	}
	if(_isAlreadySelected >= 0){
		_selectedCards[_isAlreadySelected] = noone;
		if(_card._op)
			ds_list_add(_deck, _card);
		else
			ds_list_insert(_deck, 0, _card);
		_choosedCard = true;
		return _choosedCard;
	}
	
	if(!_isFull){
		if(_card._op){
			if(_selectedCards[1] == noone){
				_selectedCards[1] = _card;
				_ind = ds_list_find_index(_deck, _card);
				ds_list_delete(_deck, _ind);
				_choosedCard = true;
			}
		}
		else{
			if(_selectedCards[0] == noone){
				_selectedCards[0] = _card;
				_ind = ds_list_find_index(_deck, _card);
				ds_list_delete(_deck, _ind);
				_choosedCard = true;
			}
			else if(_selectedCards[2] == noone){
				_selectedCards[2] = _card;
				_ind = ds_list_find_index(_deck, _card);
				ds_list_delete(_deck, _ind);
				_choosedCard = true;
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
		_selectedCards[1].x = 190;
		_selectedCards[1].y = 70;
	}
	if(_selectedCards[2] != noone){
		_selectedCards[2].x = 220;
		_selectedCards[2].y = 70;
	}
}