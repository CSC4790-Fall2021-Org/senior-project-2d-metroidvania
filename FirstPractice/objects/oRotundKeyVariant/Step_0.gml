/// @desc rotund gentleman logic
if(enemyhealth <= 0) {
	instance_create_depth(x,y,10,oKey);	
	instance_destroy();
}


sprite_index = sEnemyW;

// vertical collision
vsp += grv;
if (place_meeting(x, y + vsp, oParentWall)) {
	while (!place_meeting(x, y + sign(vsp), oParentWall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// player movement: collision
if (place_meeting(x + hsp, y, oParentWall) || place_meeting(x + hsp, y, oHazard)) {
	is_facing = -is_facing;
	while (!place_meeting(x + sign(hsp), y, oParentWall) and !place_meeting(x + sign(hsp), y, oHazard)) {
		x += sign(hsp);
	}	
	hsp = -hsp;
}

x += hsp;

if (aggressive) {
	hsp = 4 * is_facing;
	sprite_index = sEnemyRoll;
	
	if ((place_meeting(x, y, oParentWall) || place_meeting(x, y, oHazard)) && !place_meeting(x, y, oWallBreakable)) {
		aggressive = false;
		dazed = true;
		hsp = 0;
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
	sprite_index = sEnemy; // TODO make a dazed sprite	
}

// makes character face direction of movement
if (hsp != 0) image_xscale = sign(hsp);
