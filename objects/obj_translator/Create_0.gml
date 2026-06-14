number_dec = obj_game.number;
number_hex = decimal_to_hex(number_dec);
number_bin = decimal_to_binary(number_dec);
translateBase = 0; // 0: nenhuma; 10: para decimal; 2: para binario
translated_random_number = "";
translated_card_one = "";
translated_card_two = "";
objectsThatChangeState = [obj_card, obj_button];