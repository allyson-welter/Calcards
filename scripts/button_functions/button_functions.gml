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
	_cards[3] = _result;
	return true;
}
