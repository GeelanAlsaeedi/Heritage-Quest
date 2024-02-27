/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();
room_goto(MapPreview);
if(room_get_name(room)=="MapPreview"){
	room_goto(outerArea);
}