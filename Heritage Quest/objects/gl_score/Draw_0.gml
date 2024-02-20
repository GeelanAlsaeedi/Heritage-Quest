/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(menu_font);
draw_set_color(c_white);

//centeralize text
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_text(250,170,points_coins);
draw_text(680,170,points_gems);

//gl_score.points_coins+=00;
//gl_score.points_gems+=00;