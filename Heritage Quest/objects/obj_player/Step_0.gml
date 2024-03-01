// Step Event of obj_player

var moveX = 0;
var moveY = 0;
// Define the interaction distance threshold
AddChatEntry("Sender Name", Aisha_Side, "Hello, this is the message text.");
AddChatEntry("Sender Name", Aisha_Side, "Hello2, this is the message text.");
AddChatEntry("Sender Name", Aisha_Side, "Hello3, this is the message text.");

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
var nearestInteractable = instance_nearest(x, y, Aisha);

 //Calculate distance to the nearest interactable object
var distance = point_distance(x, y, nearestInteractable.x, nearestInteractable.y);
if (distance <= interactionDistance && keyboard_check_pressed(vk_space)) { // Example: Press Spacebar to go to the next message
     obj_chatController.isVisible = true;
}
