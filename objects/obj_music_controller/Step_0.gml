hover = instance_position(mouse_x, mouse_y, self);

if(hover && mouse_check_button_pressed(mb_left)){
	global.music_on = !global.music_on;
	image_index = global.music_on;
	if(global.music_on)
		audio_resume_sound(global.music);
	else
		audio_pause_sound(global.music);
}

if(room_get_name(rm_game) != current_room){
	refresh_music_sprite_position();	
}