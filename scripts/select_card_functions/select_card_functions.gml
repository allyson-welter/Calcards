function choose_card(_card, _selectedCards, _deck){
	_choosedCard = false;
	
	if(_card._selected){
		return_to_deck(_card, _selectedCards, _deck);
		_choosedCard = true;
		return _choosedCard;
	}
	
	if(!is_all_selected(_selectedCards)){
		if(_card.is_op){
			if(is_undefined(_selectedCards[1])){
				_selectedCards[1] = _card;
				_ind = ds_list_find_index(_deck, _card);
				ds_list_delete(_deck, _ind);
				_choosedCard = true;
				_card._selected = true;
			}
		}
		else{
			if(is_undefined(_selectedCards[0])){
				_selectedCards[0] = _card;
				_ind = ds_list_find_index(_deck, _card);
				ds_list_delete(_deck, _ind);
				_choosedCard = true;
				_card._selected = true;
			}
			else if(is_undefined(_selectedCards[2])){
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

function card_cant_be_selected(_card){
	_card.image_alpha = 0;
	_card.alarm[0] = 3;
}

function is_all_selected(_selectedCards){
	_isAllSelected = true;
	for(i = 0; i < 3; i++){
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
		if(_cards[i].is_op)
			ds_list_add(global.deckOperations, _cards[i]);
		else
			ds_list_add(global.deckNumbers, _cards[i]);
		_cards[i]._selected = false;
		instance_deactivate_object(_cards[i]);
		_cards[i] = undefined;
	}
}

function return_to_deck(_card, _selectedCards, _deck){
	_card._selected = false;
	_index = array_get_index(_selectedCards, _card);
	_selectedCards[_index] = undefined;
	if(_card.is_op)
		ds_list_add(_deck, _card);
	else
		ds_list_insert(_deck, 0, _card);
}

function get_card_number_or_operation(_card){
	frame = _card.image_index;
	if(frame % 2 == 0) // entra quando a carta nao estiver no frame de selecionada
		return (frame - int64(frame/2)); // como todas as cartas estão duplicadas, retorna o frame - a metade dela
	else // entra quando a carta está na "animação" de selecionada
		return (frame - int64(frame/2) - 1);
}

function get_result(_num1, _num2, _op){
	_result = 0;
	switch(_op){
		case 10: // sprite da soma
			_result = _num1 + _num2;
			break;
		case 11: // sprite da subtracao
			_result = _num1 - _num2;
			break;
		case 12: // sprite da multiplicacao
			_result = _num1*_num2;
			break;
		case 13: // sprite da divisao
			_result = (_num1)/(_num2);
			break;
	}
	return int64(_result);
}