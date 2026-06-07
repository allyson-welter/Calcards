if (controle && obj_game._round < 3) {
    var _cx = display_get_gui_width() / 2;
    var _cy = display_get_gui_height() / 2;
    
    draw_set_color(c_black);
    draw_set_alpha(0.75); 
   
    draw_rectangle(_cx - 350, _cy - 80, _cx + 350, _cy + 80, false);
  
    draw_set_alpha(1.0);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    draw_text_ext(_cx, _cy, text_evento, 25, 650);
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}