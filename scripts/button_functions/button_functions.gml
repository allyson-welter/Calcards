function confirm_button(_cards){
	_op = _cards[1];
	_result = 0;
	if(_op == 13 && _cards[2] == 0) // verifica se tem divisao por 0
		return false;
	switch(_op){
		case 10: // sprite da soma
			_result = _cards[0] + _cards[2];
			break;
		case 11: // sprite da subtracao
			_result = _cards[0] - _cards[2];
			break;
		case 12: // sprite da multiplicacao
			_result = _cards[0] * _cards[2];
			break;
		case 13: // sprite da divisao
			_result = _cards[0] / _cards[2];
			break;
	}
	clear_selected(_cards);
	_cards[0] = _result;
	return true;
}

function refresh_confirm_button(_selectedCards){
	if(is_all_selected(_selectedCards)){
		obj_button.active = true;
		obj_button.image_alpha = 1;
	}
	else{
		obj_button.active = false;
		obj_button.image_alpha = 0;
	}
}
