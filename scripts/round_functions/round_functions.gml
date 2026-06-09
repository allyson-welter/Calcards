function event_functions(){
	var arsenal_eventos = [
            "SURPRESA! AGORA VOCÊ DEVE ADICIONAR MAIS UMA UNIDADE EM UMA CARTA DE NUMERO.",
            "SURPRESA! AGORA VOCÊ DEVE DIMINUIR UMA UNIDADE EM UMA CARTA DE NUMERO.",
            "SURPRESA! VOCÊ DEVE DESCARTAR UMA CARTA DE OPERAÇÃO E COMPRAR UMA NOVA."
        ];
		var total_de_textos = array_length(arsenal_eventos);
        var indice_sorteado = irandom(total_de_textos - 1);
		var texto_final = arsenal_eventos[indice_sorteado];
		return texto_final;
}
function give_player_first_cards(_deck){
	switch(global.choosedLevel){
		case 1:
			give_player_cards(_deck, 5, 2);
			break;
		case 2:
			give_player_cards(_deck, 5, 3);
			break;
		case 3:
			give_player_cards(_deck, 5, 2, 1);
			break;
	}
}

function new_round(deck, _round, number, _result){
	switch(_round){
		case 2:
		give_player_cards(deck, 0, 1);
		draw_deck(deck);
		shine_card(deck[| ds_list_size(deck) - 1]);
			break;
		case 3:
		give_player_cards(deck, 1, 0);
		draw_deck(deck);
		shine_card(deck[| 0]);
			break;
		case 4:
		end_game(deck, number, _result);
			break;
	}
}

function clear_lists(deck){
	ds_list_destroy(global.deckNumbers);
	ds_list_destroy(global.deckOperationsN);
	ds_list_destroy(global.deckOperationsF);
	instance_destroy(obj_card);
	ds_list_destroy(deck);

}

function end_game(deck, number, _result){
	clear_lists(deck);
	_btn = instance_create_layer(160, 150, "Instances", obj_button);
	_btn.image_yscale = 0.3;
	_btn.image_xscale = 0.3;
	_btn.button_type = "continue";
	_btn.sprite_index = spr_buttonContinuar;
}

function get_stars(number, _result){
	_diff = abs(number - _result);
	if(_diff > 10) // 0 estrelas
		_stars = 0;
	else if(_diff > 5) // 1 estrela
		_stars = 1;
	else if(_diff > 0) // 2 estrelas
		_stars = 2;
	else // 3 estrelas (_diff = 0)
		_stars = 3;
	return _stars;
}

function update_level(stars){
	if(global.choosedLevel == global.levelsUnlocked)
		global.levelsUnlocked++;
	if(global.stars[global.choosedLevel-1] < stars)
		global.stars[global.choosedLevel-1] = stars;
	room_goto(rm_menu);
}

function get_random_number(){
	number = 0;
	switch(global.choosedLevel){
		case 1:
			number = irandom(30);
			break;
		case 2:
			number = irandom_range(-30, 100);
			break;
		case 3:
			number = irandom_range(-100, 1000);
			break;			
	}
	return number;
}