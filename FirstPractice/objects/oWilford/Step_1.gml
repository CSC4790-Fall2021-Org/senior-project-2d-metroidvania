/// @desc attacks
if	(alarm[0] < 0 && !shockwave_attack && !roll_attack && !jump_attack) {
	alarm[0] = 200;	
} 

if (roll_attack) {
	sprite_index = sWilfordRoll;
	hsp = 8 * sign(image_xscale);
}

if (jump_attack) {
	vsp = -6;
	jump_attack = false; 
	instance_create_depth(oPlayer.x,800,0,oRotundBossVariant);
}

if (shockwave_attack) {		
	sprite_index = sWilfordfallback;
	vsp = -2;
	has_jumped = true;
	hsp = -1 * image_xscale;
	x += hsp;
	shockwave_attack = false;
}
