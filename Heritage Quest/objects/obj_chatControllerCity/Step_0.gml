// Step Event of obj_chatController
if(room_get_name(room)=="MiddleCity"){
	AddChatEntryCity("Amal", Amal, "Ah, a new challenger! Do you wish to test your knowledge about our \nrich culture and history?");
	AddChatEntryCity("Laila", Girl_Player, "Actually, I'm looking for a specific pigeon belonging to Abu Yasser. It has\n a unique white feather in the shape of a crescent.");
	AddChatEntryCity("Amal", Amal, "Oh, I know the very pigeon you speak of. But let's make this interesting.\n Answer a few trivia questions about Makkah correctly, and I'll help you\n find the pigeon. Are you ready?");
	AddChatEntryCity("Laila", Girl_Player, "Yes, I'm ready.");
	AddChatEntryCity("Amal", Amal, "Question 1 Makkah is known for a variety of traditional dishes. Can you name \nthe popular dish made with flatbread, meat, and aromatic spices?");
	// Example of adding a chat entry with choices
	var choices = [
    ["1) Mandi", 1],
    ["2) Kabsa", 0],
	["3) Saleeg", 0]
	];
	AddChatEntryCity("Laila", Girl_Player, "Hmm, let me think...", choices);
	AddChatEntryCity("Amal", Amal, "Absolutely correct! Well done, you really know your stuff.");
	AddChatEntryCity("Amal", Amal, "Next Question, The people of Makkah have a distinct way of speaking.\n What is one characteristic of the Makkah accent?");
	// Example of adding a chat entry with choices
	var choices = [
    ["1) Soft pronunciation of 'k'", 1],
    ["2) Prolongation of vowels ", 0],
	["3) Nasal tone", 0]
	];
	AddChatEntryCity("Laila", Girl_Player, "If I remember correctly, it should be...", choices);
	AddChatEntryCity("Amal", Amal, "Not quite right, but don't lose heart. Give it another try.");
	var choices = [
    ["1) Soft pronunciation of 'k'", 1],
    ["2) Prolongation of vowels ", 0],
	["3) Nasal tone", 0]
	];
	AddChatEntryCity("Laila", Girl_Player, "If I remember correctly, it should be...", choices);
	AddChatEntryCity("Amal", Amal, "You got it! It seems you have a deep connection with our culture.");
	AddChatEntryCity("Amal", Amal, "In Makkah, there's a custom of gathering for a particular night-time \nprayer during Ramadan. What is this prayer called?");
	var choices = [
    ["1) Taraweeh", 1],
    ["2) Duhr", 0],
	["3) Asr", 0]
	];
	AddChatEntryCity("Laila", Girl_Player, "I think the answer is...", choices);
	AddChatEntryCity("Amal", Amal, "Impressive! You've got that one spot on.");
	AddChatEntryCity("Amal", Amal, "Last question the traditional clothing in Makkah is both elegant and \nfunctional. What is the common name for the long, white garment \nworn by men?");
	var choices = [
    ["1) Dishdasha", 1],
    ["2) Thobe", 0],
	["3) Shemagh", 0]
	];
	AddChatEntryCity("Laila", Girl_Player, "It must be...", choices);
	AddChatEntryCity("Amal", Amal, "Well done! You've shown great knowledge and respect for our culture.\nAs promised, let me help you with finding Abu Yasser's pigeon.");
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
