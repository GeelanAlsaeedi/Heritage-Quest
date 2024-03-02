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
	if (obj_chatController.trivia_choice == 1) {
    // Player made the correct choice
    sheSaid="Impressive! You do know our history. But there's more to the cave than just Knowledge.";
} else {
    // Player made an incorrect choice
    sheSaid="Not quite right, but don't lose heart. Give it another try.";
}
	//var choices = ["A) Prophet Muhammad and Abu Bakr ", "B) Local merchants","C) Desert travelers"];
	AddChatEntry("Laila", Girl_Player, " I know it is......", choices);
	AddChatEntry("Aisha", Aisha_Front, sheSaid);
	AddChatEntry("Aisha", Aisha_Front, "Do you know about our tradition of visiting this cave? What do the \ncitizens of Makkah often seek there?");

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
