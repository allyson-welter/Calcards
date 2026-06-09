function draw_deck(deck){
	for(i = 0; i < ds_list_size(deck); i++){
		if(i == 0)
			posX = 30;
		else
			posX = deck[| i-1].bbox_right + deck[| i].sprite_width*0.5 + 5;
			
		
		deck[| i].x = posX;	
		deck[| i].y = 145;
		deck[| i].image_xscale = 0.35;
		deck[| i].image_yscale = 0.35;
		deck[| i]._selected = false;
	}
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