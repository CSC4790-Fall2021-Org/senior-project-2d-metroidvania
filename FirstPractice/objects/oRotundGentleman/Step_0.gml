/// @desc rotund gentleman logic
if(global.enemyhealth <= 0) {
	instance_destroy();
}


sprite_index = sEnemyW;

// vertical collision
vsp += grv;
if (place_meeting(x, y + vsp, oWall)) {
	while (!place_meeting(x, y + sign(vsp), oWall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// player movement: collision
if (place_meeting(x + hsp, y, oWall) || place_meeting(x + hsp, y, oHazard)) {
	is_facing = -is_facing;
	while (!place_meeting(x + sign(hsp), y, oWall) and !place_meeting(x + sign(hsp), y, oHazard)) {
		x += sign(hsp);
	}	
	hsp = -hsp;
}

x += hsp;

if (aggressive) {
	hsp = 4 * is_facing;
	sprite_index = sEnemyRoll;
	
	if (place_meeting(x, y, oWall) || place_meeting(x, y, oHazard)) {
		aggressive = false;
		dazed = true;
		hsp = 0;
		x -= 0.1*is_facing;
		vsp = -2;
		
		if (unbalanced) {
			alarm[2] = 150;
		}
		else {
			alarm[2] = 100;
		}
	}
}

if (telegraph) {
	sprite_index = sEnemyTelegraph;	
}

if (dazed) {
	sprite_index = sEnemy;	
}

// makes character face direction of movement
if (hsp != 0) image_xscale = sign(hsp);
