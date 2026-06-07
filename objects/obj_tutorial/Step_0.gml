_button = instance_position(mouse_x, mouse_y, obj_button);

if(_button && mouse_check_button_pressed(mb_left)){
	textNum++;
	define_text_display();
	if(textNum == 3)
	{
		obj_button.button_type = "start";
		obj_button.sprite_index = spr_buttonStart;
	}
	else if(textNum == 4)
		room_goto(rm_menu);
}