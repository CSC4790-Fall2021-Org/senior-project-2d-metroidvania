/// @desc player collide with static hazard
global.playerhealth -=2;	
invincible = true;
input_blocked = true;
flash = 80;
alarm[0] = 80;
alarm[1] = 50;

self.x = self.last_safe_x;
self.y = self.last_safe_y;
self.hsp = 0;