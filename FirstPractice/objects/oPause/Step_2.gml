/// @description Insert description here
// You can write your code in this editor

if (global.gamePaused) {
	
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
			case 0: //Save Game
			{
				saveGame();
				show_message("Game Saved!");
			} break;
			case 1: //Load Game
			{
				loadGame();
			} break;
			case 2: //Save and Quit
			{
				saveGame();
				game_end();
			} break;
			case 3: //Restart Game
			{
				game_restart();
				if (file_exists("savedata.save"))
					file_delete("savedata.save");
			}
		}
	}
}