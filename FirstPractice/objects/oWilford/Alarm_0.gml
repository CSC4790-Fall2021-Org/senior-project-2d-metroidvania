/// @desc select next attack

if (curr_cycle == attack_cycle) {
	group_attack = true;
	curr_cycle = 0;
	prev_attack = -1;
}
else {
	var next_attack = irandom(1)
	if (prev_attack == next_attack) {
		same_attack_count += 1;	
	}
	else {
		same_attack_count = 1;	
	}
	if (same_attack_count > 2) {
		if (prev_attack = 0) {
			next_attack = 1;		
		}
		else {
			next_attack = 0;	
		}
	}

	if (next_attack == 0) {
		roll_attack = true;
	}
	if (next_attack == 1) {
		shockwave_attack = true;
	}

	prev_attack = next_attack;
	curr_cycle += 1;
}
