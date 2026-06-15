function give_player_cards(num, op, func){
	ds_list_shuffle(global.deckOperationsN);
	ds_list_shuffle(global.deckNumbers);
	ds_list_shuffle(global.deckOperationsF);
	
	for(i = 0; i < num; i++)
	{
		var sprite = global.deckNumbers[| 0];
		ds_list_delete(global.deckNumbers, 0);
		var card = create_card(sprite, "number");
		ds_list_insert(obj_game.deck, 0, card);
	}
	for(i = 0; i < op; i++){
		var sprite = global.deckOperationsN[| 0];
		ds_list_delete(global.deckOperationsN, 0);
		var card = create_card(sprite, "operation");
		ds_list_add(obj_game.deck, card);
	}
	for(i = 0; i < func; i++){
		var sprite = global.deckOperationsF[| 0];
		ds_list_delete(global.deckOperationsF, 0);
		var card = create_card(sprite, "function");
		ds_list_add(obj_game.deck, card);
	} 
}

function create_main_deck(){
	add_unlocked_functions();
	add_unlocked_negative();
	add_unlocked_operations();
	add_unlocked_positive();
}

function create_card(sprite, type){
	var card = instance_create_layer(0, 0, "Instances", obj_card);
	card.sprite_index = sprite;
	card.type = type;
	card.number = get_card_number(sprite, type);
	card.text_description = get_card_description(type, card.number);
	return card;
}