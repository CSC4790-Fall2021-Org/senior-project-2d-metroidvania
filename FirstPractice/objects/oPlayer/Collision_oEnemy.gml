/// @desc player collide with enemy
if (invincible == false) {
	global.playerhealth -= 2;
	invincible = true;
	input_blocked = true;
	flash = 80;
	alarm[0] = 80;
	alarm[1] = 50;
	
	vsp = -4;
	
	if (self.hsp == 0) {
		self.hsp += other.hsp * 20;
	}
	else {
		self.hsp += -sign(self.hsp) * 50;	
	}
	
	if (!place_meeting(self.x + self.hsp, self.y, oWall)) {
		self.x += self.hsp;
		hsp =0;
	}
}
else if (dash > 0) {
	global.enemyhealth -= 4;
}