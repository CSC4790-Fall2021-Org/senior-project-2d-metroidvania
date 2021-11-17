/// @description Player gets a health upgrade
instance_destroy(instance_nearest(x, y, oHealthUpgrade));
global.playerhealth += 2;
global.maxhealth += 2;
