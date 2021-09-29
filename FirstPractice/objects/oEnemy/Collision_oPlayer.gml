/// @desc enemy hits player

oPlayer.flash = 20;

// if player is stationary & gets hit
if (oPlayer.hsp == 0) {
	oPlayer.vsp = -4;
	oPlayer.x += oEnemy.hsp * 20;	
}

// if player runs into enemy
else {
	oPlayer.vsp = -4;
	oPlayer.x += -oPlayer.hsp * 10;
}