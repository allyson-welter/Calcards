function create_deck(deck){
	deckN = ds_list_create();
	deckO = ds_list_create();
	randomise();

	for(var i = 0; i < 10; i++)
	{
		deckN[| i] = i;
		if(i < 4)
			deckO[| i] = i+10;
	}
	ds_list_shuffle(deckO);
	ds_list_shuffle(deckN);

	for(var i = 0; i < 5; i++)
	{
		deck[i] = instance_create_layer(0, 0, "Instances", obj_card);
		deck[i].image_index = deckN[| 0];
		deck[i].mask_index = spr_cards;
		ds_list_delete(deckN, 0);
		if(i < 2)
		{
			deck[i+5] = instance_create_layer(0, 0, "Instances", obj_card);
			deck[i+5].image_index = deckO[| 0];
			deck[i+5].mask_index = spr_cards;
			ds_list_delete(deckO, 0);
		}
	}
	ds_list_destroy(deckO);
	ds_list_destroy(deckN);
}

function draw_deck(deck, _cardsOnDeck){
	for(i = 0; i < _cardsOnDeck; i++){
		deck[i].x = 50 + 50*i;
		deck[i].y = 150;
		deck[i]._selected = false;
	}
}