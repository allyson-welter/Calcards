instance_destroy(obj_animationCards);
for(var i = 0; i < ds_list_size(obj_game.deck); i++)
	instance_activate_object(obj_game.deck[| i]);