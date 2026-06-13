draw_self();
if(show_text){
	var size = 13;
	var x_offset = 15;
	if(room == rm_menu)
		var y_offset = 17;
	else
		y_offset = -17;

	draw_set_colour(c_white);
	draw_set_alpha(0.5);
	draw_rectangle(
    x - x_offset - size*2,
    y - y_offset - size / 3,
    x - x_offset + size*2,
    y - y_offset + size / 3,
    false
	);
	draw_set_font(fnt_tutorial);
	draw_set_halign(fa_center);
	draw_set_colour(c_black);
	draw_set_alpha(0.75);
	draw_text_transformed(x - x_offset, y - y_offset-2, text, 0.25, 0.25, 0)
	draw_set_alpha(1);
}