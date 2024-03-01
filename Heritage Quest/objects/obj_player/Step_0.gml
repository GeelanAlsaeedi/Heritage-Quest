// Step Event of obj_player

var moveX = 0;
var moveY = 0;
// Define the interaction distance threshold
AddChatEntry("Aisha", Aisha_Front, "Greetings, traveler! I see you're interested in the mysteries of our ancient cave. \nBut first, let's see how much you already know.");
AddChatEntry("Aisha", Aisha_Front, "Tell me, who found sanctuary in the Thour Cave during a perilous time?");

// Determine desired movement direction
if (keyboard_check(vk_left)) {
    moveX -= 1;
}
if (keyboard_check(vk_right)) {
    moveX += 1;
}
if (keyboard_check(vk_up)) {
    moveY -= 1;
}
if (keyboard_check(vk_down)) {
    moveY += 1;
}

// Normalize diagonal movement to maintain consistent speed
var length = sqrt(moveX * moveX + moveY * moveY);
if (length > 0) {
    moveX = (moveX / length) * moveSpeed;
    moveY = (moveY / length) * moveSpeed;
}

// Check for horizontal collisions
if (!place_meeting(x + moveX, y, obj_invisibleWall)) {
    x += moveX;
} else {
    // Optional: Adjust x position to avoid "sticking" to the wall
    while (!place_meeting(x + sign(moveX), y, obj_invisibleWall) && moveX != 0) {
        x += sign(moveX);
    }
}

// Check for vertical collisions
if (!place_meeting(x, y + moveY, obj_invisibleWall)) {
    y += moveY;
} else {
    // Optional: Adjust y position to avoid "sticking" to the wall
    while (!place_meeting(x, y + sign(moveY), obj_invisibleWall) && moveY != 0) {
        y += sign(moveY);
    }
}

// Step Event of obj_player or any object you want to keep within the room

// Horizontal boundary checking
if (x < 0) {
    x = 0; // Prevent moving beyond the left edge
} else if (x > room_width - sprite_get_width(sprite_index)) {
    x = room_width - sprite_get_width(sprite_index); // Prevent moving beyond the right edge
}

// Vertical boundary checking
if (y < 0) {
    y = 0; // Prevent moving beyond the top edge
} else if (y > room_height - sprite_get_height(sprite_index)) {
    y = room_height - sprite_get_height(sprite_index); // Prevent moving beyond the bottom edge
}

var interactionDistance = 200; // Pixels, adjust as needed
var distance;
if(room_get_name(room)=="outerArea"){
	var nearestAisha = instance_nearest(x, y, Aisha);
	distance = point_distance(x, y, nearestAisha.x, nearestAisha.y);

}

//var nearestAbu = instance_nearest(x, y, AbuYasser);
//var distanceAbu = point_distance(x, y, nearestAbu.x, nearestAbu.y);

//var nearestAmal = instance_nearest(x, y, Amal);
//var distanceAmal = point_distance(x, y, nearestAmal.x, nearestAmal.y);

if (distance <= interactionDistance && keyboard_check_pressed(vk_space)) { // Example: Press Spacebar to go to the next message
     obj_chatController.isVisible = true;
}
if (distance <= interactionDistance && keyboard_check_pressed(vk_escape)) {
	     obj_chatController.isVisible = false;
}

var entry = ds_list_find_value(obj_chatController.chatEntries, obj_chatController.currentMessageIndex);
if (entry != undefined && ds_map_exists(entry, "choices")) {
    var choiceList = ds_map_find_value(entry, "choices");
    // If choices are expected to be an array
    if (choiceList != undefined) {
        // Directly iterate over the array or handle as needed
        for (var i = 0; i < array_length_1d(choiceList); i++) {
            
        }
    }
}

