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

function get_card_description(_card){
	if(_card.type == "number")
		return "";
	if(_card.type == "operation"){
		switch(_card.number){
			case 0: // soma
				return "Soma duas cartas";
			case 1: // subt
				return "Subtrai a primeira carta da segunda";
			case 2: // mult
				return "Multiplica duas cartas";
			case 3: // div
				return "Divide a primeira carta pela segunda";
			case 4: // exp
				return "Eleva a primeira carta pela segunda";
			case 5: // sqrt
				return "Multiplica a primeira carta pela raiz quadrada da segunda";
			case 6: // or
				return "Faz a operação binária OR entre a primeira carta e a segunda";
			case 7: //and
				return "Faz a operação binária AND entre a primeira carta e a segunda";
		}
	}
	if(_card.type == "function"){
		switch(_card.number){
			case 0: // -x
				return "Inverte o sinal da primeira carta";
			case 1: // x^x
				return "Eleva a primeira carta a ela mesma";
			case 2: // x!
				return "Faz o fatorial da primeira carta";
			case 3: // raiz x-ésima de x
				return "Faz a raiz da primeira carta com ela mesma como índice";
			case 4: // not
				return "Faz a operação binária NOT da primeira carta";
		}
	}
}