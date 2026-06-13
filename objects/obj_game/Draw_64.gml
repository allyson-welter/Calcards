draw_set_font(fnt_number);
draw_set_halign(fa_center);
draw_set_colour(c_black);
draw_text_transformed(185, 40, number_to_draw, 4, 4, 0)


if(_round > 1){ // isso aqui desenha o numero que o jogador obteve realizando uma operação 		
	draw_set_font(fnt_result);
	draw_set_halign(fa_center);
	draw_set_colour(c_red);		
	draw_text_transformed(170, 260, result_to_draw, 7, 7, 0);
}

if(_round > 3) // desenha a tela de fim de jogo
	draw_sprite(spr_starsTab, stars, 680, 350);
	
if(translateHex){
	draw_set_font(fnt_number);
	draw_set_halign(fa_right);
	draw_set_colour(c_black);
	draw_text_transformed(260, 120, number, 1, 1, 0)
	if(_round > 1){
		draw_set_font(fnt_result);
		draw_set_halign(fa_left);
		draw_set_colour(c_red);		
		draw_text_transformed(110, 380, _selectedCards[0], 1, 1, 0);
	}
}