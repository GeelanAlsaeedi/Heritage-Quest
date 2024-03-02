
// Inside the Draw Event of obj_chatController
if (isVisible && currentMessageIndex >= 0 && currentMessageIndex < ds_list_size(chatEntries)) {
    var entry = ds_list_find_value(chatEntries, currentMessageIndex);
    var name = ds_map_find_value(entry, "name");
    var image = ds_map_find_value(entry, "image");
    var text = ds_map_find_value(entry, "text");
	
	if(name=="Abu Yasser"){
		draw_sprite_ext(image,0,1780,800,2,2,0,c_white,1);
		draw_sprite_ext(chat_holder,0,0,1440,1.3,1.3,0,c_white,1);
		draw_text(50 , 1535, name);
	} else {
    draw_sprite_ext(image,0,1984,800,2,2,0,c_white,1);
	}
	if (name == "Laila"){
	draw_sprite_ext(chat_holder_player,0,0,1440,1.3,1.3,0,c_white,1);
	draw_text(130 , 1535, name);
	} else if (name!="Abu Yasser"){
	draw_sprite_ext(chat_holder,0,0,1440,1.3,1.3,0,c_white,1);
	draw_text(130 , 1535, name);
	}
	draw_set_color(c_black);
	draw_set_font(chat_font);
	draw_text(150, 1750, text);

    // Check if the current message has choices
    if (ds_map_exists(entry, "choices")) {
        var choiceList = ds_map_find_value(entry, "choices");
        // Ensure choiceList is an array before iterating
        if (choiceList != undefined && is_array(choiceList)) {
			var ypos = 1700;
            for (var i = 0; i < array_length_1d(choiceList); i++) {
                var choice = choiceList[i];
				var choiceText = choice[0]; // The text of the choice
				var nextIndex = choice[1]; // The index or identifier for the next action
				draw_text(600, ypos, choice[0]);
				ypos = ypos + 100;
            }
        }
    }
}
