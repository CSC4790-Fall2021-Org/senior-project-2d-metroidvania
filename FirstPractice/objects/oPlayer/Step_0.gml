/// @desc main player logic
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);

if (input_blocked == false) {	
	// get player input
	var move = key_right - key_left;

	hsp = move * walksp;
	// player movement: collision
	if (place_meeting(x + hsp, y, oWall)) {
		while (!place_meeting(x + sign(hsp), y, oWall)) {
			x += sign(hsp);
		}
		hsp = 0;
	}

	// player movement:L/R
	x += hsp;
	
	// player movement: jump
	if (place_meeting(x, y+1, oWall)) && (key_jump) {
		vsp = -9;
	}
	//Grappling functionality
	if (keyboard_check_pressed(vk_enter)) && distance_to_object(oGrapple) < 200 {
		self.x = instance_nearest(self.x,self.y,oGrapple).x;
		self.y = instance_nearest(self.x,self.y,oGrapple).y;
		x+=hsp;
		vsp = -10;
	}
}
	
vsp += grv;

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
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
// sprite logic
else {
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sPlayer;
	}
	else {
		sprite_index = sPlayerR;
	}
}

//Player Health Logic
if(global.playerhealth == 0) {
	instance_destroy(oPlayer);
}

// makes character face direction of movement
if (hsp != 0) image_xscale = sign(hsp);
