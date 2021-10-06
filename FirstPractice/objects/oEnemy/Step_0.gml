event_inherited();

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
		timer = 1000;
	}
	else if (dazed) {
		dazed = false;
		timer = 1000;
	}
	else {
		dazed = true;
		timer = 1000;
	}
	
}
