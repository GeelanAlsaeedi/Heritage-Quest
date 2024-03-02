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
if(room_get_name(room)=="Thour"){
	AddChatEntry("Abu Yasser", Abu_Yasser, "Ah, a new face seeking the secrets of the past. Welcome to Thour Cave,\nwhere history whispers from every stone.");
	AddChatEntry("Laila", Girl_Player, "I've heard there's much to learn here. What can you tell me about this place?");
	AddChatEntry("Abu Yasser", Abu_Yasser, "This cave holds many tales, but one of my favorites is about a humble\npigeon, a creature that played a crucial role in protecting the Prophet Muhammad\nduring a time of great peril.");
	AddChatEntry("Laila", Girl_Player, "A pigeon? How did it protect the Prophet?");
	AddChatEntry("Abu Yasser", Abu_Yasser, "when the Prophet and his companion were hiding in this very cave,\n a pigeon built its nest at the entrance. Those pursuing them thought the\nuntouched nest meant the cave was empty, thus moving on. ");
	AddChatEntry("Abu Yasser", Abu_Yasser, "Since then, in Makkah, we honor pigeons and spiders, \nnever harming them, as they once protected our Prophet.");
	AddChatEntry("Laila", Girl_Player, "That's an incredible story.");
	AddChatEntry("Laila", Girl_Player, "Now I really want to explore and uncover the secrets of this historic place.");
	AddChatEntry("Abu Yasser", Abu_Yasser, "Can I ask for a favor? I am an old man and need help with this");
	AddChatEntry("Laila", Girl_Player, "What kind of favor?");
	AddChatEntry("Abu Yasser", Abu_Yasser, "My pigeon, the most special of them all, has not returned to me. Can you find her for me?");
	AddChatEntry("Laila", Girl_Player, "Certainly! How will I recognize her?");
	AddChatEntry("Abu Yasser", Abu_Yasser, "She has a unique marking, a white feather in the shape of a crescent\n among her grey feathers. Bring her back, \nand I'll grant you access to the cave");
	
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
