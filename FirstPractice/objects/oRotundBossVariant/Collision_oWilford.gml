if (aggressive) {
	if (!other.roll_attack && !other.group_attack && !other.shockwave_attack) {
		other.boss_hp -= 5;	
		other.hurt = 10;
	}
}

instance_destroy(self.id);
