/// @desc telegraph
if (roll_attack) {
	sprite_index = sWilfordRoll;
	hsp = 8 * sign(image_xscale);
}

if (jump_attack) {
	vsp = -6;
	jump_attack = false; 
}

if (shockwave_attack) {		
	instance_create_depth(x,y,10,oShockwave);
	
}

