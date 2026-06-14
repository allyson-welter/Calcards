function decimal_to_hex(num){
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
		hex += change_digit_base_to_hex(res);
		_num -= res*power(16, i);
	}
	if(num > 0)
		return hex;
	else
		return "-" + hex;
}

function change_digit_base_to_hex(digit){
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

function decimal_to_binary(num){
	var is_neg = false;
	var _num = abs(num);
	var bin = "";
	if(num == 0)
		return "0";
	else if(num < 0){
		is_neg = true;
		_num--;
	}

	var bits = 11;
	for(var i = bits; i >= 0; i--){
		var res = int64(_num/(power(2, i)));
		_num -= res*power(2, i);
		if(is_neg)
			res = !res;
		bin += string(res);
	}
	return bin;
}

function draw_translated(){
	draw_set_font(fnt_result);
	draw_set_colour(c_red);
	
	draw_set_halign(fa_left);
	draw_text_transformed(110, 380, _selectedCards[0], 1, 1, 0);
}

function update_translated_info(){
	if(instance_exists(obj_translator))
		var base = obj_translator.translateBase;
	else
		return;
	var card1 = obj_game._selectedCards[0];
	var card2 = obj_game._selectedCards[2];
	var num1 = 0;
	var num2 = 0;
	if(obj_game._round > 1)
		num1 = card1;
	else if(!is_undefined(card1))
		num1 = get_card_number_or_operation(card1);
	if(!is_undefined(card2))
		num2 = get_card_number_or_operation(card2);
		
	
	with(obj_translator){
		switch(base){
			case 10:
				translated_random_number = number_dec;
				translated_card_one = num1;
				translated_card_two = num2;
				break;
			case 2:
				translated_random_number = number_bin;
				translated_card_one = decimal_to_binary(num1);
				translated_card_two = decimal_to_binary(num2);
				break;
			default:
				translated_random_number = "";
				translated_card_one = "";
				translated_card_two = "";
				break;
		}
		if(is_undefined(card1))
			translated_card_one	= "";
		if(is_undefined(card2))
			translated_card_two = "";
	}
}
