/// @description Insert description here
// You can write your code in this editor
global.gamePaused = false;

width = room_width;
height = room_height;

with (oEnemy)
	gamePausedHSP = 0;
	
pauseOptions = ["Continue", "Load Game", "Save and Quit"];
pauseOptionSelected = 0;