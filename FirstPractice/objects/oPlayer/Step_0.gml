/// @desc main player logic
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);

if (input_blocked == false) {	
	// get player input
	var move = key_right - key_left;

	hsp = move * walksp;
	// player movement: collision
	if (place_meeting(x + hsp, y, oParentWall) && dash == 0 && slide == 0) {
		while (!place_meeting(x + sign(hsp), y, oParentWall)) {
			x += sign(hsp);
		}
		hsp = 0;
	}
	else if(place_meeting(x + hsp, y, oWallBreakable) && dash > 0) {
		instance_destroy(instance_nearest(x,y,oWallBreakable))
	}
	else if(place_meeting(x + hsp, y, oWallSlideable) && slide > 0) {
		move = key_right - key_left;
		hsp = move * walksp;
	}
	else if(place_meeting(x + hsp, y, oParentWall)) {
		while (!place_meeting(x + sign(hsp), y, oParentWall)) {
			x += sign(hsp);
		}
		hsp = 0;
	}
	// player movement: jump
	if (place_meeting(x, y+1, oParentWall)) && (key_jump) {
		vsp = -9;
	}
	//Grappling functionality
	if (keyboard_check_pressed(vk_enter) && distance_to_object(oGrapple) < 200) {
		grapple = true;
		inst = instance_nearest(x, y, oGrapple);
		gx = inst.x;
		gy = inst.y;
	}
	if (keyboard_check_released(vk_enter)) {
		grapple = false;
	}
	
	if (grapple) {
		x += (gx - x) * 0.05;
		y += (gy - y) * 0.05;
		vsp = 0;
		hsp = 0;
	}
	
	if (dash > 0) {
		if (!place_meeting(x + 10*image_xscale, y, oParentWall)) {
			x += 4*image_xscale;
		}
	}
	
	if (slide > 0) {
		if (!place_meeting(x + 10*image_xscale, y, oParentWall)) {
			x += 4*image_xscale;
		}
	}
	
	x += hsp;
}
	
vsp += grv;

// vertical collision
if (place_meeting(x, y + vsp, oParentWall)) {
	while (!place_meeting(x, y + sign(vsp), oParentWall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// aerial sprite logic
if (!place_meeting(x, y+1, oParentWall) && dash == 0) {
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
// sprite logic
else if(dash == 0 && slide == 0) {
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
	//instance_destroy(oPlayer);
	//room_restart();
	if (file_exists("savedata.save")) {
		loadGame();
		global.playerhealth = 10;
	}
	else
		game_restart();
}

// makes character face direction of movement
if (hsp != 0) image_xscale = sign(hsp);