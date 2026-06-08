function menu_buttons(_button){
	switch(_button.button_type){
		case "tutorial":
			room_goto(rm_tutorial);
			break;
		case "level1":
			room_goto(rm_game);
			global.choosedLevel = 1;
			break;
		case "level2":
			if(global.levelsUnlocked > 1){
				global.choosedLevel = 2;
				room_goto(rm_game);
			}
			else
				shine_button(_button);
			break;
		case "level3":
			if(global.levelsUnlocked > 2){
				global.choosedLevel = 3;
				room_goto(rm_game);
			}
			else
				shine_button(_button);
			break;
	}
}

function confirm_button(_cards, _round){
	_op = get_card_number_or_operation(_cards[1]);
	show_debug_message(_op);
	if(_round > 1) // se está no segundo round por exemplo, a primeira posição é ocupada pelo resultado da conta anterior (então nao faz sentido pegar o frame)
		_num1 = _cards[0];
	else
		_num1 = get_card_number_or_operation(_cards[0]);
	_num2 = get_card_number_or_operation(_cards[2]);
	
	if(_op == 3 && _num2 == 0) // verifica se tem divisao por 0
		return false;
		
	_result = get_result(_num1, _num2, _op);
	clear_selected(_cards, _round);
	_cards[0] = _result;
	return true;
}

function refresh_confirm_button(_selectedCards){
	if(is_all_selected(_selectedCards))
		instance_activate_object(obj_button);
	else
		instance_deactivate_object(obj_button);
}

function shine_button(btn){
	btn.image_alpha = 0.5;
	btn.image_blend = c_red;
	btn.alarm[0] = 10;
}