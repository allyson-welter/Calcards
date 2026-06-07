draw_set_font(fnt_number);
draw_set_halign(fa_center);
draw_set_colour(c_black);
draw_text_transformed(310, 50, number, 5, 5, 0)

if(_round > 1){
	draw_set_font(fnt_result);
	draw_set_halign(fa_center);
	draw_set_colour(c_red);
	draw_text_transformed(310, 260, _selectedCards[0], 7, 7, 0);
}

if(_round > 3)
	draw_sprite(spr_starsTab, stars, 680, 350);