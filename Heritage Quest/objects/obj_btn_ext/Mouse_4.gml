/// @description Insert description here
// You can write your code in this editor

if (!ds_stack_empty(global.roomStack)) {
    var previousRoom = ds_stack_pop(global.roomStack);
    room_goto(previousRoom);
} else {
    // Handle the case where there's no previous room (e.g., this is the first room)
}
