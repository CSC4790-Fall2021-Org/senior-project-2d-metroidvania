/// @desc Wilford the Immense logic
jump_attack = true;
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
	image_xscale = -image_xscale;
	vsp = -8;
	for (i = 0;i<60;i++) {
		x += sign(hsp);
	}
	hsp = 0;
	roll_attack = false;
}
x += hsp;

// boss randomly chooses between roll and shockwave for 2-3 attacks
	// every third or fourth attack is the jump attack
	
if	(alarm[1] < 0) {
	alarm[1] = 120;	
}