/// @desc attacks
if (roll_attack) {
	sprite_index = sWilfordRoll;
	hsp = 8 * sign(image_xscale);
}

if (jump_attack) {
	vsp = -6;
	jump_attack = false; 
}

if (shockwave_attack) {		
	sprite_index = sWilfordfallback;
	vsp = -2;
	has_jumped = true;
	hsp = -1 * image_xscale;
	x += hsp;
	shockwave_attack = false;
}