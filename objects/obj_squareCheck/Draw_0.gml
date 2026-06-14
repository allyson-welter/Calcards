draw_self();
if(show_text){
	draw_set_colour(c_white);
	draw_set_alpha(0.5);
	draw_rectangle(
    x - box_x_offset - box_x_size*2,
    y - box_y_offset - box_y_size / 3,
    x - box_x_offset + box_x_size*2,
    y - box_y_offset + box_y_size / 3,
    false
	);
	draw_set_font(fnt_tutorial);
	draw_set_halign(fa_center);
	draw_set_colour(c_black);
	draw_set_alpha(0.75);
	draw_text_transformed(x - box_x_offset, y - box_y_offset-2, text, 0.25, 0.25, 0)
	draw_set_alpha(1);
}