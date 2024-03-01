// Step Event of obj_chatController

if ( keyboard_check_pressed(vk_space)) {
    // Only advance if there are messages
    if (ds_list_size(chatEntries) > 0) {
        currentMessageIndex++;
	}
        // If we've gone past the last message, loop back or hide the chat
        if (currentMessageIndex >= ds_list_size(chatEntries)) {
            //currentMessageIndex = 0; // Loop back to the first message
            isVisible = false; // Or hide the chat box instead of looping
        
    }
}
