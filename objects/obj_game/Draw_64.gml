draw_set_font(fnt_number);
draw_set_halign(fa_center);
draw_set_colour(c_black);
draw_text_transformed(140, 40, number_to_draw, 4, 4, 0);


if(_round > 1){
	draw_set_font(fnt_result);
	draw_set_halign(fa_center);
	draw_set_colour(c_red);		
	draw_text_transformed(122, 272, result_to_draw, 6, 6, 0);
}

if(_round > 3) 
	draw_sprite_ext(spr_starsTab, stars, 680, 320, 4, 4, 0, c_white, 1);
	
