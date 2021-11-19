/// @description Insert description here
// You can write your code in this editor
global.gamePaused = false;

width = room_width;
height = room_height;

with (oEnemy) {
	gamePausedHSP = walksp;
	gamePausedImageSpeed = image_speed;
}

with (oPlayer) {
	gamePausedImageSpeed = image_speed;
	wasGrapple = false;
	playerX = x;
	playerY = y;
}

pause_options = ["Continue", "Save & Quit", "Quit"];