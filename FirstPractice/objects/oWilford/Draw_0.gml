/// @desc damaged shader
draw_self();

if (hurt > 0) {
	hurt--;
	shader_set(ShaderRed);
	draw_self();
	shader_reset();
}