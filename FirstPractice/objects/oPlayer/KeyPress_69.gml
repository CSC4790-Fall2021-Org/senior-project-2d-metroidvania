if (DashCool == false && place_meeting(x, y+1, oWall)) {
	dash = 30;
	invincible = true;
	DashCool = true;
	alarm[0] = 30;
	alarm[2] = 180;
}
