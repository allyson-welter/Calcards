_insta = instance_position(mouse_x, mouse_y, obj_button);
_card = instance_position(mouse_x, mouse_y, obj_card);
if(_insta){

	if(mouse_check_button_pressed(mb_left)){
		dados = event_functions();
		text_evento = dados.texto;
		controle = true;
		global.trava_carta=true;
	}
}
 
    if (_card && controle) {
        if (mouse_check_button_pressed(mb_left)) {
			switch(dados.indice){
				case 0:
					if(!_card.is_op){
						_card.image_index+=1;
						controle = false;
						alarm[0] = 5; // chama oq tá escrito no alarm 0 daqui 5 frames 
					}
					else{
						_card.image_blend = c_red;
						_card.alarm[0] = 15;  // chama oq tá escrito no alarm 0 do obj carta daqui 15 frames 
						// o alarm 0 altera a cor para àquela normal do sprite (mudei pra vermelho -> 15 frames -> volta pra cor normal)
					}
					break;
				case 1:
					if(!_card.is_op){
						_card.image_index-=1;
						controle = false;
						alarm[0] = 5;
					}
					else{
						_card.image_blend = c_red;
						_card.alarm[0] = 15;
					}
					break;
				case 2:
					if(_card.is_op){
						controle = false;
						give_player_cards(obj_game.deck, 0, 1, 0); // funcao que da carta para o player. O primeiro parâmetro
						// é o deck do player e o restante eu expliquei em create_card_functions (primeira função)
						ds_list_add(global.deckOperationsN, _card); // volta a carta selecionada pro deck global (o deck que segura todas as cartas possíveis)
						ind = ds_list_find_index(obj_game.deck, _card); // procura em qual indice a carta está no deck do player
						ds_list_delete(obj_game.deck, ind); // usa o indice achado anteriormente para tirar a carta do deck do player
						// obs: não é possivel tirar a carta do deck do player diretamente sem o indice (ent tu precisa pegar ele primeiro)
						instance_deactivate_object(_card); // desativa a carta (pra ela sumir e o jogador não poder interagir com ela)
						draw_deck(obj_game.deck); // desenha o deck de novo (sempre que alterar o deck do jogador, desenhe-o novamente para atualizar as mudanças)
						alarm[0] = 5;	
					}
					else if(_card.is_function){
						
					}
					break;
			}
        } // obs: sugiro criar uma função em event_functions pra cada evento pra deixar mais organizado
    } // ex: criar uma função trocar_carta e chamá-la no case 2 dentro do if (vai ficar bem mais limpo)
