/// @description Insert description here
// You can write your code in this editor

draw_sprite(sTextBox, 0, x, y);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(x + 15, y + 15, text, 15, boxWidth);