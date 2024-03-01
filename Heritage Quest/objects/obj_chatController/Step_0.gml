// Step Event of obj_chatController
if(room_get_name(room)=="outerArea"){
	AddChatEntry("Aisha", Aisha_Front, "Greetings, traveler! I see you're interested in the mysteries of our ancient cave. \nBut first, let's see how much you already know.");
	AddChatEntry("Aisha", Aisha_Front, "Tell me, who found sanctuary in the Thour Cave during a perilous time?");
	// Example of adding a chat entry with choices
	var choices = [
    ["1) Prophet Muhammad and Abu Bakr", 1],
    ["2) Local merchants", 0],
	["3) Desert travelers", 0]
	];
	//var choices = ["A) Prophet Muhammad and Abu Bakr ", "B) Local merchants","C) Desert travelers"];
	AddChatEntry("Laila", Girl_Player, " I know it is......", choices);
	if (trivia_choice != 1){
		sheSaid= "Not quite right, but don't lose heart. Give it another try.";
		currentMessageIndex--;
	}else {
		sheSaid= "Impressive! You do know our history. But there's more to the cave than just Knowledge. .";
	}
	AddChatEntry("Aisha", Aisha_Front, sheSaid);

}

if ( keyboard_check_pressed(vk_space)) {
    // Only advance if there are messages
    if (ds_list_size(chatEntries) > 0) {
		currentMessageIndex++;
	}
        // If we've gone past the last message, loop back or hide the chat
        if (currentMessageIndex >= ds_list_size(chatEntries)) {
            isVisible = false; // Or hide the chat box instead of looping
    }
}
