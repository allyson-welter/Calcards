function menu_buttons(_button){
	switch(_button.button_type){
		case "tutorial":
			room_goto(rm_tutorial);
			break;
		case "level1":
		case "level2":
		case "level3":
			room_goto(rm_game);
			break;
	}
}

function confirm_button(_cards, _round){
	_op = _cards[1].image_index;
	if(_round > 1)
		_num1 = _cards[0];
	else
		_num1 = _cards[0].image_index;
	_num2 = _cards[2].image_index;
	_result = 0;
	if(_op == 13 && _num2 == 0) // verifica se tem divisao por 0
		return false;
	switch(_op){
		case 10: // sprite da soma
			_result = _num1 + _num2;
			break;
		case 11: // sprite da subtracao
			_result = _num1 - _num2;
			break;
		case 12: // sprite da multiplicacao
			_result = _num1*_num2;
			break;
		case 13: // sprite da divisao
			_result = (_num1)/(_num2);
			break;
	}
	_result = int64(_result);
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