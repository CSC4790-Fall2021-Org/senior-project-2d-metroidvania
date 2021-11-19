/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_escape)) {
	global.gamePaused = !global.gamePaused;
	playerX = oPlayer.x;
	playerY = oPlayer.y;
}

if (global.gamePaused) {
	with (oPlayer) {
		/*wasGrapple = grapple;
		grapple = false;
		input_blocked = true;
		hsp = 0;
		vsp = 0;
		gamePausedImageSpeed = image_speed;
		image_speed = 0;*/
		x = playerX;
		y = playerY;
	}
	with (oEnemy) {
		hsp = 0;
		gamePausedImageSpeed = image_speed;
		image_speed = 0;
	}
}

else {
	with (oPlayer) {
		input_blocked = false;
		image_speed = gamePausedImageSpeed;
		if (wasGrapple)
			grapple = true;
	}
	with (oEnemy) {
		hsp = gamePausedHSP;
		image_speed = gamePausedImageSpeed;
	}	
}