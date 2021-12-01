/// @description Insert description here
// You can write your code in this editor
if (!global.gamePaused) {
	instance_deactivate_all(true);
	global.gamePaused = true;
}
else {
	instance_activate_all();
	global.gamePaused = false;
}