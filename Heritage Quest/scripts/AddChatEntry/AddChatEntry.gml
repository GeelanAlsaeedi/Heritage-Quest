// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddChatEntry(name, image, text, choices = undefined) {
	
    var entry = ds_map_create();
    ds_map_add(entry, "name", name);
    ds_map_add(entry, "image", image);
    ds_map_add(entry, "text", text);
    if (choices != undefined) {
        ds_map_add(entry, "choices", choices);
    }
    ds_list_add(obj_chatController.chatEntries, entry);
}
