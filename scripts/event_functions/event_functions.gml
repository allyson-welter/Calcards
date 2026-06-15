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
	var max_number = 9;
	if(global.belettiMode)
		max_number = 15;
		
	if(_card.type == "number" && _card.number != max_number){
		_card.number++;
		_card.sprite_index = get_number_sprite(_card.number);
		is_card_valid = true;
	}
	
	if(is_card_valid)
		obj_event.alarm[0] = 5;
	else
		shine_card_red(_card);
}

function event_minusOne(_card){
	var is_card_valid = false;
	var min_number = -9;
	if(global.belettiMode)
		min_number = -15;
	if(_card.type == "number" && _card.number != min_number){
		_card.number--;
		_card.sprite_index = get_number_sprite(_card.number);
		is_card_valid = true;
	}
	if(is_card_valid)
		obj_event.alarm[0] = 5;
	else
		shine_card_red(_card);
}

function event_changeOperationFunction(_card){
	if(_card.type == "operation" || _card.type == "function"){
		var func = 0;
		var op = 0;
		if(_card.type == "operation")
			op++;
		else{
			func++;
			if(ds_list_empty(global.deckOperationsF)){
				func--;
				op++;
			}		
		}
		
		give_player_cards(0, op, func);
		var ind = ds_list_find_index(obj_game.deck, _card); 
		ds_list_delete(obj_game.deck, ind);
		return_card_to_game_deck(_card);
		draw_deck(obj_game.deck); 
		obj_event.alarm[0] = 5;	
		return;
	}	
	shine_card_red(_card);
}

function event_changeNumber(_card){
	if(_card.type == "number"){
		give_player_cards(1, 0, 0);
		var ind = ds_list_find_index(obj_game.deck, _card); 
		ds_list_delete(obj_game.deck, ind);
		return_card_to_game_deck(_card);
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

