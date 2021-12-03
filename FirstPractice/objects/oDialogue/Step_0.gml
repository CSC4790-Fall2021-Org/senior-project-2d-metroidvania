/// @description Insert description here
// You can write your code in this editor
if (abs(x - oPlayer.x) <= 50) {
	if (myTextBox == noone) {
		myTextBox = instance_create_layer(x - 150, y, layer, oTextBox);
		myTextBox.text = myText;
	}
}

else {
	if (myTextBox != noone) {
		instance_destroy(myTextBox);
		myTextBox = noone;
	}
}