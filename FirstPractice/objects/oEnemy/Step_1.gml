/// @desc reused code for enemies

// update is_facing
if (hsp != 0) {
	is_facing = sign(hsp);
}
// update player_near
if (oPlayer.x - x < 200 && oPlayer.x - x > -200 && oPlayer.y >= y - 10) {
	player_near = true;
}
else {
	player_near = false;	
}
// update facing_player
if (sign(oPlayer.x-x) == sign(hsp)) {
	facing_player = true;
}
else {
	facing_player = false;	
}
// telegraph and aggressive
if (facing_player && player_near) {
	if (!aggressive) {
		hsp = 0;
		alarm[0] = 20;
	}
	else {
		alarm[1] = 120;
	}
}
