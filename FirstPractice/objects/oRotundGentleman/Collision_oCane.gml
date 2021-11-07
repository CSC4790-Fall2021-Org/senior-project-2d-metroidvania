/// @desc unique rotund gentleman reaction to cane poke attack
if (keyboard_check_pressed(vk_space) && telegraph) {
	telegraph = false;
	is_facing = -is_facing;
	unbalanced = true;
	aggressive = true;
}
else {
	if (keyboard_check_pressed(vk_space) && !aggressive) {
		global.enemyhealth -= 2;
		hurt = 50;
		vsp = -4;	
	}
}