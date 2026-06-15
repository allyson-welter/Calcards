function draw_deck(deck, _scale = 0.175, first_position = 25){
	var last_index = ds_list_size(deck) - 1;
	var gap = 1.75;
	if(last_index < 0)
		return;
	
	_scale = get_correct_cards_scale(deck, _scale, gap);
	
	for(var i = 0; i <= last_index; i++){
		var _card = deck[| i];
		if(_card.type == "function")
			_card.scale = 2*_scale;
		else
			_card.scale = _scale;
		_card.image_xscale = _card.scale;
		_card.image_yscale = _card.scale;
		var width = _card.bbox_right - _card.bbox_left;
		var posX = first_position;
		if(i > 0)
			posX = deck[| i-1].bbox_right + width*0.5 + gap;
			
		_card.x = posX;	
		_card.y = 145;
		_card._selected = false;
	}
}

function draw_selectedCards(_selectedCards, _round){
	var i = 0;
	var scale = 0.175;
	if(_round > 1)
		i = 1;
		
	for(; i < 3; i++){
		var _card = _selectedCards[i];
		if(_card != undefined){
			_card.image_xscale = 0.175;
			_card.image_yscale = 0.175;
			if(i == 1 && _card.type == "function"){
				_card.x = 80;
				_card.image_xscale *= 2;
				_card.image_yscale *= 2;
			}
			else
				_card.x = 30 + 30*i;
				
			_card.y = 80;
		}
	}
}

function shine_card(_card){
	_card.image_blend = c_yellow;
	_card.image_alpha = 0.5;
	_card.alarm[0] = 30;
	
}

function get_cards_display_width(deck, _scale, gap){
	var deck_size = ds_list_size(deck);
	var cards_display_width = (deck_size - 1)*gap;
	for(var i = 0; i < deck_size; i++){
		var card = deck[| i];
		var sprite_size = card.sprite_width;
		cards_display_width += sprite_size*_scale;
	}
	return cards_display_width;
}

function get_correct_cards_scale(deck, first_scale, gap){
	var scale = first_scale;
	var display_width = get_cards_display_width(deck, scale, gap);
	var max_width = 250;
	while(display_width > max_width){
		scale -= 0.05;
		display_width = get_cards_display_width(deck, scale, gap);
	}
	return scale;
}

function create_animation_cards_surface(){
	var surface = surface_create(display_get_gui_width(), display_get_gui_height());	
	surface_set_target(surface);
	draw_sprite_ext(spr_animationCards1, -1, display_get_gui_width()/2, display_get_gui_height()/2, 10, 10, 0, c_white, 1);
	surface_reset_target();
	return surface;
}