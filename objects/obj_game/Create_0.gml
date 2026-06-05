_deck = ds_list_create();
create_deck(_deck);
draw_deck(_deck);
_selectedCards = array_create(4, noone); // primeira posicao: num1; segunda: operacao; terceira: num2; quarta: resultado
number = irandom(30);