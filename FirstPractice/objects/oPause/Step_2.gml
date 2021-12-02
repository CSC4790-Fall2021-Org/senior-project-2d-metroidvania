/// @description Insert description here
// You can write your code in this editor
/*if (keyboard_check_pressed(vk_escape) && sign(oPlayer.vsp) <= 0) {
	global.gamePaused = !global.gamePaused;
	with (oPlayer) {
		input_blocked = !input_blocked;
	}
	with (oEnemy) {
		image_speed = 1;
		if (hsp == 0)
			hsp = gamePausedHSP;
		else
			gamePausedHSP = hsp;
	}
}*/

if (global.gamePaused) {
	/*with (oPlayer) {
		grapple = false;
		input_blocked = true;
		hsp = 0;
		//vsp += gravity;
		image_speed = 0;
	}
	with (oEnemy) {
		hsp = 0;
		image_speed = 0;
	}*/
	
	//menu logic
	keyUp = keyboard_check_pressed(vk_up);
	keyDown = keyboard_check_pressed(vk_down);
	pauseOptionSelected += keyDown - keyUp; //moving menu "cursor"
	
	if (pauseOptionSelected >= array_length(pauseOptions))
		pauseOptionSelected = 0;
	if (pauseOptionSelected < 0)
		pauseOptionSelected = array_length(pauseOptions) - 1;
	
	keyActivate = keyboard_check_pressed(vk_enter); //option selected
	if (keyActivate) {
		switch (pauseOptionSelected) {
			case 0: //Continue
			{
				global.gamePaused = false;
				with (oPlayer) {
					input_blocked = false;
				}
				with (oEnemy) {
					image_speed = 1;
					if (hsp == 0)
						hsp = gamePausedHSP;
					else
						gamePausedHSP = hsp;
				}
			} break;
			case 1: //Load Game
			{
				loadGame();
			} break;
			case 2: //Save and Quit
			{
				game_restart();
			} break;
		}
	}
}