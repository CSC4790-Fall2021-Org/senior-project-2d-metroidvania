/// @desc between attacks timer

// chooses random int 0 or 1
var next_attack = irandom(1)

if (next_attack == 0) {
	roll_attack = true;
}
if (next_attack == 1) {
	shockwave_attack = true;
}
