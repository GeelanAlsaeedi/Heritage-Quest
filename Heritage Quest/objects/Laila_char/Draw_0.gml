/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();
if (selected_char==1){
	draw_sprite_ext(Laila_selected,0,416,1984,1.3,1.3,0,c_white,1);
	draw_set_font(menu_font);
	draw_set_color(c_black);

	//centeralize text
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);

	draw_text(x,y,city_name);

	//reset to deafult value
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
}

else {
	draw_self();
	draw_set_font(menu_font);
	draw_set_color(c_black);

	//centeralize text
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);

	draw_text(x,y,city_name);

	//reset to deafult value
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
}
