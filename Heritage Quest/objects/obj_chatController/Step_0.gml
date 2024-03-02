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
		if (obj_chatController.trivia_choice == 1) {
    // Player made the correct choice
    sheSaid="Impressive! You do know our history. But there's more to the cave than just Knowledge.";
} else {
    // Player made an incorrect choice
    sheSaid="Not quite right, but don't lose heart. Give it another try.";
}
	AddChatEntry("Aisha", Aisha_Front, sheSaid);
	AddChatEntry("Aisha", Aisha_Front, "Do you know about our tradition of visiting this cave? What do the \ncitizens of Makkah often seek there?");
	var choices = [
    ["1) Treasure", 0],
    ["2) Solitude and reflection", 1],
	["3) Rare herbs", 0]
	];
	AddChatEntry("Laila", Girl_Player, "well ......", choices);
		if (obj_chatController.trivia_choice == 1) {
    // Player made the correct choice
    sheSaid="Indeed! It's a place of contemplation and connection with our past. \nNow, why not visit there yourself and learn the the story of the Thour Cave.";
	} else {
    // Player made an incorrect choice
    sheSaid="Not quite right, but don't lose heart. Give it another try.";
	}
	AddChatEntry("Aisha", Aisha_Front, sheSaid);
	AddChatEntry("Aisha", Aisha_Front, "The path to the cave is a journey of discovery, not just a physical trek.\n Here, take these.");
	AddChatEntry("Aisha", Aisha_Front, "These pieces form a map to the mountain. But like all journeys worth taking,\nyou must put in the effort to find your way. Solve this, \nand the path shall reveal itself.");
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
