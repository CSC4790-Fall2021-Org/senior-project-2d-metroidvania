if(oPlayer.money <= 15) {
	myText = "Well done! You have collected a total of " + string(oPlayer.money) + " gold bars! Quite the find! Feel free to press escape and restart the game.";
}
if(oPlayer.money > 15 && oPlayer.money <= 25) {
	myText = "Well done! You have collected a total of " + string(oPlayer.money) + " gold bars! Incredible! Looks like you'll be living in luxury! Feel free to press escape and restart the game.";
}
if(oPlayer.money > 25) {
	myText = "Well done! You have collected a total of " + string(oPlayer.money) + " gold bars! You are now the richest stickman alive!!! Feel free to press escape and restart the game.";
}
if (!oPlayer.dashUnlocked) {
	myText += "It seems you were able to sneak right by a boss fight, and a chance to get even more gold...";	
}