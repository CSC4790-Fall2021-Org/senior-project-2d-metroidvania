/// @description Insert description here
key_space = keyboard_check_pressed(vk_space);
if (global.playerhealth == 0) {
	instance_destroy(oCane);
}
if (key_space) {
	x += 10;
}
else {
	x = oPlayer.x;
}