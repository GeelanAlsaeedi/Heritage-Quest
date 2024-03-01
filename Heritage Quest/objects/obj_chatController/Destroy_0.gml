// Destroy Event of obj_chatController

for (var i = 0; i < ds_list_size(chatEntries); i++) {
    var entry = ds_list_find_value(chatEntries, i);
    ds_map_destroy(entry);
}
ds_list_destroy(chatEntries);
