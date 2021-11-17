/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_escape))
	global.gamePaused = !global.gamePaused;

if (global.gamePaused) {
	with (oPlayer) {
		input_blocked = true;
	}
	with (oEnemy) {
		hsp = 0;
		
	}
}

else {
	with (oPlayer) {
		input_blocked = false;
	
	}
	with (oEnemy)
		hsp = gamePausedHSP;
	
}