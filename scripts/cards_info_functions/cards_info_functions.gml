function get_card_number_or_operation(_card){
	frame = _card.image_index;
	_num = 0;
	if(frame % 2 == 0) // entra quando a carta nao estiver no frame de selecionada
		_num = frame - int64(frame/2); // como todas as cartas estão duplicadas, retorna o frame - a metade dela
	else // entra quando a carta está na "animação" de selecionada
		_num = frame - int64(frame/2) - 1;
		
	if(_card.is_op)
		return _num;
	if(_card.sprite_index == spr_cardsNumbersPositive)
		return _num;
	else
		return -1*(_num + 1);
}

function get_unlocked_operations(){
	switch(global.choosedLevel){
		case 1:
			return 4; // soma, subtracao, multiplicacao e divisao
		case 2:
			return 6; // anterior + raiz e exponenciacao
		case 3:
			return 10; // anterior + x^x, raiz x-esima de x, x! e -x
	}
}

function get_unlocked_negative(){
	switch(global.choosedLevel){
		case 1:
			return 0;
		case 2:
			return 4;
		case 3:
			return 9;
	}
}

function get_result(_num1, _num2, _op){
	_result = 0;
	
	switch(_op){
		case 0: // sprite da soma
			_result = _num1 + _num2;
			break;
		case 1: // sprite da subtracao
			_result = _num1 - _num2;
			break;
		case 2: // sprite da multiplicacao
			_result = _num1*_num2;
			break;
		case 3: // sprite da divisao
			_result = (_num1)/(_num2);
			break;
		case 4: // sprite da potencia
			_result = power((_num1), (_num2))
			break;
		case 5: // sprite da raiz
			_result = (_num1)*sqrt(_num2);
			break;
	}
	return int64(_result);
}

function is_expression_valid(_num1, _num2, _op){

}