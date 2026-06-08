if(!variable_global_exists("levelsUnlocked")){
	global.levelsUnlocked = 1;
	global.stars = array_create(3, 0);
}
global.choosedLevel = 1;
surface = noone;
