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
			break;
		case 3:
			break;
	}
}