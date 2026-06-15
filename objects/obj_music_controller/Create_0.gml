global.music = audio_play_sound(snd_backgroundMusic, 10, true);
global.music_on = true;
current_room = "rm_menu";
image_xscale = 0.175;
image_yscale = 0.175;
image_index = 1;

function refresh_music_sprite_position(){
	switch(room){
		case rm_tutorial:
			current_room = "rm_tutorial";
			obj_music_controller.x = 18;
			obj_music_controller.y = 164;
		break;
		case rm_menu:
			current_room = "rm_menu";
			obj_music_controller.x = 18;
			obj_music_controller.y = 164;
		break;
		case rm_game:
			current_room = "rm_game";
			obj_music_controller.x = 307;
			if(global.belettiMode)
				obj_music_controller.y = 45;
			else
				obj_music_controller.y = 25;
		break;
	}
}