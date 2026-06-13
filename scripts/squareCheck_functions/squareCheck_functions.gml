function square_checked(square){
	switch(square.squareType){
		case "belettiMode":
			global.belettiMode = !global.belettiMode;
			break;
		case "translateHex":
			obj_game.translateHex = !obj_game.translateHex;
			break;
	}
}

function change_number_base(num, base = 16){
	if(num == 0)
		return "0";
	var _num = abs(num);
	var hex = "";
	var max_pow = 0;
	
	while(power(16, max_pow) <= _num)
			max_pow++;
	max_pow--;
	for(var i = max_pow; i >= 0; i--){
		var res = int64(_num/(power(16, i)));
		hex += int_digit_to_hex(res);
		_num -= res*power(16, i);
	}
	if(num > 0)
		return hex;
	else
		return "-" + hex;
}

function int_digit_to_hex(digit){
	if(digit < 10)
		return string(digit);
	switch(digit){
		case 10:
			return "A"; 
		case 11:
			return "B";
		case 12:
			return "C";
		case 13:
			return "D";
		case 14:
			return "E";
		case 15:
			return "F";
	}
}

function create_binary_operators(){
	var _card = create_card(spr_cardsFunctions, 4,, true);	
	ds_list_add(global.deckOperationsF, _card);
	_card = create_card(spr_cardsOperations, 6 , true);
	ds_list_add(global.deckOperationsN, _card);
	_card = create_card(spr_cardsOperations, 7 , true); // SIX SEVEN!!!!
	ds_list_add(global.deckOperationsN, _card); 
} 