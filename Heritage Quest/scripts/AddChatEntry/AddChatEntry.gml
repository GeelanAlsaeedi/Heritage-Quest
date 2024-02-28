// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddChatEntry(name,image,text){
/// @description Adds a new chat entry
/// @param name The name of the sender
/// @param image The sprite associated with the sender
/// @param text The chat message text

//var name = argument[0];
//var image = argument[1];
//var text = argument[2];

var entry = ds_map_create();
ds_map_add(entry, "name", name);
ds_map_add(entry, "image", image);
ds_map_add(entry, "text", text);

ds_list_add(obj_chatController.chatEntries, entry);

}