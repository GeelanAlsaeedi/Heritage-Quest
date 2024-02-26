// Step Event of obj_player

var moveX = 0;
var moveY = 0;

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
