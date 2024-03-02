/// @description Insert description here
// You can write your code in this editor
var confirm = keyboard_check_pressed(confirm_key);

text_progress = min(text_progress + text_speed, text_length);
if (text_progress == text_length){
	if (confirm){
		next();
	}
}
else if (confirm){
	text_progress=text_length;
}

