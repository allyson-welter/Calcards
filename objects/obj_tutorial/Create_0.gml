textNum = 0;
text = "";
title = "";
obj_button.button_type = "confirm";
obj_button.sprite_index = spr_buttonConfirm;
define_text_display();

function define_text_display(){
	switch(textNum){
		case 0:
			title = "TUTORIAL";
			text = "Bem-vindo ao Calcards. Neste tutorial, voce aprendera o necessario para entender o jogo e joga-lo da maneira correta.\n\nQuando quiser ir para a proxima pagina do tutorial, clique em confirmar.";
			break;
		case 1:
			title = "REGRAS DO JOGO";
			text = "O jogo sera dividido em 3 Fases:\n- Fase 1: Soma, Subtracao, Multiplicacao e Divisao.\n- Fase 2: Anterior + Potenciacao e Radiciacao.\n- Fase 3: Anterior + Funcoes Especiais.\n\nEm cada partida, voce recebera 7 cartas na mao\n(valores de 1 a 9):\n- 4 Cartas de Numeros\n- 3 Cartas de Operacoes";
			break;
		case 2:
			title = "COMO JOGAR";
			text = "O jogo dura 3 rodadas acumulando pontos:\n\nR1: Jogue 2 numeros e 1 operacao.\n    (Ex: 5 + 3 = total inicial 8)\n\nR2: Ative a condicao especial da mesa.\n    Depois, jogue 1 operacao e 1 numero.\n\nR3: Ative a condicao especial.\n    Jogue suas ultimas 2 cartas.";
			break;
		case 3:	
			title = "PONTUACAO E RECOMPENSAS";
			text = "Sua nota depende do alvo:\n\n- 3 estrelas: Cravar o numero exato.\n- 2 estrelas: Erro de ate 5 (+/-).\n- 1 estrela: Erro de ate 10 (+/-).\n  *Exibe sua porcentagem de precisao.\n\n- Derrota: Erro maior que 10.\n\nE ai, esta pronto para jogar?";
			break;
	}
}