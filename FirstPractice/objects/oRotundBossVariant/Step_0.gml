/// @desc rotund gentleman logic
if(enemyhealth <= 0) {
	instance_destroy();
}

// vertical collision
vsp += grv;
if (place_meeting(x, y + vsp, oParentWall)) {
	while (!place_meeting(x, y + sign(vsp), oParentWall)) {
		y += sign(vsp);
	}
	vsp = 0;
	if (!aggressive) {
		telegraph = true;
	}
}

y += vsp;

// player movement: collision
if (place_meeting(x + hsp, y, oParentWall) || place_meeting(x + hsp, y, oHazard)) {
	is_facing = -is_facing;
	while (!place_meeting(x + sign(hsp), y, oParentWall) and !place_meeting(x + sign(hsp), y, oHazard)) {
		x += sign(hsp);
	}
	sprite_index = sEnemy;
	aggressive = false;
	hsp = 0;
	vsp = 2;
}

x += hsp;

if (aggressive) {
	hsp = 4 * sign(x-oPlayer.x);
	sprite_index = sEnemyRoll;
	
	if ((place_meeting(x, y, oParentWall)  && !place_meeting(x, y, oWallBreakable))) {
		if (!aggressive) {
			hsp = 0;
			vsp = -2;
		}
		
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

// makes character face direction of movement
if (hsp != 0) image_xscale = sign(hsp);
