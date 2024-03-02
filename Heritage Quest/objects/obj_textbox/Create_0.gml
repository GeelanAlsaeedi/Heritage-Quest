/// @description Insert description here
// You can write your code in this editor

confirm_key =  vk_space;

padding = 8;
width = display_get_gui_width();
height = sprite_height; 

x = 0;
y = display_get_gui_height()- height; 

text_font = chat_font;
text_color = c_white; 
text_speed = 6;
text_y = padding;
text_x = padding;
text_width = width - padding * 2;

actions = [];
current_action = -1;

text = "";
text_progress = 0;
text_length = 0;

//start convo 
set_topic = function(topic){
	actions = golbal.topics[$ topic];
	current_action = -1;
	
	next();
}
next = function(){
current_action++; 
if (current_action >= array_length(actions)){
	instance_destroy();
}else {
	actions[current_action].act(id);
}
}

setText = function(newText){
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
}