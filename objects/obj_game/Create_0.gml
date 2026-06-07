global.deckNumbers = ds_list_create();
global.deckOperations = ds_list_create();
_deck = ds_list_create();
randomise(); // randomiza a seed (se quiser as mesmas cartas, apague essa linha)
create_main_deck();
give_player_cards(_deck, 5, 2);
draw_deck(_deck);
_selectedCards = array_create(3, undefined); // primeira posicao: num1; segunda: operacao; terceira: num2
number = irandom(30);
_round = 1;
//end_game(_deck, number, 2);
stars = 0;