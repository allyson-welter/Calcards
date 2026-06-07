function draw_deck(deck){
	for(i = 0; i < ds_list_size(deck); i++){
		deck[| i].image_xscale = 0.35;
		deck[| i].image_yscale = 0.35;
		deck[| i].x = 63 + 32*i;
		deck[| i].y = 150;
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
		if(_card != noone){
				_card.image_xscale = 0.3;
				_card.image_yscale = 0.3;
				_card.x = 70 + 30*i;
				_card.y = 80;
		}
	}
}

function shine_card(_card){
	_card.image_blend = c_yellow;
	_card.image_alpha = 0.5;
	_card.alarm[0] = 30;
	
}