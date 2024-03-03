/// @description Insert description here
// You can write your code in this editor
if(showing_dialog == true) {
	
if(current_dialog.named=="Abu Yasser"){
	draw_set_color(c_white);
	draw_set_font(menu_font);
	draw_sprite_ext(current_dialog.sprite,0,1780,800,2,2,0,c_white,1);
	draw_sprite_ext(chat_holder,0,0,1440,1.3,1.3,0,c_white,1);
	draw_text(50 , 1535, current_dialog.named);
	draw_set_color(c_black);
	draw_set_font(chat_font);
	draw_text(150, 1750, current_dialog.message);
} 
if (current_dialog.named == "Laila"){
	draw_set_color(c_white);
	draw_set_font(menu_font);
	draw_sprite_ext(current_dialog.sprite,0,1984,800,2,2,0,c_white,1);
	draw_sprite_ext(chat_holder_player,0,0,1440,1.3,1.3,0,c_white,1);
	draw_text(130 , 1535, current_dialog.named);
	draw_set_color(c_black);
	draw_set_font(chat_font);
	draw_text(150, 1750, current_dialog.message);
} 

}