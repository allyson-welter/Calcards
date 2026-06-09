function choose_card(_card, _selectedCards, _deck){
	_choosedCard = false;
	
	if(_card._selected){
		return_to_deck(_card, _selectedCards, _deck);
		_choosedCard = true;
		return _choosedCard;
	}
	
	if(!is_all_selected(_selectedCards)){
		if(_card.is_function){
			if(is_undefined(_selectedCards[1]) && is_undefined(_selectedCards[2]))
			{
				card_to_selected(_selectedCards, 1, _card, _deck);
				_choosedCard = true;
			}
		}
		else if(_card.is_op){
			if(is_undefined(_selectedCards[1])){
				card_to_selected(_selectedCards, 1, _card, _deck);
				_choosedCard = true;
			}
		}
		else{
			if(is_undefined(_selectedCards[0])){
				card_to_selected(_selectedCards, 0, _card, _deck);
				_choosedCard = true;
			}
			else if(is_undefined(_selectedCards[2])){
				card_to_selected(_selectedCards, 2, _card, _deck);
				_choosedCard = true;
			}
		}
	}
	return _choosedCard;
}

function card_cant_be_selected(_card){
	_card.image_alpha = 0;
	_card.alarm[0] = 3;
}

function is_all_selected(_selectedCards){
	_isAllSelected = true;
	
	for(i = 0; i < 3; i++){
		if(i == 1 && !is_undefined(_selectedCards[i])){
			if(_selectedCards[i].is_function)
				break;	
		}
		if(_isAllSelected && is_undefined(_selectedCards[i]))
			_isAllSelected = false;
	}
	return _isAllSelected;
}

function clear_selected(_cards, _round){
	if(_round > 1)
		i = 1;
	else
		i = 0;
		
	for(; i < 3; i++){
		_card = _cards[i];
		_cards[i]._selected = false;
		instance_deactivate_object(_cards[i]);
		_cards[i] = undefined;
		
		if(_card.is_op)
			ds_list_add(global.deckOperationsN, _card);
		else if(_card.is_function){
			ds_list_add(global.deckOperationsF, _card);
			break;
		}
		else
			ds_list_add(global.deckNumbers, _card);
	}
}

function return_to_deck(_card, _selectedCards, _deck){
	_card._selected = false;
	_index = array_get_index(_selectedCards, _card);
	_selectedCards[_index] = undefined;
	if(_card.is_op || _card.is_function)
		ds_list_add(_deck, _card);
	else
		ds_list_insert(_deck, 0, _card);
}

function card_to_selected(_selectedCards, pos, _card, _deck){
	_selectedCards[pos] = _card;
	_ind = ds_list_find_index(_deck, _card);
	ds_list_delete(_deck, _ind);
	_card._selected = true;
}