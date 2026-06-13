hover = position_meeting(mouse_x, mouse_y, self);

if(hover){
	show_text = true;
	if(mouse_check_button_pressed(mb_left)){
		square_checked();
	}
}
else
	show_text = false;
	