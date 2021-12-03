/// @desc Wilford the Immense logic
// vertical collision
if (boss_hp <= 0) {
	instance_create_depth(x,y,0,oDashUpgrade);
	instance_create_depth(x+50,y+50,0,oKey);
	instance_destroy(self.id);	
	instance_create_depth(0,1088,0,oWallBreakable);
	instance_destroy(inst_6616C360);
}

vsp += grv;
if (place_meeting(x, y + vsp, oWall)) {
	while (!place_meeting(x, y + sign(vsp), oWall)) {
		y += sign(vsp);
	}
	if (has_jumped) {
		instance_create_depth(x,y+(34*2.7)+2,10,oShockwave);
		has_jumped = false;
			
	}

	vsp = 0;
}

y += vsp;

if (place_meeting(x + hsp, y, oWall) || place_meeting(x + hsp, y, oHazard)) {
	while (!place_meeting(x + sign(hsp), y, oWall) and !place_meeting(x + sign(hsp), y, oHazard)) {
		x += sign(hsp);
	}	
	hsp = -hsp;
	image_xscale = -image_xscale;
	vsp = -4;
	roll_attack = false;
	hsp = 2 * sign(image_xscale);
	sprite_index = sWilfordw;
	alarm[2] = 100;
}
x += hsp;
