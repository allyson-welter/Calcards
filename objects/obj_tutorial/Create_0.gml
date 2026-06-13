textNum = 0;
text = "";
title = "";
obj_button.button_type = "continue";
obj_button.sprite_index = spr_buttonContinuar;
define_text_display();

function define_text_display(){
	switch(textNum){
		case 0:
			title = "TUTORIAL";
			text = "Bem-vindo ao Calcards. Neste tutorial, você aprenderá o necessário para entender o jogo e jogá-lo da maneira correta.\n\nQuando quiser ir para a próxima página do tutorial, clique em continuar.";
			break;
		case 1:
			title = "REGRAS DO JOGO";
			text = "O objetivo do jogo é chegar o mais próximo possível do número-alvo gerado aleatoriamente.\n\nVocê começa a partida com uma mão de 7 a 8 cartas. Essas cartas podem ser números, operações ou funções.\n\nA partida possui 3 rodadas, e em cada uma delas você deve usar suas cartas para construir um resultado.\n\nAo final da terceira rodada, seu resultado final será comparado com o número-alvo para calcular sua pontuação.";
			break;
		case 2:
			title = "COMO JOGAR";
			text = "Na primeira rodada, você deve escolher 2 cartas de número e 1 carta de operação para formar uma conta. Também é possível usar 1 carta de número e 1 carta de função.\n\nO resultado obtido nessa rodada será usado como base para a próxima jogada.\n\nNa segunda e na terceira rodada, você deve escolher 1 carta de operação e 1 carta de número, ou então 1 carta de função. O resultado anterior será usado como o número que falta na operação ou como entrada da função.\n\nAntes de cada nova rodada, exceto a primeira, um evento aleatório acontece. Esse evento pode trocar uma carta de operação ou alterar uma carta de número, aumentando ou diminuindo seu valor em 1 unidade.";
			break;
		case 3:	
			title = "PONTUACAO E RECOMPENSAS";
			text = "A pontuação é calculada com base na diferença entre o seu resultado final e o número-alvo.\n\nEssa diferença é chamada de erro. Quanto menor o erro, melhor será sua pontuação.\n\nPara calcular o desempenho, o erro é dividido pelo intervalo de valores possíveis do número-alvo. Por exemplo, se o número-alvo pode variar de 2 a 100, o intervalo é 98.\n\nA quantidade de estrelas recebida depende desse erro percentual: 3 estrelas para acerto exato, 2 estrelas para erro de até 5%, 1 estrela para erro de até 15% e 0 estrelas para erro maior que 15%.";
			break;
	}
}