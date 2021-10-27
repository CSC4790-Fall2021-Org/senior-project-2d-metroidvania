/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(oPlayer) <= 200)
	player_near = true;
else
	player_near = false;
	
if (player_near)
	sprite_index = sGrappleGreen;
else
	sprite_index = sGrapple;