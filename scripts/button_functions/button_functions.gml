function confirm_button(_cards, has_result){
	_op = _cards[1].image_index;
	if(has_result)
		_num1 = _cards[0];
	else
		_num1 = _cards[0].image_index;
	_num2 = _cards[2].image_index;
	_result = 0;
	if(_op == 13 && _num2 == 0) // verifica se tem divisao por 0
		return false;
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
	_result = int64(_result);
	clear_selected(_cards, has_result);
	_cards[0] = _result;
	return true;
}

function refresh_confirm_button(_selectedCards){
	if(is_all_selected(_selectedCards))
		instance_activate_object(obj_button);
	else
		instance_deactivate_object(obj_button);
}
