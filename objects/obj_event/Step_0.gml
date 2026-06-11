_card = instance_position(mouse_x, mouse_y, obj_card);
if(controle){
	dados = event_functions();
	text_evento = dados.texto;
	global.trava_carta=true;
	controle = false;
}

 
    if (_card && global.trava_carta) {
        if (mouse_check_button_pressed(mb_left)) {
			switch(dados.indice){
				case 0:
					if(!_card.is_op && _card.image_index!=9 && !_card.is_function){
						if(spr_cardsNumbersPositive==_card.sprite_index)
							_card.image_index+=1;
						else{
							if(_card.image_index==0)
								_card.sprite_index = spr_cardsNumbersPositive;
							else
								_card.image_index-=1;
						}
						alarm[0] = 5; // chama oq tá escrito no alarm 0 daqui 5 frames 
					}
					else{
						_card.image_blend = c_red;
						_card.alarm[0] = 15;  // chama oq tá escrito no alarm 0 do obj carta daqui 15 frames 
						// o alarm 0 altera a cor para àquela normal do sprite (mudei pra vermelho -> 15 frames -> volta pra cor normal)
					}
					break;
				case 1:
					if(!_card.is_op && !_card.is_function){
						if(spr_cardsNumbersPositive==_card.sprite_index){
							if(_card.image_index == 0){
								_card.sprite_index = spr_cardsNumbersNegative;
								alarm[0] = 5;
								break;
							}
						_card.image_index-=1;
						alarm[0] = 5;
						}
						else{
							if(_card.image_index==8){
								_card.image_blend = c_red;
								_card.alarm[0] = 15;
								break;
							}
						_card.image_index+=1;
						alarm[0] = 5;	
						}
					}
					else{
						_card.image_blend = c_red;
						_card.alarm[0] = 15;
					}
					break;
				case 2:
					if(_card.is_op || _card.is_function){
						var func = 0;
						var op = 0;
						if(_card.is_op)
							op++;
						else
							func++;
							
						give_player_cards(obj_game.deck, 0, op, func);
						ind = ds_list_find_index(obj_game.deck, _card); 
						ds_list_delete(obj_game.deck, ind);
						instance_deactivate_object(_card); 
						draw_deck(obj_game.deck); 
						alarm[0] = 5;	
					}
					break;
				case 3:
					if(!_card.is_op && !_card.is_function){
						give_player_cards(obj_game.deck, 1, 0,0);
						ind = ds_list_find_index(obj_game.deck, _card); 
						ds_list_delete(obj_game.deck, ind);
						instance_deactivate_object(_card); 
						draw_deck(obj_game.deck); 
						alarm[0] = 5;
					}
					else{
						_card.image_blend = c_red;
						_card.alarm[0] = 15;
					}
			}
        } // obs: sugiro criar uma função em event_functions pra cada evento pra deixar mais organizado
    } // ex: criar uma função trocar_carta e chamá-la no case 2 dentro do if (vai ficar bem mais limpo)
