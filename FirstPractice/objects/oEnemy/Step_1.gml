/// @desc reused code for enemies

if (oPlayer.x - x < 200 && oPlayer.x - x > -200 && oPlayer.y >= y - 10) {
	player_near = true;
}
else {
	player_near = false;	
}

if (sign(oPlayer.x-x) == sign(hsp)) {
	facing_player = true;
}
else {
	facing_player = false;	
}

if (facing_player && player_near) {
	aggressive = true;
}
else {
	aggressive = false;
}