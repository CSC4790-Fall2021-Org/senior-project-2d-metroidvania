draw_self();

if (flash > 0) {
	flash--;
	shader_set(ShaderWhite);
	draw_self();
	shader_reset();
}

if (dash > 0) {
	dash--;
	sprite_index = sPlayerDash;
	//shader_set(ShaderRed);
	draw_self();
	//shader_reset();
}

if (slide > 0) {
	slide--;
	sprite_index = sPlayerSlide;
	draw_self();
}

if (grapple) {
	draw_line(oCane.x, oCane.y, gx, gy);
}
