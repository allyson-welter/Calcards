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
function create_main_deck(){
	for(i = 0; i < 10; i++)
	{
		_card = instance_create_layer(0, 0, "Instances", obj_card);
		_card.image_index = 2*i; // os frames das cartas paradas são os pares (os impares são os frames delas selecionadas)
		_card.normal_index = _card.image_index;
		instance_deactivate_object(_card);
		global.deckNumbers[| i] = _card; // cria as instancias do deck de numeros
		if(i < 4) // cria as instancias do deck de operacoes
		{
			_card = instance_create_layer(0, 0, "Instances", obj_card);
			_card.image_index = 2*(i+10);
			_card.normal_index = _card.image_index;
			_card.is_op = true;
			instance_deactivate_object(_card);
			global.deckOperations[| i] = _card;
		}
	}
}
