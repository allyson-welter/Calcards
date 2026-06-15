function choose_card(_card, _selectedCards, _deck){
	var _choosedCard = false;
	
	if(_card._selected){
		selected_to_player_deck(_card, _selectedCards);
		_choosedCard = true;
		return _choosedCard;
	}
	
	if(!is_all_selected(_selectedCards)){
		if(_card.type == "function"){
			if(is_undefined(_selectedCards[1]) && is_undefined(_selectedCards[2]))
			{
				player_deck_to_selected(_selectedCards, 1, _card);
				_choosedCard = true;
			}
		}
		else if(_card.type == "operation"){
			if(is_undefined(_selectedCards[1])){
				player_deck_to_selected(_selectedCards, 1, _card);
				_choosedCard = true;
			}
		}
		else{
			if(is_undefined(_selectedCards[0])){
				player_deck_to_selected(_selectedCards, 0, _card);
				_choosedCard = true;
			}
			else if(is_undefined(_selectedCards[2])){
				player_deck_to_selected(_selectedCards, 2, _card);
				_choosedCard = true;
			}
		}
	}
	return _choosedCard;
}

function card_cant_be_selected(_card){
	_card.image_alpha = 0;
	_card.alarm[0] = 3;
}

function is_all_selected(_selectedCards){
	var _isAllSelected = true;
	
	for(i = 0; i < 3; i++){
		if(i == 1 && !is_undefined(_selectedCards[i])){
			if(_selectedCards[i].type == "function")
				break;	
		}
		if(_isAllSelected && is_undefined(_selectedCards[i]))
			_isAllSelected = false;
	}
	return _isAllSelected;
}

function destroy_selected(cards, gameRound){ //
	if(gameRound > 1)
		var i = 1;
	else
		i = 0;
		
	for(; i < 3; i++){
		var card = cards[i];
		cards[i] = undefined;
		if(!is_undefined(card))
			return_card_to_game_deck(card);
	}
}

function return_card_to_game_deck(card){ // sorry again for doing this
	if(card.type == "operation")
		ds_list_add(global.deckOperationsN, card.sprite_index);
	else if(card.type == "function")
		ds_list_add(global.deckOperationsF, card.sprite_index);
	else
		ds_list_add(global.deckNumbers, card.sprite_index);
	instance_destroy(card);
}

function selected_to_player_deck(card, selectedCards){ //
	card._selected = false;
	var index = array_get_index(selectedCards, card);
	selectedCards[index] = undefined;
	if(card.type == "operation" || card.type == "function")
		ds_list_add(obj_game.deck, card);
	else
		ds_list_insert(obj_game.deck, 0, card);
}

function player_deck_to_selected(selectedCards, pos, card){
	selectedCards[pos] = card;
	var index = ds_list_find_index(obj_game.deck, card);
	ds_list_delete(obj_game.deck, index);
	card._selected = true;
}