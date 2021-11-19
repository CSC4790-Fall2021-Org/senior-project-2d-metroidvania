/// @description Insert description here
// You can write your code in this editor
if (global.gamePaused) {
	draw_set_color(c_gray);
	draw_set_alpha(0.75);
	draw_rectangle(0, 0, width, height, false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(-1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
}