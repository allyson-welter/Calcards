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
		deck[| i] = instance_create_layer(10 + 50*i, 125, "Instances", obj_card);
		deck[| i].image_index = deckN[| 0];
		ds_list_delete(deckN, 0);
		if(i < 2)
		{
			deck[| i+5] = instance_create_layer(260 + 50*i, 125, "Instances", obj_card);
			deck[| i+5].image_index = deckO[| 0];
			ds_list_delete(deckO, 0);
		}
	}
}