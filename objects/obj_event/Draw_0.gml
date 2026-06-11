if (global.trava_carta && obj_game._round <= 3) {
    draw_sprite(spr_event, 0, x, y);
    
    draw_set_color(c_black); 
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	
    draw_set_font(fnt_event); 
    
    draw_text_ext(x-10, y, text_evento, 10, 270);
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}