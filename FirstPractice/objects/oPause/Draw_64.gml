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
	
	draw_text(width * 0.5, height * 0.5, "Game Paused");
	for (var i = 0; i < array_length(pauseOptions); i++) {
		var _print = "";
		if (i == pauseOptionSelected) {
			_print += "> " + pauseOptions[i];
		}
		else {
			_print += pauseOptions[i];
			draw_set_alpha(0.7);
		}
		draw_text(width* 0.5, height * 0.5 + 18 + 12*i, _print);
		draw_set_alpha(1.0);
	}
}