global.deckNumbers = ds_list_create(); 
global.deckOperationsN = ds_list_create(); 
global.deckOperationsF = ds_list_create();  
deck = ds_list_create();
cardsToGiveEachRound = number_of_cards_to_give_player();
create_main_deck();
randomise(); 
give_player_cards(deck, cardsToGiveEachRound[0],  cardsToGiveEachRound[1], cardsToGiveEachRound[2]);
draw_deck(deck);
_selectedCards = array_create(3, undefined); 
number = get_random_number();
_round = 1; 
stars = 0;
number_to_draw = get_number_to_draw(number);
result_to_draw = noone;


