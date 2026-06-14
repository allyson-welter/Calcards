draw_self();
if(hover && text_description != ""){
	box_x_size = string_length(text_description)/2;
	var box_y_size = 13;
	var y_offset = 25;
	var x_offset = 10;
	draw_set_colour(c_white);
	draw_set_alpha(0.5);
	draw_rectangle(
    x - x_offset - box_x_size*2,
    y - y_offset - box_y_size / 3,
    x - x_offset + box_x_size*2,
    y - y_offset + box_y_size / 3,
    false
	);
	draw_set_font(fnt_tutorial);
	draw_set_halign(fa_center);
	draw_set_colour(c_black);
	draw_set_alpha(0.75);
	draw_text_transformed(x - x_offset, y - y_offset - 2, text_description, 0.25, 0.25, 0)
	draw_set_alpha(1);
}