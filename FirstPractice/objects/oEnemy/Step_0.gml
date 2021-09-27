/// @description Insert description here
// You can write your code in this editor
vsp += grv;

// player movement: collision
if (place_meeting(x + hsp, y, oWall) or place_meeting(x + hsp, y, oInvisWall)) {
	while (!place_meeting(x + sign(hsp), y, oWall) and !place_meeting(x + sign(hsp), y, oInvisWall)) {
		x += sign(hsp);
	}
	hsp = -hsp;
}

// player movement:L/R
x += hsp;

// vertical collision
if (place_meeting(x, y + vsp, oWall)) {
	while (!place_meeting(x, y + sign(vsp), oWall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// aerial sprite logic
if (!place_meeting(x, y+1, oWall)) {
	sprite_index = sEnemyW;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
// sprite logic
else {
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sEnemy;
	}
	else {
		sprite_index = sEnemyW;
	}
}

// makes character face direction of movement
if (hsp != 0) image_xscale = sign(hsp);