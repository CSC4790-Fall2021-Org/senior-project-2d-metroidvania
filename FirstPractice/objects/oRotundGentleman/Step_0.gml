/// @description Insert description here
// You can write your code in this editor
rolling = false;

vsp += grv;

if(global.enemyhealth <= 0) {
	instance_destroy();
}
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

if (aggressive) {
	hsp = sign(hsp) * 4;
	rolling = true;
}
else {
	rolling = false;
}

// rolling sprite logic
if (rolling) {
	sprite_index = sEnemyRoll;
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