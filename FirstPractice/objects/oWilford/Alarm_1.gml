///@desc spawn enemy and wine glasses
	instance_create_depth(oPlayer.x,800,0,oRotundBossVariant);
	instance_create_depth(x + (sign(image_xscale) * 300 * random_range(0,1)),800,0,oWineGlass);
	instance_create_depth(x + (sign(image_xscale) * 300 * random_range(0,1)),800,0,oWineGlass);
	group_attack = false; 