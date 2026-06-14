function give_player_cards(_deck, _num, _op, _func = 0){ // _num é a quantidade de cartas de numeros a serem dadas e _op a de operacoes a serem dadas
	ds_list_shuffle(global.deckOperationsN);
	ds_list_shuffle(global.deckNumbers);
	ds_list_shuffle(global.deckOperationsF);

	for(i = 0; i < _num; i++)
	{
		ds_list_insert(_deck, 0, global.deckNumbers[| 0]);
		instance_activate_object(global.deckNumbers[| 0]);
		ds_list_delete(global.deckNumbers, 0);
		shine_card(_deck[| 0]);
	}
	for(i = 0; i < _op; i++){
		ds_list_add(_deck, global.deckOperationsN[| 0]);
		instance_activate_object(global.deckOperationsN[| 0]);
		ds_list_delete(global.deckOperationsN, 0);
		shine_card(_deck[| ds_list_size(_deck) - 1]);
	}
	for(i = 0; i < _func; i++){
		ds_list_add(_deck, global.deckOperationsF[| 0]);
		instance_activate_object(global.deckOperationsF[| 0]);
		ds_list_delete(global.deckOperationsF, 0);
		shine_card(_deck[| ds_list_size(_deck) - 1]);
	}
}
function create_main_deck(){ // essa funcao cria o baralho principal (as cartas possiveis que o player pode ter)
	operations_unlocked = get_unlocked_operations();
	negatives_unlocked = get_unlocked_negative();
	functions_unlocked = get_unlocked_functions();
	positives_unlocked = get_unlocked_positive();
	
	for(i = 0; i < positives_unlocked; i++)  // cria as instancias dos numeros positivos
	{
		_card = create_card(spr_cardsNumbersPositive, i,,, "number"); // cria as instancias do deck de numeros positivos
		ds_list_add(global.deckNumbers, _card);
	}
	for(i = 0; i < negatives_unlocked; i++){ // cria as instancias dos numeros negativos
		_card = create_card(spr_cardsNumbersNegative, i,,,"number");
		ds_list_add(global.deckNumbers, _card);
	}
	for(i = 0; i < operations_unlocked; i++){ // cria as instancias do deck de operacoes
		_card = create_card(spr_cardsOperations, i, true,, "operation");
		ds_list_add(global.deckOperationsN, _card);
	}
	for(i = 0; i < functions_unlocked; i++){
		_card = create_card(spr_cardsFunctions, i,, true, "function");	
		ds_list_add(global.deckOperationsF, _card);
	}
	if(global.belettiMode){
		create_binary_operators();
	}
}

function create_card(_sprite, _frame, is_op = false, is_function = false, type = ""){
		_card = instance_create_layer(0, 0, "Instances", obj_card);
		_card.sprite_index = _sprite;
		_card.image_index = _frame;
		_card.normal_index = _card.image_index;
		_card.is_op = is_op;
		_card.is_function = is_function;
		_card.number = i; 
		_card.type = type;
		instance_deactivate_object(_card);
		_card.text_description = get_card_description(_card);
		return _card;
}