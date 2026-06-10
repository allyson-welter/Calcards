function new_round(deck, _round, number, _result, cards_to_give){
	switch(_round){
		case 2:
		show_debug_message(cardsToGiveEachRound[0]);
		give_player_cards(deck, cardsToGiveEachRound[3], cardsToGiveEachRound[4], cardsToGiveEachRound[5]);
		draw_deck(deck);
			break;
		case 3:
		give_player_cards(deck, cardsToGiveEachRound[6], cardsToGiveEachRound[7], cardsToGiveEachRound[8]);
		draw_deck(deck);
			break;
		case 4:
		end_game(deck, number, _result);
			break;
	}
}

function number_of_cards_to_give_player(){ // funcao pra saber quais cartas dar por rodada a depender do level
	switch(global.choosedLevel){
		case 1:
			cards_to_give = [5, 2, 0, 1, 1, 0, 2, 1, 0];
			break;
		case 2:
			cards_to_give = [5, 3, 0, 1, 2, 0, 2, 1, 0];
			break;
		case 3:
			cards_to_give = [5, 2, 1, 0, 1, 1, 1, 0, 1];
			break;
	}
	return cards_to_give;
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
	_range = get_number_range();
	_error = _diff/(_range[1] - _range[0])*100; // erro em % (sobre o total do intervalo)
	if(_error > 15) // 0 estrelas (erro de >15%)
		_stars = 0;
	else if(_diff > 7.5) // 1 estrela (erro de >7.5%)
		_stars = 1;
	else if(_diff > 0) // 2 estrelas (erro de >0%)
		_stars = 2;
	else // 3 estrelas (erro de 0%)
		_stars = 3;
	return _stars;
}

function update_level_unlocked(stars){
	if(global.choosedLevel == global.levelsUnlocked)
		global.levelsUnlocked++;
	if(global.stars[global.choosedLevel-1] < stars)
		global.stars[global.choosedLevel-1] = stars;
	room_goto(rm_menu);
}

function get_random_number(){
	number_range = get_number_range();
	number = irandom_range(number_range[0], number_range[1]);
	return number;
}

function get_number_range(){
	switch(global.choosedLevel){
		case 1:	
			return [0, 30]; // ex: no level 1, o numero aleatório só pode ir de 0 a 30
		case 2:
			return [-30, 100];
		case 3:
			return [-300, 999];
	}
}