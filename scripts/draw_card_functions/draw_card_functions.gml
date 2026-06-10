function draw_deck(deck, _scale = 0.35){
	last_index = ds_list_size(deck) - 1;
	for(i = 0; i <= last_index; i++){
		_card = deck[| i];
		_card.scale = _scale
		_card.image_xscale = _scale;
		_card.image_yscale = _scale;
		if(i == 0)
			posX = 30;
		else
			posX = deck[| i-1].bbox_right + _card.sprite_width*0.5 + 5;
			
		_card.x = posX;	
		_card.y = 145;
		_card._selected = false;
	}
	if(deck[| last_index].bbox_right > 308)
		draw_deck(deck, _scale - 0.05);
}

function draw_selectedCards(_selectedCards, _round){
	if(_round > 1)
		i = 1;
	else
		i = 0;
		
	for(; i < 3; i++){
		_card = _selectedCards[i];
		if(_card != undefined){
			if(i == 1 && _card.is_function)
				_card.x = 90;
			else
				_card.x = 40 + 30*i;
				
			_card.y = 80;
			_card.image_xscale = 0.3;
			_card.image_yscale = 0.3;

		}
	}
}

function shine_card(_card){
	_card.image_blend = c_yellow;
	_card.image_alpha = 0.5;
	_card.alarm[0] = 30;
	
}