
if (isVisible && currentMessageIndex >= 0) {    
    // Draw chat messages
	draw_set_font(menu_font);
    draw_set_color(c_white);
    var entry = ds_list_find_value(chatEntries, currentMessageIndex);
    var name = ds_map_find_value(entry, "name");
    var image = ds_map_find_value(entry, "image");
    var text = ds_map_find_value(entry, "text");
		
        draw_sprite_ext(image,0,1984,800,2,2,0,c_white,1);
		draw_sprite_ext(chat_holder,0,0,1440,1.3,1.3,0,c_white,1);
		draw_text(130 , 1550, name);
		draw_set_color(c_black);
		draw_set_font(chat_font);
		draw_text(150, 1800, text);
}
