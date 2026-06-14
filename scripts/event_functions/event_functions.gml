function event_functions(){
	var arsenal_eventos = [
            "SURPRESA! AGORA VOCÊ DEVE ADICIONAR MAIS UMA UNIDADE EM UMA CARTA DE NÚMERO.",
            "SURPRESA! AGORA VOCÊ DEVE DIMINUIR UMA UNIDADE EM UMA CARTA DE NÚMERO.",
            "SURPRESA! VOCÊ DEVE DESCARTAR UMA CARTA DE OPERAÇÃO OU DE FUNÇÃO E COMPRAR UMA NOVA.",
			"SURPRESA! VOCÊ DEVE DESCARTAR UMA CARTA DE NÚMERO E COMPRAR UMA NOVA."
        ];
		var total_de_textos = array_length(arsenal_eventos);
        var indice_sorteado = irandom(total_de_textos - 1);
		var texto_final = arsenal_eventos[indice_sorteado];
		return {indice: indice_sorteado,
			texto: texto_final};
}

function event_plusOne(_card){
	var is_card_valid = false;
	var max_index = 9;
	if(global.belettiMode)
		max_index = 15;
	if(!_card.is_op && !_card.is_function){
		if(spr_cardsNumbersPositive==_card.sprite_index && _card.image_index != max_index){
			_card.image_index+=1;
			is_card_valid = true;	
		}
		else if(spr_cardsNumbersNegative == _card.sprite_index){
			if(_card.image_index==0)
				_card.sprite_index = spr_cardsNumbersPositive;
			else
				_card.image_index-=1;
			is_card_valid = true;
		}
	}
	if(is_card_valid)
		obj_event.alarm[0] = 5;
	else
		shine_card_red(_card);
}

function event_minusOne(_card){
	var is_card_valid = false;
	var min_index = 8;
	if(global.belettiMode)
		min_index = 14;
	if(!_card.is_op && !_card.is_function){
		if(spr_cardsNumbersPositive==_card.sprite_index){
			if(_card.image_index == 0)
				_card.sprite_index = spr_cardsNumbersNegative;
			else
				_card.image_index-=1;
			is_card_valid = true;	
		}
		else if(spr_cardsNumbersNegative == _card.sprite_index && _card.image_index != min_index){
			_card.image_index+=1;
			is_card_valid = true;
		}
	}
	if(is_card_valid)
		obj_event.alarm[0] = 5;
	else
		shine_card_red(_card);
}

function event_changeOperationFunction(_card){
	if(_card.is_op || _card.is_function){
		var func = 0;
		var op = 0;
		if(_card.is_op)
			op++;
		else{
			func++;
			if(ds_list_empty(global.deckOperationsF)){
				func--;
				op++;
			}
				
		}
		
		give_player_cards(obj_game.deck, 0, op, func);
		var ind = ds_list_find_index(obj_game.deck, _card); 
		ds_list_delete(obj_game.deck, ind);
		instance_deactivate_object(_card); 
		draw_deck(obj_game.deck); 
		obj_event.alarm[0] = 5;	
		return;
	}	
	shine_card_red(_card);
}

function event_changeNumber(_card){
	if(!_card.is_op && !_card.is_function){
		give_player_cards(obj_game.deck, 1, 0,0);
		var ind = ds_list_find_index(obj_game.deck, _card); 
		ds_list_delete(obj_game.deck, ind);
		instance_deactivate_object(_card); 
		draw_deck(obj_game.deck); 
		obj_event.alarm[0] = 5;
	}
	else
		shine_card_red(_card);
}

function shine_card_red(_card){
	_card.image_blend = c_red;
	_card.alarm[0] = 15; 
}

