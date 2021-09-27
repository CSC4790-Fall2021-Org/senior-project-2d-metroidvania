/// @desc player collision with hazard

oPlayer.flash = 20;
oPlayer.vsp = -4;

// use for enemy knockback
var count = 55;
while (count > 0) { 
	oPlayer.x--;
	count--;
}