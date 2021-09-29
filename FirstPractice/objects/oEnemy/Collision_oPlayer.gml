/// @desc enemy hits player

oPlayer.flash = 20;

// if player is stationary & gets hit
if (oPlayer.hsp == 0) {
	oPlayer.vsp = -4;
	oPlayer.hsp += oEnemy.hsp * 20;	
}

// if player runs into enemy
else {
	oPlayer.vsp = -4;
	oPlayer.x += -oPlayer.hsp * 10;
}

if (place_meeting(oPlayer.x + oPlayer.hsp, oPlayer.y, oWall)) {
	while (!place_meeting(oPlayer.x + sign(oPlayer.hsp), oPlayer.y, oWall)) {
		oPlayer.x += sign(oPlayer.hsp);
	}
	oPlayer.hsp = 0;
}

oPlayer.x += hsp;
