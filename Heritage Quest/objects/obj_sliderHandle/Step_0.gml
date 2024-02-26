/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, self) || dragging) {
        // Calculate the new x position within the background sprite's bounds
        var minX = obj_sliderBackground.x ;
        var maxX = obj_sliderBackground.x + sprite_get_width(spr_sliderBackground) - (sprite_get_width(spr_sliderHandle) / 2);
        var newX = clamp(mouse_x, minX, maxX);
        
        x = newX;
        dragging = true;
        
        // Update the global volume based on handle's position
        var normalizedPosition = (x - minX) / (maxX - minX);
        global.volume = normalizedPosition;
        audio_master_gain(global.volume);
    }
} else {
    dragging = false;
}

