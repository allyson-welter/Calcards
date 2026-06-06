function create_player_deck(deck){
	random_set_seed(6);
	ds_list_shuffle(global.deckOperations);
	ds_list_shuffle(global.deckNumbers);

	for(var i = 0; i < 5; i++)
	{
		deck[| i] = global.deckNumbers[| 0];
		instance_activate_object(deck[| i]);
		ds_list_delete(global.deckNumbers, 0);
		if(i < 2)
		{
			deck[| i+5] = global.deckOperations[| 0];
			instance_activate_object(deck[| i+5]);
			ds_list_delete(global.deckOperations, 0);
		}
	}
}
function create_main_deck(){
	for(var i = 0; i < 10; i++)
	{
		_card = instance_create_layer(0, 0, "Instances", obj_card);
		_card.image_index = i;
		instance_deactivate_object(_card);
		global.deckNumbers[| i] = _card; // cria as instancias do deck de numeros
		if(i < 4) // cria as instancias do deck de operacoes
		{
			_card = instance_create_layer(0, 0, "Instances", obj_card);
			_card.image_index = i+10;
			_card.is_op = true;
			instance_deactivate_object(_card);
			global.deckOperations[| i] = _card;
		}
	}
}

function draw_deck(deck){
	for(i = 0; i < ds_list_size(deck); i++){
		deck[| i].image_xscale = 0.35;
		deck[| i].image_yscale = 0.35;
		deck[| i].x = 63 + 32*i;
		deck[| i].y = 150;
		deck[| i]._selected = false;
	}
}
