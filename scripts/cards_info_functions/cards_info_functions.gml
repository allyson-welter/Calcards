function get_card_number_or_operation(_card){
	frame = _card.image_index;
	_num = 0;
	if(frame % 2 == 0) // entra quando a carta nao estiver no frame de selecionada
		_num = frame - int64(frame/2); // como todas as cartas estão duplicadas, retorna o frame - a metade dela
	else // entra quando a carta está na "animação" de selecionada
		_num = frame - int64(frame/2) - 1;
		
	if(_card.is_op || _card.is_function)
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
		case 3:
			return 6; // anterior + raiz e exponenciacao
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

function get_unlocked_functions(){
	switch(global.choosedLevel){
		case 1:
		case 2:
			return 0;
		case 3:
			return 4;
	}
}


