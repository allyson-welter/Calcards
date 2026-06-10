if(!variable_global_exists("levelsUnlocked")){
	global.levelsUnlocked = 3; // níveis desbloqueados (se quer testar nivel 2/3 sem desbloquea-lo, altere essa variável)
	global.stars = array_create(3, 0);
}
global.choosedLevel = 1;
surface = noone;
