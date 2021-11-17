/// @desc Wilford the Immense logic

if (!roll_attack && !jump_attack && !shockwave_attack) {
	sprite_index = sWilford;	
}
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
	vsp = -4;
	hsp = 0;
	roll_attack = false;
}
x += hsp;
	
if	(alarm[0] < 0 && !shockwave_attack && !roll_attack && !jump_attack) {
	alarm[0] = 240;	
}

if (roll_attack) {
	sprite_index = sWilfordRoll;
	hsp = 8 * sign(image_xscale);
}

if (jump_attack) {
	vsp = -6;
	jump_attack = false; 
}

if (shockwave_attack) {		
	instance_create_depth(x,y+(34*2.7)+2,10,oShockwave);
	shockwave_attack = false;
}