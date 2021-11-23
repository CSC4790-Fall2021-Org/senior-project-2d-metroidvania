/// @desc attacks
if	(alarm[0] < 0 && !shockwave_attack && !roll_attack && !group_attack) {
	alarm[0] = 200;	
} 

if (roll_attack) {
	sprite_index = sWilfordRoll;
	hsp = 8 * sign(image_xscale);
}

if (group_attack) {
	sprite_index = sWilfordWave;
	if (alarm[1] <=0) {
		alarm[1] = 20;
	}
}

if (shockwave_attack) {		
	sprite_index = sWilfordfallback;
	vsp = -2;
	has_jumped = true;
	hsp = -1 * image_xscale;
	x += hsp;
	shockwave_attack = false;
}
