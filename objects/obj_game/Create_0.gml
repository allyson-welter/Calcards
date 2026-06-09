global.deckNumbers = ds_list_create(); // baralho que armazena os numeros possiveis do jogador ter
global.deckOperations = ds_list_create(); // baralho que armazena as operacoes possiveis do jogador ter
_deck = ds_list_create(); // baralho do jogador
randomise(); // randomiza a seed (se quiser as mesmas cartas, apague essa linha)
create_main_deck();
give_player_cards(_deck, 5, 2); // expliquei um pouco dessa funcao em create_card_functions
draw_deck(_deck); // funcao que organiza na tela as cartas do jogador
_selectedCards = array_create(3, undefined); // array que armazena as cartas selecionadas; primeira posicao: num1; segunda: operacao; terceira: num2
number = get_random_number(); // numero que o jogador deve atingir
_round = 1; 
stars = 0;