/// @desc rotund gentleman logic
if(global.enemyhealth <= 0) {
	instance_destroy();
}

sprite_index = sEnemyW;

// vertical collision
vsp += grv;
if (place_meeting(x, y + vsp, oParentWall) || place_meeting(x, y + vsp, oInvisWall)) {
	while (!place_meeting(x, y + sign(vsp), oParentWall) && !place_meeting(x, y + sign(vsp), oInvisWall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

