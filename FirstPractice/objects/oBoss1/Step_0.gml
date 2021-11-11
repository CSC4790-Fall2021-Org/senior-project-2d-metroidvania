
// vertical collision
vsp += grv;
if (place_meeting(x, y + vsp, oWall)) {
	while (!place_meeting(x, y + sign(vsp), oWall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

if (place_meeting(x + hsp, y, oWall) || place_meeting(x + hsp, y, oHazard)) {
	while (!place_meeting(x + sign(hsp), y, oWall) and !place_meeting(x + sign(hsp), y, oHazard)) {
		x += sign(hsp);
	}	
	hsp = -hsp;
	image_xscale = sign(hsp) * image_yscale
	
}

	//x += hsp;

// have a laughing animation play at the start of the fight

// have a timer for a random interval between x and y between attacks
	// boss randomly chooses between roll and shockwave for 2-3 attacks
	// every third or fourth attack is the jump attack
	
// if roll_attack
	// boss rolls across the arena at the player

// if jump_attack
	// boss jumps
	// when he lands there is a screenshake and if the player is on the gound they become stunned
	
// if shockwave_attack
	// boss