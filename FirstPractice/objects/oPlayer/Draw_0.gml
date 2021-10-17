draw_self();

if (flash > 0) {
	flash--;
	shader_set(ShaderWhite);
	draw_self();
	shader_reset();
}

if (grapple) {
	draw_line(oCane.x, oCane.y, gx, gy);
}
