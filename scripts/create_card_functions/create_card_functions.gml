function give_player_cards(deck, _num, _op){ // _num é a quantidade de cartas de numeros a serem dadas e _op a de operacoes a serem dadas
	ds_list_shuffle(global.deckOperations);
	ds_list_shuffle(global.deckNumbers);

	for(i = 0; i < _num; i++)
	{
		ds_list_insert(deck, 0, global.deckNumbers[| 0]);
		instance_activate_object(global.deckNumbers[| 0]);
		ds_list_delete(global.deckNumbers, 0);
	}
	for(i = 0; i < _op; i++){
		ds_list_add(deck, global.deckOperations[| 0]);
		instance_activate_object(global.deckOperations[| 0]);
		ds_list_delete(global.deckOperations, 0);
	}
}
function create_main_deck(){ // essa funcao cria o baralho principal (as cartas possiveis que o player pode ter)
	operations_unlocked = get_unlocked_operations();
	negative_unlocked = get_unlocked_negative();
	for(i = 0; i < 10; i++)
	{
		_card = create_card(spr_cardsNumbersPositive, 2*i, false); // cria as instancias do deck de numeros
		ds_list_add(global.deckNumbers, _card);
	}
	for(i = 0; i < operations_unlocked; i++){ // cria as instancias do deck de operacoes
		_card = create_card(spr_cardsOperations, 2*i, true);
		ds_list_add(global.deckOperations, _card);
	}
	for(i = 0; i < negative_unlocked; i++){
		_card = create_card(spr_cardsNumbersNegative, 2*i, false);
		ds_list_add(global.deckNumbers, _card);
	}
}

function create_card(_sprite, _frame, is_op){
		_card = instance_create_layer(0, 0, "Instances", obj_card);
		_card.sprite_index = _sprite;
		_card.image_index = _frame;
		_card.normal_index = _card.image_index;
		_card.is_op = is_op;
		instance_deactivate_object(_card);
		return _card;
}