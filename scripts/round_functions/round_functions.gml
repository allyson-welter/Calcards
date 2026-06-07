function event_functions(){
	var arsenal_eventos = [
            "SURPRESA! AGORA VOCÊ DEVE ADICIONAR MAIS UMA UNIDADE EM UMA CARTA DE NUMERO.",
            "SURPRESA! AGORA VOCÊ DEVE DIMINUIR UMA UNIDADE EM UMA CARTA DE NUMERO.",
            "SURPRESA! VOCÊ DEVE DESCARTAR UMA CARTA DE OPERAÇÃO E COMPRAR UMA NOVA."
        ];
		var total_de_textos = array_length(arsenal_eventos);
        var indice_sorteado = irandom(total_de_textos - 1);
		var texto_final = arsenal_eventos[indice_sorteado];
		return texto_final;
}

function new_round(deck, _round){
	switch(_round){
		case 2:
		give_player_cards(deck, 0, 1);
		draw_deck(deck);
		shine_card(deck[| ds_list_size(deck) - 1]);
			break;
		case 3:
		give_player_cards(deck, 1, 0);
		draw_deck(deck);
		shine_card(deck[| 0]);
			break;
		case 4:
		
			break;
	}
}
