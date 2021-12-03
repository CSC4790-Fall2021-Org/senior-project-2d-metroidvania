/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x - oPlayer.hsp, y, oPlayer) && !global.HasKey) {
	oLockedText.visible = 1;	
}
else {
	if(place_meeting(x - oPlayer.hsp, y, oPlayer) && global.HasKey) {
		oLockedText.visible = 0;
		instance_destroy();
		global.HasKey = false;
	}
}