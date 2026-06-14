global.deckNumbers = ds_list_create(); // baralho que armazena os numeros possiveis do jogador ter
global.deckOperationsN = ds_list_create(); // baralho que armazena as operacoes normais possiveis do jogador ter
global.deckOperationsF = ds_list_create();  // baralho que armazena as operacoes de função possiveis do jogador ter
deck = ds_list_create(); // baralho do jogador
cardsToGiveEachRound = number_of_cards_to_give_player();
create_main_deck();
randomise(); // randomiza a seed (se quiser as mesmas cartas, apague essa linha)
give_player_cards(deck, cardsToGiveEachRound[0],  cardsToGiveEachRound[1], cardsToGiveEachRound[2]);
draw_deck(deck);
_selectedCards = array_create(3, undefined); // array que armazena as cartas selecionadas; primeira posicao: num1; segunda: operacao; terceira: num2
number = get_random_number(); // numero que o jogador deve atingir
_round = 1; 
stars = 0;
number_to_draw = get_number_to_draw(number);
result_to_draw = noone;
