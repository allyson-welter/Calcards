function draw_deck(deck, _scale = 0.35, first_position = 25){
	var last_index = ds_list_size(deck) - 1;
	if(last_index < 0)
		return;
	
	_scale = get_correct_cards_scale(deck, _scale);
	
	for(i = 0; i <= last_index; i++){
		var _card = deck[| i];
		_card.scale = _scale;
		_card.image_xscale = _scale;
		_card.image_yscale = _scale;
		var posX = first_position;
		if(i > 0)
			posX = deck[| i-1].bbox_right + _card.sprite_width*0.5 + 5;
			
		_card.x = posX;	
		_card.y = 145;
		_card._selected = false;
	}
}

function draw_selectedCards(_selectedCards, _round){
	var i = 0;
	if(_round > 1)
		i = 1;

	for(; i < 3; i++){
		var _card = _selectedCards[i];
		if(_card != undefined){
			if(i == 1 && _card.is_function)
				_card.x = 80;
			else
				_card.x = 30 + 30*i;
				
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

function get_cards_display_width(deck, _scale){
	var deck_size = ds_list_size(deck);
	var gap = 5;
	var cards_display_width = (deck_size - 1)*gap;
	for(var i = 0; i < deck_size; i++){
	var sprite_size = sprite_get_width(deck[| i].sprite_index);
	cards_display_width += sprite_size*_scale;
	}
	return cards_display_width;
}

function get_correct_cards_scale(deck, first_scale){
	var scale = first_scale;
	var display_width = get_cards_display_width(deck, scale);
	var max_width = 308;
	while(display_width > max_width){
		scale -= 0.05;
		display_width = get_cards_display_width(deck, scale);
	}
	return scale;
}