function get_unlocked_operations(){
	switch(global.choosedLevel){
		case 1:
			return 4;
		case 2:
			return 6;
		case 3:
			return 7; 
	}
}

function add_unlocked_operations(){
	switch(global.choosedLevel){
		case 3:
			ds_list_add(global.deckOperationsN, spr_operationAvg6);
		case 2:
			ds_list_add(global.deckOperationsN, spr_operationExp4, spr_operationSqrt5);
		case 1:
			ds_list_add(global.deckOperationsN, spr_operationMinus1, spr_operationPlus0, spr_operationTimes2, spr_operationDiv3);
			break;
	}
	if(global.belettiMode)
		ds_list_add(global.deckOperationsN, spr_operationAND8, spr_operationOR7);
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

function add_unlocked_negative(){
	switch(global.choosedLevel){
		case 3:
			ds_list_add(global.deckNumbers, spr_numberN5, spr_numberN6, spr_numberN7, spr_numberN8, spr_numberN9);
			if(global.belettiMode)
				ds_list_add(global.deckNumbers, spr_numberNA, spr_numberNB, spr_numberNC, spr_numberND, spr_numberNE, spr_numberNF);
		case 2:
			ds_list_add(global.deckNumbers, spr_numberN1, spr_numberN2, spr_numberN3, spr_numberN4);
		case 1:
			break;
	}
}

function get_unlocked_functions(){
	switch(global.choosedLevel){
		case 1:
		case 2:
			return 0;
		case 3:
			return 2;
	}
}

function add_unlocked_functions(){
	switch(global.choosedLevel){
		case 3:
			ds_list_add(global.deckOperationsF, spr_functionOpposite0, spr_functionXexpX1);
			break;
	}
	if(global.belettiMode)
		ds_list_add(global.deckOperationsF, spr_functionNOT2);
}

function get_unlocked_positive(){
	if(global.belettiMode)
		return 16;
	else
		return 10;
}

function add_unlocked_positive(){
	ds_list_add(global.deckNumbers, spr_numberP0, spr_numberP1, spr_numberP2, spr_numberP3, spr_numberP4, spr_numberP7, spr_numberP8, spr_numberP9);
	if(global.belettiMode)
		ds_list_add(global.deckNumbers, spr_numberPA, spr_numberPB, spr_numberPC, spr_numberPD, spr_numberPE, spr_numberPF);
}

function get_card_description(type, number){
	if(type  == "number")
		return "";
	if(type == "operation"){
		switch(number){
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
			case 6: // media
				return "Faz a média aritmética da primeira carta com a segunda";
			case 7: // or
				return "Faz a operação binária OR entre a primeira carta e a segunda";
			case 8: //and
				return "Faz a operação binária AND entre a primeira carta e a segunda";
		}
	}
	if(type == "function"){
		switch(number){
			case 0: // -x
				return "Inverte o sinal da primeira carta";
			case 1: // x^x
				return "Eleva a primeira carta a ela mesma";
			case 2: // not
				return "Faz a operação binária NOT da primeira carta";
		}
	}
}

function get_card_number(sprite, type) {
	switch (type){
		case "operation":
			return get_operation_card_number(sprite);
		case "function":
			return get_function_card_number(sprite);
		case "number":
			return get_number_card_number(sprite);
	}
}

function get_operation_card_number(sprite){
	switch (sprite){
		case spr_operationPlus0:  return 0;
		case spr_operationMinus1: return 1;
		case spr_operationTimes2: return 2;
		case spr_operationDiv3:   return 3;
		case spr_operationExp4:   return 4;
		case spr_operationSqrt5:  return 5;
		case spr_operationAvg6:   return 6;
		case spr_operationOR7:    return 7;
		case spr_operationAND8:   return 8;
	}
}

function get_function_card_number(sprite){
	switch(sprite){
		case spr_functionOpposite0: return 0;
		case spr_functionXexpX1: return 1;
		case spr_functionNOT2: return 2;
	}
}

function get_number_card_number(sprite){
	switch(sprite){
		case spr_numberN1: return -1;
		case spr_numberN2: return -2;
		case spr_numberN3: return -3;
		case spr_numberN4: return -4;
		case spr_numberN5: return -5;
		case spr_numberN6: return -6;
		case spr_numberN7: return -7;
		case spr_numberN8: return -8;
		case spr_numberN9: return -9;
		case spr_numberNA: return -10;
		case spr_numberNB: return -11;
		case spr_numberNC: return -12;
		case spr_numberND: return -13;
		case spr_numberNE: return -14;
		case spr_numberNF: return -15;
		case spr_numberP0: return 0;
		case spr_numberP1: return 1;
		case spr_numberP2: return 2;
		case spr_numberP3: return 3;
		case spr_numberP4: return 4;
		case spr_numberP7: return 7;
		case spr_numberP8: return 8;
		case spr_numberP9: return 9;
		case spr_numberPA: return 10;
		case spr_numberPB: return 11;
		case spr_numberPC: return 12;
		case spr_numberPD: return 13;
		case spr_numberPE: return 14;
		case spr_numberPF: return 15;
	}
}

function get_number_sprite(number){ // sorry for doing this, i dont have much time
	switch (number) {
		case -15: return spr_numberNF;
		case -14: return spr_numberNE;
		case -13: return spr_numberND;
		case -12: return spr_numberNC;
		case -11: return spr_numberNB;
		case -10: return spr_numberNA;
		case -9:  return spr_numberN9;
		case -8:  return spr_numberN8;
		case -7:  return spr_numberN7;
		case -6:  return spr_numberN6;
		case -5:  return spr_numberN5;
		case -4:  return spr_numberN4;
		case -3:  return spr_numberN3;
		case -2:  return spr_numberN2;
		case -1:  return spr_numberN1;
		case 0:   return spr_numberP0;
		case 1:   return spr_numberP1;
		case 2:   return spr_numberP2;
		case 3:   return spr_numberP3;
		case 4:   return spr_numberP4;
		case 5:   return spr_numberP5;
		case 6:   return spr_numberP6;
		case 7:   return spr_numberP7;
		case 8:   return spr_numberP8;
		case 9:   return spr_numberP9;
		case 10:  return spr_numberPA;
		case 11:  return spr_numberPB;
		case 12:  return spr_numberPC;
		case 13:  return spr_numberPD;
		case 14:  return spr_numberPE;
		case 15:  return spr_numberPF;
	}
}