global.deckNumbers = ds_list_create(); // baralho que armazena os numeros possiveis do jogador ter
global.deckOperationsN = ds_list_create(); // baralho que armazena as operacoes normais possiveis do jogador ter
global.deckOperationsF = ds_list_create();  // baralho que armazena as operacoes de função possiveis do jogador ter
deck = ds_list_create(); // baralho do jogador
create_main_deck();
randomise(); // randomiza a seed (se quiser as mesmas cartas, apague essa linha)
give_player_first_cards(deck);
draw_deck(deck);
_selectedCards = array_create(3, undefined); // array que armazena as cartas selecionadas; primeira posicao: num1; segunda: operacao; terceira: num2
number = get_random_number(); // numero que o jogador deve atingir
_round = 1; 
stars = 0;