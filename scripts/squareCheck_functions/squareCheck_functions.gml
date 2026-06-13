function square_checked(square = self){
	switch(square.squareType){
		case "belettiMode":
			global.belettiMode = !global.belettiMode;
			square.image_index = global.belettiMode;
			break;
		case "translateHex":
			obj_game.translateHex = !obj_game.translateHex;
			var dec_index = 2;
			var bin_index = 3;
			if(square.image_index == 0){
				obj_game.translated_random_number = obj_game.number;
				square.image_index = dec_index;
				square.text = "Traduzir para base binária";
			}
			else if(image_index == dec_index){
				obj_game.translated_random_number = "";
				square.image_index = bin_index;
				square.text = "Não traduzir a base hexadecimal";
			}
			else{
				obj_game.translated_random_number = "";
				square.image_index = 0;
				square.text = "Traduzir para base decimal";
			}
			break;
	}
}

function change_number_base(num, base = 16){
	if(num == 0)
		return "0";
	var _num = abs(num);
	var num_base = "";
	var max_pow = 0;
	
	while(power(base, max_pow) <= _num)
			max_pow++;
	max_pow--;
	for(var i = max_pow; i >= 0; i--){
		var res = int64(_num/(power(16, i)));
		num_base += change_digit_base(res, base);
		_num -= res*power(16, i);
	}
	if(num > 0)
		return num_base;
	else
		return "-" + num_base;
}

function change_digit_base(digit, base = 16){
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