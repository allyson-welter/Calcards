_deck = ds_list_create();
create_deck(_deck);
draw_deck(_deck);
_selectedCards = array_create(3, noone); // primeira posicao: num1; segunda: operacao; terceira: num2
number = irandom(30);
has_result = false;