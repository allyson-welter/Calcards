draw_set_colour(c_black);
draw_set_font(fnt_number);
draw_set_halign(fa_right);
draw_text_transformed(51, 27, translated_random_number, 0.25, 0.25, 0)

draw_set_font(fnt_result);
draw_set_halign(fa_left);
if(!global.trava_carta)
	draw_text_transformed(19, 99, translated_card_one, 0.25, 0.25, 0)

draw_set_halign(fa_right);
draw_text_transformed(101, 99, translated_card_two, 0.25, 0.25, 0)