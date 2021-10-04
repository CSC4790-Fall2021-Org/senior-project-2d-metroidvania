event_inherited();
/*vsp += grv;

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

y += vsp; */

// aerial sprite logic
if (rolling) {
	sprite_index = sEnemyRoll;
	hsp = 3;
}
// sprite logic
else if (dazed) {
	sprite_index = sEnemyDazed;
	hsp = 0;
}
else {
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sEnemy;
	}
	else {
		sprite_index = sEnemyW;
	}
}

timer--;
if (timer <= 0) {
	if (rolling) {
		rolling = false;
		dazed = true;
		timer = 10;
	}
	else if (dazed) {
		dazed = false;
		timer = 30;
	}
	else {
		dazed = true;
		timer = 10;
	}
	
}
