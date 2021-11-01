/// @description Insert description here
key_space = keyboard_check_pressed(vk_space);
if (global.playerhealth == 0) {
	instance_destroy(oCane);
}

if (sign(oPlayer.hsp) != 0)
	facing = sign(oPlayer.hsp);

if (key_space) {
	
	speed = 20 * facing;
}
else {
	if (speed > 0) {
		speed--;
	}
	else if (speed < 0) {
		speed++;
	}
	else speed = 0;
}
