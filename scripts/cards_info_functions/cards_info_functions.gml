function get_card_number_or_operation(_card){
	_num = _card.image_index;
		
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
			var neg = 9;
			if(global.belettiMode)
				neg = 15;
			return neg;
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

function get_unlocked_positive(){
	if(global.belettiMode)
		return 16;
	else
		return 10;
}

