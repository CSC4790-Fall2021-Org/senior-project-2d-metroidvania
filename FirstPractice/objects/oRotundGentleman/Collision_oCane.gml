/// @desc unique rotund gentleman reaction to cane poke attack
if (telegraph) {
	is_facing = -is_facing;
	aggressive = true;	
}
else {
	if (keyboard_check_pressed(vk_space) && !rolling) {
		global.enemyhealth -= 2;
		hurt = 50;
		vsp = -4;	
	}
}