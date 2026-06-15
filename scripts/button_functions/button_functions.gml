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
	var has_function = false;
	if(_cards[1].type == "function")
		has_function = true;
	var _op = _cards[1].number;
	var _num2 = 0;
	if(_round > 1) 
		var _num1 = _cards[0];
	else
		_num1 = _cards[0].number;
		
	if(!has_function)
		_num2 = _cards[2].number;
	
	if(!is_expression_valid(_num1, _num2, _op, has_function))
		return false;
		
	if(has_function)
		var _result = get_result_operationF(_num1, _op);
	else
		_result = get_result_operationN(_num1, _num2, _op);
		
	destroy_selected(_cards, _round);
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